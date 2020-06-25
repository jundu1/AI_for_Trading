# Embedding
## Subsampling of input
To reduce (not completely discard) common words of 'the', 'and', etc. in the input dataset.
With equation P(w) = 1 - sqrt(t/f(w)), we calc the probability that we should drop out the word. t is the threshold we set.
Prep a dictionary of word counts, then apply the equation and returns a probability. Then we generate random numbers between [0,1] for each of the word instance and decide to drop them or not

## Dimensions
![word2vek_arch](\assets\word2vec_architectures.png)
### CBOW (Continuous Bag-Of-Words)

### Skip-gram
* If thinking as an ordinary NN,  
![skip_gram_net_arch](\assets\skip_gram_net_arch.png)
  1. Each word is one input data point (one-hot encoding vector), with dim (vocabulary_size, 1)
  1. Embedding *weight* has dim (vocabulary_size, embed_dim)
  1. Embedding *layer* has dim (embed_dim, 1)
  1. Softmax layer weight has dim (embed_dim, vocabulary_size)
  1. Softmax output layer has dim (1, vocabulary_size)

* In pytorch implementation of Embedding layer
![skip_gram_arch](\assets\skip_gram_arch.png)
  1. Each input node (blue circle) represents one word token, with dim (input_size, 1), where input_size = target_size = batch_size * window_size
  1. Embedding *weight* has dim of (vocabulary_size, embed_dim)
  1. Softmax output layer has dim of (target_size, *vocabulary_size*), where each row correspond to each input node, and each col represents the probability of that word token appears within the window
![skip_gram_dimensions](\assets\skip_gram_dimensions.png)


### Negative Sampling