 function net2 = neuralNetworkWith2HL()
    
hiddenLayer1Neurons = 64;  
hiddenLayer2Neurons = 32;  
%here I created feedforwardnet with using #of neurons as parameters.
%I used "feedforwardnet" build in function.It basically creates: "Feedforward
%neural network."
net2 = feedforwardnet([hiddenLayer1Neurons, hiddenLayer2Neurons]);

%here, as asked in the question, I used  a nonlinearity function (ReLU) between the layers.
net2.layers{1}.transferFcn = 'poslin';  
net2.layers{2}.transferFcn = 'poslin';  
net2.layers{end}.transferFcn = 'softmax';
net2.performFcn = 'crossentropy';
%here, I used "init" build in function to initialize the weights. When I
%checked the lecture notes, we did not use to small or too big values, such
%as 0.01 and 1.0, so I decided that I can use the default values decided by
%matlab
net2 = init(net2);

        
 end