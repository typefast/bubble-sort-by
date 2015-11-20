def bubble_sort_by(array)
  loop do 
    i = 0
    swapped = false
    while i < array.length - 1
      if yield(array[i], array[i + 1]) < 0  #if the array element to the right of i is smaller
        array[i], array[i + 1] = array[i + 1], array[i] #move the smaller element to the left
        swapped = true
      end
      i += 1
    end
    break if swapped == false
  end
  puts array
end

bubble_sort_by(["hi", "hey", "hello"]) do |left,right|	
	right.length - left.length 
end










