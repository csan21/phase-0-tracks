# 5.6 worked with Mhar Andal

# ///// Release 0

def searchArray(arr, num)
    count = 0
    arr.each do |x|
        if x == num
            print count 
        end
        count += 1
     end
 end
 
arr = [2, 4, 7, 13, 76, 5, 1, 3]
p searchArray(arr, 13)
# shows 13 at the index 3
p searchArray(arr, 3)
# shows 3 at the index 7


# ///// Release 1

def add(num1, num2)
        final = num1 + num2
        return final
end


def fib(num)
    arr = [0, 1]
    
    index = 0
    while index < num - 2
        arr << add(arr[index], arr[index + 1])
        index += 1
    end
    
    return arr    
end

new_arr = fib(6)
p new_arr
# returns [0, 1, 1, 2, 3, 5]

# check for fib(100)

new_arr2 = fib(100)
p new_arr2.last


# ///// Release 2

# def bubble_sort(arr)
# 	sort = false
# 	until sort

# 	sort = true
# 		(arr.length - 1).times do |i|
# 			if arr[i] > arr[i + 1]
# 				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				
# 				sort = false
# 			end
# 		end
# 	end
# 	print arr
# end

# puts bubble_sort([5, 3, 6, 10, 23])
# puts bubble_sort([13, 23, 68, 98, 6, 7])

def sortArray(arr)
    i = 0
    while i < arr.length
       j = 1
       while j < arr.length - i
           if arr[j-1] > arr[j]
               temp = arr[j-1]  
               arr[j-1] = arr[j]               
               arr[j] = temp                  
           end
           j += 1
        end
        i += 1
    end
    
    return arr
end
 
arr = [8, 13, 2, 1]

sort_arr = sortArray(arr)
p sort_arr
