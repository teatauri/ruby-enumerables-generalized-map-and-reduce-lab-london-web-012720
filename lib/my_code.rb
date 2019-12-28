def map(array)
  new_array = []
  array.each do |i|
    new_array << yield(i)
  end
  new_array
end

def reduce(array, starting_point = nil)
  if starting_point
    num = starting_point
    i = 0
  else 
    num = array[0]
    i = 1
  end
  while i < array.length
    num = yield(num, i)
  i += 1 
  end
  num
end


