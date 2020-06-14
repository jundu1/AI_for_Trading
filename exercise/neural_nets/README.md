# Logistic Regression

### Sigmoid function
Mapping real numbers to range [0,1] as "probabilities".

### Loss function
The log loss (a.k.a. cross entropy) function (equation 12.7 below) is actually just the log likelihood function from the MLE approach <sup>[[reference](https://www.stat.cmu.edu/~cshalizi/uADA/12/lectures/ch12.pdf)]</sup>  
![likelihood](../images/likelihood.png)

### Fitting the model
* MLE - solve the optimal beta that minimize the log loss function (equivalently, maximize the log likelihood function)
* Gradient Descent - discussed below

# Neural Networks

## Perceptron and (Stochastic) Gradient Descent
The gradient_descent.ipynb notebook actually applies the stochastic gradient descent approach.
With # epoches = 100, and each batch contains only 1 data point

### Difference from Gradient Descent vs perceptron notebooks
They are largely the same because both updates the coefficients with log loss function. Except
* The Gradient Descent notebook uses sigmoid to produce a prediction of real number within [0, 1], whereas perceptron notebook produces a binary prediction of {0, 1}
* Gradient Descent looks at all data points to maximize the likelihood; Perceptron only looks at the data points that were mis-classified

## Continuous Perceptrons to NN
Using the sigmoid function as the activation function, we can always convert the binary perceptron to a continuous perceptron. Then combining perceptrons will lead to a non-linear neural network 

### More nodes in output layer
This means multi-class classification that reused the info from the input and hidden layers.  
![Multi-Class Classification](../images/multi_nodes.png?raw=true "Multi-Class Classification")

### More Layers 
Simple non-linear models to more complex non-linear models  
![More Layers](../images/more_layers.png?raw=true "More Layers")

## Feedforward and Backpropagation
Using the chain rule, we are able to resovle the derivatives of all parameters (weights) in the network  
![backpropagation](../images/backpropagation.png)
* derivatives of the sigmoid function  
![sigmoid_deriv](../images/sigmoid_derivatives.png)
