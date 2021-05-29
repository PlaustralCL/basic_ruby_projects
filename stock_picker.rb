stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(stock_prices)
  profit = 0
  buy_day = nil
  sell_day = nil
  stock_prices.each_index do |index_i|
    stock_prices.each_index do |index_j|
      if (stock_prices[index_j] - stock_prices[index_i] > profit) && (index_j > index_i)
        profit = stock_prices[index_j] - stock_prices[index_i]
        sell_day = index_j
        buy_day = index_i
      end
    end
    
  end
  stock_trade_info = {profit: profit, buy_day: buy_day, sell_day: sell_day}
end

puts "Stock prices: #{stock_prices}"
stock_trade_info =  stock_picker(stock_prices)
puts "Profit: #{stock_trade_info[:profit]}"
puts "Buy day: #{stock_trade_info[:buy_day]}"
puts "Sell day: #{stock_trade_info[:sell_day]}"
