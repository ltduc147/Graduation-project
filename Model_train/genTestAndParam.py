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
  f = open("param-88-91.json", "r")
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

#param_generator()

def genTestCase():
  selected_feature = ['sttl', 'dttl', 'dloss',  'sinpkt', 'dinpkt', 'synack', 'ackdat', 'smean', 'dmean', 'trans_depth', 'ct_dst_sport_ltm', 'ct_dst_src_ltm', 'ct_flw_http_mthd']
  testing_set = './Dataset/UNSW_NB15_testing-set.csv'
  test = pd.read_csv(testing_set)
  X_test = test[selected_feature].values
  Y_test = test['label'].values


  for i in range(10000):
    testcase = X_test[i]
    f = open(f"{filePath}testfile/test_{str(i).zfill(4)}", "w")
    for value in testcase:
      f.write(f"{bin(floatTofixed(value,32,16))[2:]}\n")
    expected = Y_test[i]
    f.write(str(expected))
    f.close()
  pass

genTestCase()
