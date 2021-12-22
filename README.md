# Final Project: ECE-GY 9163
## Adil Ahmed 
### aa8436

This readme runs through how to run the evaluation script (aa8436-eval.py).

Some important things to note:

1. The models were saved using the default model.save() method in TensorFlow. Therefore, they were not saved as h5 files, but rather as directories. 
2. The test image is assumed to be in an image format (png) which is then converted to a numpy array. In addition, the encoding is also converted to float32 as the test image I used was encoded using utf-8.  
3. This repository consists of both, my repaired models and the BadNets that were provided as h5 files. This was done to maintain consistency. As a result, the BadNets are simply the loaded models that were given as h5 files with their respective weights. 
4. A single eval.py script has been used, aa8436_eval.py. Since the aa8436_eval.py script loads both, the BadNet and RepairedNet, it was redundant to create 4 separate eval.py scripts.


### Running the evaluation script
The aa8436_eval.py script is basically the same thing as the eval.py script with a few minor differences. It takes three inputs,

1. Repaired Model Path
2. BadNet Path
3. Test image path (png, jpeg etc.)

For example, if you were to clone this directory in Google Colab, this is how you would run the script:
!python  /content/AA8436-ECE9163-PROJECT/aa8436_eval.py /content/AA8436-ECE9163-PROJECT/MyModels/RepairedNetA1 /content/AA8436-ECE9163-PROJECT/MyModels/BadNetA1 /content/AA8436-ECE9163-PROJECT/testImage.png

Alternatively, if you run it somewhere else and do not clone the directory, you will have to download the directories for the models and also ensure that you have the relevant dependencies already installed (all the libraries that are imported in the aa8436_eval.py script).

aa8436_eval.py 'PATH_TO_REPARED-NET' 'PATH_TO_BAD-NET' 'PATH_TO_TEST_IMAGE'

### Additional Comments
I have also included my notebook which I used to create the repaired models. Alternatively, you can also simply run the notebook to top to bottom and then use the models to predict. A block for the GoodNet is provided at the end of the notebook. 
