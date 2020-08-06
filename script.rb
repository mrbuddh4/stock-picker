def stock_picker(prices)
# create an array 0...prices.length representing each day
  ((0...prices.length).to_a)
# create an array of all day pairings
    .repeated_permutation(2)
# create an array of all pairings where first day is earlier than second day
    .select {|start, finish| finish > start}
# find the pair with the greatest difference
    .max_by {|start, finish| prices[finish] - prices[start]}
end

stock_picker([17,3,6,9,15,8,6,1,10])