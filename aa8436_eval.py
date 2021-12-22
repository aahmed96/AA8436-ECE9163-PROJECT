import keras
import sys
import h5py
import numpy as np
import tensorflow as tf
from PIL import Image

repairedNetPath = str(sys.argv[1])
badNetPath = str(sys.argv[2])
testImagePath = str(sys.argv[3])

def imagePreProcess(imagePath):
  image = Image.open(imagePath)
  imageArray = np.asarray(image)
  imageArray = np.float32(imageArray)
  imageTensor = tf.convert_to_tensor(imageArray)
  imageTensor = tf.expand_dims(imageTensor, 0)
  imageTensor = imageTensor/255

  return imageTensor

def main():
  testImage = imagePreProcess(testImagePath)
  repairedNet = keras.models.load_model(repairedNetPath)
  badNet = keras.models.load_model(badNetPath)

  predictionRNet = np.argmax(repairedNet.predict(testImage))
  predictionBNet = np.argmax(badNet.predict(testImage))

  if predictionRNet == predictionBNet:
    prediction = predictionRNet
    
  else:
    prediction = 1283

  print('Prediction: ',prediction)
    
  
if __name__ == '__main__':
    main()