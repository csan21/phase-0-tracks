# Release 0

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
searchArray(arr, 13)

# Release 1

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

newarr = fib(6)
p newarr


