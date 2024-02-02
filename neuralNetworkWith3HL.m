function net3 = neuralNetworkWith3HL()
    
hiddenLayer1Neurons = 64;  
hiddenLayer2Neurons = 32;
hiddenLayer3Neurons = 16; 
%here I created feedforwardnet with using #of neurons as parameters.
%I used "feedforwardnet" build in function.It basically creates: "Feedforward
%neural network."
net3 = feedforwardnet([hiddenLayer1Neurons, hiddenLayer2Neurons,hiddenLayer3Neurons]);

%here, as asked in the question, I used  a nonlinearity function (ReLU) between the layers.
net3.layers{1}.transferFcn = 'poslin';  
net3.layers{2}.transferFcn = 'poslin';
net3.layers{3}.transferFcn = 'poslin'; 
net3.layers{end}.transferFcn = 'softmax';
net3.performFcn = 'crossentropy';
%here, I used "init" build in function to initialize the weights. When I
%checked the lecture notes, we did not use to small or too big values, such
%as 0.01 and 1.0, so I decided that I can use the default values decided by
%matlab
net3 = init(net3);

        
 end