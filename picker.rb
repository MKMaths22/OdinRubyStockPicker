#program will search for buy and sell days exhaustively, always selling after buying and keeping track of 
#the best result so far
def stock_picker(prices)
#prices is the array of stock prices on days 0,1,2..
best_days = [0,1];
#initialises the best days to buy and sell so far
best_profit = prices[1] - prices[0];
#initialises the best profit which is a loss if negative
  for i in (0..prices.length - 2) do
    for j in (i + 1..prices.length - 1) do
      #testing for selling on day j after buying on day i and seeing if 
      #this is better than the best_profit so far
      if ((prices[j] - prices[i]) > best_profit)
      #now we update the best_profit and best_days because we found something better
      best_profit = prices[j] - prices[i];
      best_days = [i,j];
      end
    end

  end
  return best_days;
end