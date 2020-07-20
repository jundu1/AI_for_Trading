# AI for Trading

This is the repo for projects done in Udacity nano-degree course **AI for Trading** 

# Project 1: Trading with Momentum
* Implement a trading strategy with Momentum, and test to see if it has the potential to be profitable.
* Supplied with a universe of stocks and time range, and a textual description of how to generate a trading signal based on a momentum indicator.
* Compute the signal for the time range given and apply it to the dataset to produce projected returns.
* Finally, perform a statistical test on the mean of the returns to conclude if there is alpha in the signal.
* For the dataset, we'll be using the end of day from Quotemedia.

# Project 2: Breakout Strategy Project
* Implement the breakout strategy. 
* Find and remove any outliers. 
* Test to see if it has the potential to be profitable using a Histogram and P-Value.
* For the dataset, we'll be using the end of day from Quotemedia.

# Project 3: Smart Beta and Portfolio Optimization
* Build a smart beta portfolio and compare it to a benchmark index.
* To find out how well the smart beta portfolio did, calculate the tracking error against the index.
* Then build a portfolio by using quadratic programming to optimize the weights.
* Rebalance this portfolio and calculate turn over to evaluate the performance. Use this metric to find the optimal rebalancing Frequency.
* For the dataset, we'll be using the end of day from Quotemedia.

# Project 4: Multi-factor Model
* Build a statistical risk model using PCA. 
* Build a portfolio along with 5 alpha factors. 
* Create these factors, then evaluate them using factor-weighted returns, quantile analysis, sharpe ratio, and turnover analysis. 
* At the end of the project, optimize the portfolio using the risk model and factors using multiple optimization formulations. 
* For the dataset, we'll be using the end of day from Quotemedia and sector data from Sharadar.

# Project 5: Trading with Momentum
* Conduct NLP Analysis on 10-k financial statements to generate an alpha factor.
* For the dataset, we'll be using the end of day from Quotemedia and Loughran-McDonald sentiment word lists.

# Project 6: Analyzing Stock Sentiment from Twits
* Build deep learning model to classify the sentiment of messages from StockTwits, a social network for investors and traders. 
* Predict if any particular message is positive or negative. 
* Generate a signal of the public sentiment for various ticker symbols.

# Project 7: Combine Signals for Enhanced Alpha
* Combine signals on a random forest for enhanced alpha.
* Solve the problem of overlapping samples. 
* For the dataset, we'll be using the end of day from Quotemedia and sector data from Sharadar.

# Project 8: Backtesting
* Build a fairly realistic backtester that uses the Barra data. 
* The backtester will perform portfolio optimization that includes transaction costs
* Implement it with computational efficiency in mind, to allow for a reasonably fast backtest. 
* Use performance attribution to identify the major drivers of your portfolio's profit-and-loss (PnL). 
* Modify and customize the backtest as well.

### Suggestion to customize your project
* Try backtesting on different time periods and interpret the final results.
* Try different factors to be their alphas.
* Try different weights for each alpha, based on some metric that tells us how confident we are in that alpha, such as a rolling average of the sharpe ratio for each alpha factor.
* Try different transaction cost models. Read the paper "Crossover from Linear to Square-Root Market Impact”. It has a good overview of the transaction cost models, and it also references other papers that are useful in studying transaction cost models.
Note about testing previous alphas: To test the alphas that you've created using the QuoteMedia data source, we would need a mapping file that identifies which cusip is associated with which barra ID. We currently aren't able to provide this in the classroom.