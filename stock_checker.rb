
def stock_checker(the_array)
  buy_day = 0
  sell_day = 0
  profit = 0
  the_array.map.with_index do |first_price, first_index|
    the_array.map.with_index do |second_price, second_index|
      if second_index > first_index && (second_price - first_price) > profit
        profit = second_price-first_price
        buy_day = first_index +1
        sell_day = second_index +1
      end

    end

  end
puts "The best day to buy is day #{buy_day} and the best day to sell is day #{sell_day}."
puts "This combination will earn you a profit of £#{profit}."
end
puts "Welcome, please input the numbers you would like to check for example 2 3 4 5"
the_array= gets.chomp
the_array= the_array.split(" ").map {|z| z.to_i}
print "Thanks"
3.times {print "."; sleep 0.5}
3.times { puts "Calculating"; sleep 1}
stock_checker(the_array)
