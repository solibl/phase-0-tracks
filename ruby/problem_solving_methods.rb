# Release 0
arr = [42, 89, 23, 1]
def search_array(arr, number)
  arr = [42, 89, 23, 1]
  if arr.include?(number) == true
    counter = 0
    arr.each do |value|
      if value != number
        counter += 1
      else
        break
      end
    end
    results = counter
  else
    results = nil
  end 
end

p search_array(arr, 23)

# Release 1
def fib_gen(number)
fib = [0]
(number).times do |sequence_value|
  if sequence_value == 0
    fib[sequence_value] = 0
  elsif sequence_value == 1
    fib[sequence_value] = 1
  else
    fib[sequence_value] = fib[sequence_value-1] + fib[sequence_value-2]
  end
end
result = fib
end

p fib_gen(100).values_at(99)

# Release 2

# Pseudocode
# Get array with integers
# Compare index value with index+1 value
# If greater, then swap
# Repeat on array until nothing is swapped

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      p i
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
        p array
      end
    end

    break if not swapped
  end

  array
end

p bubble_sort([5, 2, 7, 9, 4])