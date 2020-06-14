# (Stochastic) Gradient Descent

This notebook actually applies the stochastic gradient descent approach.
With # epoches = 100, and each batch contains only 1 data point

## Difference from Gradient Descent vs perceptron
They are actually the same. Only diff is that the Gradient Descent notebook uses sigmoid to produce a prediction of real number within [0, 1], whereas perceptron produces a binary prediction of {0, 1}

Both updates the coefficients with log loss (a.k.a. cross entropy) function 
![eqation](http://www.sciweavers.org/tex2img.php?eq=Error%20%3D%20-%20yln%28%5Chat%7By%7D%29-%281-y%29ln%281-%20%5Chat%7By%7D%29&bc=White&fc=Black&im=jpg&fs=12&ff=arev&edit=)
