# Construct A TWO SUM METHOD THAT TAKES AN ARRAY OF NUMBERS AND A TARGET SUM AS ARGUMENTS AND RETURNS AN ARRAY OF TWO INDICES OF THE NUMBERS IN THE ARRAY THAT ADD UP TO THE TARGET SUM. IF NO TWO NUMBERS ADD UP TO THE TARGET SUM, THE METHOD SHOULD RETURN NIL.

def two_sum(arr, target)
target_indices_arr = []
arr.each_with_index do |num1, idx1|
  break if idx1 == arr.length - 1
idx1 + 1.upto(arr.length - 1) do |idx2|
  num2 = arr[idx2]
  if num1 + num2 == target
    target_indices_arr << [idx1, idx2]
    return target_indices_arr
  else
    next
  end
end
end
if target_indices_arr.empty?
  return nil
end
end

p two_sum([1, 2, 3, 4, 5], 9) # => [[3, 4]]
p two_sum([1, 2, 3, 4, 5], 10) # => nil
p two_sum([1, 2, 3, 4, 5], 7) # => [[1, 4]]