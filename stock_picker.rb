stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(stock_prices)
  profit = 0
  buy_day = nil
  sell_day = nil
  stock_prices.each_index do |index_buy|
    stock_prices.each_index do |index_sell|
      if (stock_prices[index_sell] - stock_prices[index_buy] > profit) && (index_sell > index_buy)
        profit = stock_prices[index_sell] - stock_prices[index_buy]
        sell_day = index_sell
        buy_day = index_buy
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
