# frozen_string_literal: true

stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

# Takes an array of stock prices, arranged by day. The first entry is for day
# 0. Uses nested loops to compare each value to every other value to determine
# the days to buy and sell stock to maximize profit. The stock must be bought
# before it can be sold.
# @param {Array} stock_prices - Array of prices by day
# @return {Hash} - Hash containing the profit, buy day, and sell day
def stock_picker(stock_prices)
  # The initial value of -99 for profit is just a place holder
  stock_trade_info = { profit: -99, buy_day: nil, sell_day: nil }
  # The first loop is arbitrarily used for the buy day
  stock_prices.each_index do |index_buy|
    # Second loop to compare each sell price to the buy price in the outher loop
    stock_prices.each_index do |index_sell|
      next unless (stock_prices[index_sell] - stock_prices[index_buy] >
          stock_trade_info[:profit]) && (index_sell > index_buy)

      stock_trade_info = { profit: stock_prices[index_sell] - stock_prices[index_buy],
                           buy_day: index_buy,
                           sell_day: index_sell }
    end
  end
  stock_trade_info
end

puts "Stock prices: #{stock_prices}"
stock_trade_info =  stock_picker(stock_prices)
puts "Profit: #{stock_trade_info[:profit]}"
puts "Buy day: #{stock_trade_info[:buy_day]}"
puts "Sell day: #{stock_trade_info[:sell_day]}"
# Output formatted like the example, for completeness
p [stock_trade_info[:buy_day], stock_trade_info[:sell_day]]
