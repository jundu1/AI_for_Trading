# Embedding
### Subsampling of input
To reduce (not completely discard) common words of 'the', 'and', etc. in the input dataset.
With equation P(w) = 1 - sqrt(t/f(w)), we calc the probability that we should drop out the word. t is the threshold we set.
Prep a dictionary of word counts, then apply the equation and returns a probability. Then we generate random numbers between [0,1] for each of the word instance and decide to drop them or not

### Negative Sampling