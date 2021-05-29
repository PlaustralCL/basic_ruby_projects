stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(stock_prices)
  profit = 0
  stock_prices.each_index do |index_i|
    stock_prices.each_index do |index_j|
      if stock_prices[index_j] - stock_prices[index_i] > profit
        profit = stock_prices[index_j] - stock_prices[index_i]
      end
    end
    
  end
  profit
end

puts "Stock prices: #{stock_prices}"
p stock_picker(stock_prices)
p stock_prices.sort
