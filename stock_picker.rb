stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(stock_prices)
  # The initial value of -99 for profit is just a place holder
  stock_trade_info = {profit: -99, buy_day: nil, sell_day: nil}
  stock_prices.each_index do |index_buy|
    stock_prices.each_index do |index_sell|
      if (stock_prices[index_sell] - stock_prices[index_buy] > stock_trade_info[:profit]) && (index_sell > index_buy)
        stock_trade_info[:profit] = stock_prices[index_sell] - stock_prices[index_buy]
        stock_trade_info[:sell_day] = index_sell
        stock_trade_info[:buy_day] = index_buy
      end
    end
  end
  stock_trade_info
end

puts "Stock prices: #{stock_prices}"
stock_trade_info =  stock_picker(stock_prices)
puts "Profit: #{stock_trade_info[:profit]}"
puts "Buy day: #{stock_trade_info[:buy_day]}"
puts "Sell day: #{stock_trade_info[:sell_day]}"
