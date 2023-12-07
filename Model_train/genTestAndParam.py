import json
from sklearn.model_selection import train_test_split
import pandas as pd
import numpy as np
import tensorflow as tf
from sklearn.preprocessing import StandardScaler

filePath = "./../NN_project/NN_project.sim/"
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


def param_generator():
  f = open("param.json", "r")
  param = json.loads(f.read())
  
  for layerNo in range(len(param["size"])):
    for neuronNo in range(param["numNeuron"][layerNo]):
      f = open(f"{filePath}config/w_{layerNo}_{neuronNo}.cfg", "w")
      for value in param["weight"][layerNo][neuronNo]:
        f.write(f"{bin(floatTofixed(value,32,16))[2:]}\n")
      f.close()
      
      f = open(f"{filePath}config/b_{layerNo}_{neuronNo}.cfg", "w")
      value = param["bias"][layerNo][neuronNo]
      f.write(f"{bin(floatTofixed(value,32,16))[2:]}\n")
      f.close()
  pass

param_generator()

def genTestCase():
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

  scaler = StandardScaler()
  X_train = scaler.fit_transform(X_train)
  X_test = scaler.transform(X_test)

  for i in range(10000):
    testcase = X_test[i]
    f = open(f"{filePath}testfile/test_{str(i).zfill(4)}", "w")
    for value in testcase:
      f.write(f"{bin(floatTofixed(value,32,16))[2:]}\n")
    expected = Y_test[i]
    f.write(str(expected))
    f.close()
  pass

#genTestCase()
