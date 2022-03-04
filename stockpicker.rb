def stock_picker(stocks)
  dropped_stocks = stocks.drop(1)
  max_price = dropped_stocks.max
  max_price_index = stocks.index(max_price)

  sliced_stocks = stocks.slice(0, max_price_index + 1)
  
  min_price = sliced_stocks.min
  min_prince_index = stocks.index(min_price)

  days = [min_prince_index, max_price_index]
end

stocks = [17,3,6,9,15,8,6,1,10]

p stock_picker(stocks)
# Expected output: [1, 4]