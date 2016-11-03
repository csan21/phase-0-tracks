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
