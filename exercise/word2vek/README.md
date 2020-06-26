# Word2Vek and Embedding
## Subsampling of input
To reduce (not completely discard) common words of 'the', 'and', etc. in the input dataset.
With equation P(w) = 1 - sqrt(t/f(w)), we calc the probability that we should drop out the word. t is the threshold we set.
Prep a dictionary of word counts, then apply the equation and returns a probability. Then we generate random numbers between [0,1] for each of the word instance and decide to drop them or not

### Negative Sampling
Idea is to use a weighted, customized loss function only updating the weights for all the *correct* targets (pushing prob to 1), and only a small subset of the incorrect predictions (pushing the prob to 0)  
This requires 2 embedding layers

## Dimensions
![word2vek_arch](\assets\word2vec_architectures.png)
### CBOW (Continuous Bag-Of-Words)
(skipped)
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
  1. Note all words were embeded in one go because each word can be treated independently in their own dimension. In RNN we will have to treat each single word seperately
![skip_gram_dimensions](\assets\skip_gram_dimensions.png)

## Embedding in RNN
Each Original input data point is one sentence (list of words). As we are applying RNN, we dig into each sentence, and then each word will be treated as one node feeding into --> Embedding --> RNN or LSTM consecutively, the final prediction of sentiment (after a whole sentence nodes)is used to compare with the ground truth target
![embedding_lstm](..\deep_learning_v2_pytorch\sentiment-rnn\assets\network_diagram.png)

### Steps
1. Each batch contains *#batch_size* data points
1. Each input data point is one sentence i.e. list of words
1. Prepare vocab dictionary, tokenize the input, and encode the target
1. Remove extremely long/short sentences
1. Padding/Truncating: left-fill short ones with 0s (left-pad), or cut the long ones (truncating) from right to ensure the same input shape (batch_size, sequence_len) where sequence_len = length of the sentence
1. Shuffle the data with data loader to avoid training on order of the data
