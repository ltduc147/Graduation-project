import pandas as pd
import numpy as np
import tensorflow as tf
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import accuracy_score

np.random.seed(43)

# Set random seed for TensorFlow
tf.random.set_seed(43)

dataset_path = "./Dataset/UNSW_NB15_training-set.csv"
df = pd.read_csv(dataset_path)

to_drop = ['sloss', 'dloss', 'dpkts', 'dwin', 'ct_srv_dst', 'ct_src_dport_ltm', 'ct_dst_src_ltm', 'attack_cat', 'id', 'proto', 'service', 'state']

df.drop(columns=to_drop, inplace=True)

X = df[df.columns.drop('label')].values
Y = df['label'].values

X_train, X_test, Y_train, Y_test = train_test_split(X, Y, test_size=0.2, random_state=42)
print(len(df.columns.drop('label')))

scaler = StandardScaler()
X_train = scaler.fit_transform(X_train)
X_test = scaler.transform(X_test)

def floatTofixed(floatNum, dataWidth, fracBits):
  if (floatNum >= 0):
    return int(floatNum * (2 ** fracBits))
  else:
    floatNum = int((-floatNum) * (2 ** fracBits))
    if floatNum == 0:
      return 0
    else:
      return 2 ** dataWidth - floatNum
  pass

def parameterConfig():
  i = 0
  for layer in model.layers:
      layerNo = i
      weights = layer.get_weights()[0]
      bias   =  layer.get_weights()[1]
      for neuronNo in range(len(weights[0])):
        f = open(f'./config/w_{layerNo}_{neuronNo}.cfg', 'w')
        for index in range(len(weights)):
          value = bin(floatTofixed(weights[index][neuronNo],32,16))[2:]
          f.write(f'{value}\n')
        f.close()

      for neuronNo in range(len(bias)):
        f = open(f'./config/b_{layerNo}_{neuronNo}.cfg', 'w')
        value = bin(floatTofixed(bias[neuronNo],32,16))[2:]
        f.write(f'{value}\n')
        f.close()
      i = i + 1

def training():
    model = tf.keras.Sequential([
        tf.keras.layers.Input(shape=(32,)),
        tf.keras.layers.Dense(4, activation='relu'),
        tf.keras.layers.Dense(4, activation='relu'),
        tf.keras.layers.Dense(2, activation='relu')  # Using ReLU in the output layer
    ])
    
    model.compile(optimizer='adam', loss='mse', metrics=['accuracy'])  # Using mean squared error loss for regression

    model.fit(X_train, Y_train, epochs=10, batch_size=32, validation_split=0.2)
    
    Y_pred = model.predict(X_test)
    accuracy = accuracy_score(Y_test, np.argmax(Y_pred, axis=1))
    print(f"Test Accuracy: {accuracy}")
    
    f = open('test.json', 'w')
    param = {}
    param["size"] = []
    param["numNeuron"] = []
    param["weight"] = []
    param["bias"] = []
    
    for layer in model.layers:
        param["size"].append(layer.input_shape[1])
        param["numNeuron"].append(layer.units)
        
        weights = layer.get_weights()[0]
        biases   =  layer.get_weights()[1]
        
        weight = [[weights[i][j] for i in range(layer.input_shape[1])] for j in range(layer.units) ]
        bias = [biases[i] for i in range(layer.units)]
        
        param["weight"].append(weight)
        param["bias"].append(bias)
        print(f"Layer: {layer.name}")
        print(f"Weights: {layer.get_weights()[0]}")
        print(f"Biases: {layer.get_weights()[1]}")
        print("\n")
    
    print(str(param))
    pass
    with open("param.json", "w") as param_file:
        param_file.write(str(param).replace("'", '"'))

training()
      
def generateTest(X,Y):
  f = open("./testfile/test.txt", 'w')
  for i in range(len(X)):
    value = bin(floatTofixed(X[i],32,16))[2:]
    f.write(f'{value}\n')
  f.write(f'{Y}\n')
  f.close()
  pass

#generateTest(X_test[1])