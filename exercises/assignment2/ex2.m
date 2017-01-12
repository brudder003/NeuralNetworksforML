clear;
close all;
#all the instructions are in readme.txt, line numbers (ln) refer to to that file

#ln 26
load data.mat

#can view fieldnames
#fieldnames(data)

#returns :
#  [1,1] = testData
#  [2,1] = trainData
#  [3,1] = validData
#  [4,1] = vocab

#ln 37
#To see the list of words in the vocabulary, type -
#data.vocab

#ln 45
#The file load_data.m provides code separated into inputs and targets
# and the training set needs to be split into mini-batches.
[train_x, train_t, valid_x, valid_t, test_x, test_t, vocab] = load_data(100);

#ln 55
#train.m implements the function that trains a neural net language model.
model = train(10);

#question 5
#model A: 
modelA = train(5);
#model B: 
modelB = train(5);
#model C: 
modelC = train(10);
#model D: 
modeD = train(1);

display_nearest_words('could', modelC, 10)

display_nearest_words('percent', modelC, 10)

word_distance('he','she',modelC)



















