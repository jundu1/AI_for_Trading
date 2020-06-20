## RNN vs LSTM
#### In RNN
* The inputs are 
    1. input ('event'/new datapoint), dim (batch_size, seq_length, input_size)
    1. hidden ('old memory', customized # layers AND # dimensions), dim (n_layers, batch_size, hidden_dim)
* The outputs are
    1. output (prediction) - In pytorch, default tourch.nn.RNN, the output has dimension of (batch_size, time_step, hidden_dim), but this can be customized to the desired output dimension by adding more layers after the default RNN layer. See customized RNN with torch.nn.RNN + Linear layer <pre>..\deep_learning_v2_pytorch\recurrent-neural-networks\time-series\Simple_RNN.ipynb</pre>
    1. hidden ('new memory'), dim (n_layers, batch_size, hidden_dim)

#### In LSTM
* The inputs are 
    1. input ('event'/new datapoint)
    1. Long Term Memory ('old LTM', customized # layers and # dimensions)
    1. Short Term Memory ('old STM', previous prediction)
* The outputs are
    1. output (new prediction, also serves as new STM)
    1. Long Term Memory
    

## LSTM 
* Overall Structure  
![lstm_all_blocks](./images/lstm_all_blocks.png)
![lstm_all](./images/lstm_all.png)
1. Learn Gate  
![lstm_learn_gate](./images/lstm_learn_gate.png)  
Equation 1  
![lstm_learn_gate_eq](./images/lstm_learn_gate_eq.png)  
1. Forget Gate  
![lstm_forget_gate](./images/lstm_forget_gate.png)  
Equation 2  
![lstm_forget_gate_eq](./images/lstm_forget_gate_eq.png)
1. Remember Gate  
![lstm_remember_gate](./images/lstm_remember_gate.png)  
Equation 3  
![lstm_remember_gate_eq](./images/lstm_remember_gate_eq.png)
1. Use Gate  
![lstm_use_gate](./images/lstm_use_gate.png)
Equation 4  
![lstm_use_gate_eq](./images/lstm_use_gate_eq.png)  
The output of use gate is the output of prediction as well as the new short-term memory STM<sub>t</sub>


