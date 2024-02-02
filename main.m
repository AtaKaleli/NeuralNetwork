clear all; clc;

%sunrise89 invisible, copied sunrise90 , rename it as sunrise89, and pasted
%back into my dataset. I deleted problematic image names sunrise89

% label_images function convert the images to grayscale and form the class 
%labels

% It takes an input as dataset folder name, and gives output as images and
%their labels. I store the images and their labes as a cell, so I had 908x1
%cell for both images and labels after calling "label_images" function.

% Class label of images are simply the name of an image

folderName = "Dataset";
[images,labels] = imageLoader(folderName);

%extracts features of 908 images using imresize and reshape build in
%functions
features = featureExtractor(images);

%Form the training, validation, and testing sets.
[trainingSet,validationSet,testSet,trainingLabels,validationLabels,testLabels] = setFormer(features,labels);

% Design a fully connected feed-forward neural networks with 2 hidden layers.
net2 = neuralNetworkWith2HL();

%) Design a fully connected feed-forward neural networks with 3 hidden layers.
net3 = neuralNetworkWith3HL();



%question number8

%I could not finish the assignment as I have OS final tomorrow, but I want
%to answer the following teoritical question, based on the lecture notes
%and my researches.

% Increasing the number of hidden layers might improve the accuracy or might 
% not, it really depends on the complexity of the problem.
%Also, Increasing the number of hidden layers much more than the sufficient 
% number of layers will cause accuracy in the test set to decrease

% Increasing the number of hidden layers increased the modeling capability.



