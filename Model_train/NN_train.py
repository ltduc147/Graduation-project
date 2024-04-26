import pandas as pd
import numpy as np
import tensorflow as tf
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import accuracy_score


dataset_path = "./Dataset/UNSW_NB15_training-set.csv"
df = pd.read_csv(dataset_path)

selected_feature = ['sttl', 'dttl', 'dloss',  'sinpkt', 'dinpkt', 'synack', 'ackdat', 'smean', 'dmean', 'trans_depth', 'ct_dst_sport_ltm', 'ct_dst_src_ltm', 'ct_flw_http_mthd']
X_feature = df[selected_feature]
Y_feature = df['label']

X_train = X_feature.values
Y_train = Y_feature.values

#scaler = StandardScaler()
#X_train = scaler.fit_transform(X_train)
# X_test = scaler.transform(X_test)

def training():

    model = tf.keras.Sequential([
        tf.keras.layers.Input(shape=(13,)),
        tf.keras.layers.Dense(4, activation='relu'),
        tf.keras.layers.Dense(1, activation='relu')
    ])
    
    model.compile(optimizer='adam', loss='binary_crossentropy', metrics=['accuracy'])  # Using mean squared error loss for regression

    model.fit(X_train, Y_train, epochs=20, batch_size=32, validation_split=0.25)
    
    testing_set = './Dataset/UNSW_NB15_testing-set.csv'
    test = pd.read_csv(testing_set)
    X_test = test[selected_feature].values
    Y_test = test['label'].values
    Y_PRED = model.predict(X_test)
    #accuracy = accuracy_score(Y_test, np.argmax(Y_PRED, axis=1))
    binary_predictions = [1 if prob >= 0.5 else 0 for prob in Y_PRED]
    accuracy = accuracy_score(Y_test, binary_predictions)
    print(f"Test Accuracy: {accuracy}")
    
    f = open('param.json', 'w')
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
        print("\n")
    
    pass
    with open("param.json", "w") as param_file:
        param_file.write(str(param).replace("'", '"'))

training()
      