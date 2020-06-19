input_stock_array = [17,3,6,9,15,8,6,1,10]

def stock_picker(stocks)
  buy_day = 0
  sell_day = 0
  final_profit = 0

  stocks.each_with_index do |buy, index|
    
      while (index < stocks.length)
        if buy < stocks[index]
          profit = stocks[index] - buy
          if profit > final_profit
            final_profit = profit
            buy_day = stocks.index(buy)
            sell_day = index
          end
        end
        index += 1
      end
  end
  puts "For a profits of #{stocks[sell_day]}$ - #{stocks[buy_day]}$ = #{stocks[sell_day] - stocks[buy_day]}$"
  p pair = [buy_day,sell_day]
end

stock_picker(input_stock_array)