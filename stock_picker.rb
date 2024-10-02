def stock_picker(prices)
  return "not enough data" if prices.size <= 1
  
  min_price_day = 0
  buy_day = 0
  sell_day = 1
  max_profit = prices[sell_day] - prices[buy_day]

  prices.each_with_index do |price, day|
    # Check for new min price
    if price < prices[min_price_day]
      min_price_day = day
    end

    # Calculate profit for current day
    profit = price - prices[min_price_day]

    # Update max_profit and buy, sell days if current day profit is better
    if profit > max_profit
      max_profit = profit
      buy_day = min_price_day
      sell_day = day
    end
  end

  [buy_day, sell_day]
end

p stock_picker([17,3,6,9,15,8,6,1,10])
