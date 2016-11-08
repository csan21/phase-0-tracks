# REPL

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # separate string of items into individual items 
  # set empty hash
  # iterate through the array of items and those will become the keys of the empty hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def list_generator(string_of_items)
  grocery_list = {}
  grocery_array = string_of_items.split(' ')
  grocery_array.each do |item|
  grocery_list[item] = 0
  end
  grocery_list
end

initial_list = list_generator("apple orange pear")

# Method to add an item to a list
# input: item name and optional quantity
# steps: method will take two arguments and will be added to hash
# output: return grocery list with updated item and quantity

def grocery_add(list, item, quantity)
 list[item] = quantity
 list
end

grocery_add(initial_list, "pizza", 20)
grocery_add(initial_list, "steak", 30)

# Method to remove an item from the list
# input: item to be removed
# steps: delete the key from the hash
# output: updated grocery list with updated item list

def grocery_delete(list, item)
 list.delete(item)
 list
end

grocery_delete(initial_list, "apple")
grocery_delete(initial_list, "pear")

# Method to update the quantity of an item
# input: specify item in the hash to be updated
# steps: reassign quantity to the item
# output: updated grocery list with updated quantities

def grocery_update(list, item, quantity)
 if list.include?(item)
 	list[item] = quantity
 else
 	puts "Food does not exist!"
 end
 list
end

grocery_update(initial_list, "pizza", 1000)
# grocery_update(initial_list, "waffles", 7)

# Method to print a list and make it look pretty
# input: grocery list
# steps: print grocery list to console
# output: a nice looking list

def print_list(list)
 list.each do |item, quantity|
 	puts "#{item}: #{quantity}"
 end
end

print_list(initial_list)
