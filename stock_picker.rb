def stock_picker(prices)
  return "not enough data" if prices.size <= 1
  
  min_price = prices[0]
  buy_day = 0
  sell_day = 1
  max_profit = prices[sell_day] - prices[buy_day]

  prices.each_with_index do |price, day|
    # Check for new min price
    if price < min_price
      min_price = price
    end

    # Calculate profit for current day
    profit = price - min_price

    # Update max_profit and buy, sell days if current day profit is better
    if profit > max_profit
      max_profit = profit
      buy_day = prices.index(min_price)
      sell_day = day
    end
  end

  [buy_day, sell_day]
end

p stock_picker([17,3,6,9,15,8,6,1,10])
