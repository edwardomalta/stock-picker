def stock_picker(array)
  if (array.length <= 0)
    put "It is not posible to work with no data"
  end
  all_results = []
  for i in 0...array.length
    all_results += compare_index(i, array)
  end

  ordered_results = all_results.sort { |a, b| a[:result] <=> b[:result] } 
  best_result = ordered_results.pop
  p best_result[:pair]
  return best_result[:pair]
end

def compare_index(index, array)
  results = []
  x = index

  array.each_with_index do |element, i|
    if i > x and i < array.length 
      result = { pair: [x, i], result: element - array[x]}
      results.push( result )
    end
  end
  return results
end

stock_picker([199, 2, 3, 100])
stock_picker([17,3,6,9,15,8,6,1,10])