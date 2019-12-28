def map(array)
  new_array = []
  array.each do |i|
    new_array << yield(i)
  end
  new_array
end

def reduce(array, starting_point = nil)
  if starting_point
    n = starting_point
    i = 0
  else 
    n = array[0]
    i = 1
  end
  while i < array.length
    n = yield(n, array[i])
  i += 1 
  end
  n
end

=begin

