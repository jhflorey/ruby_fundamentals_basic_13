# Print 1-255
puts (1...256).each {|i| puts i}

# Print odd numbers between 1-255
puts (1...256).each {|i| puts i if i % 2 !=0 }

# Print Sum
# Write a program that would print the numbers from 0 to 255 but this time, it would also print the sum of the numbers that have been printed so far. For example, your output should be something like this:
# New number: 0 Sum: 0
# New number: 1 Sum: 1
# New Number: 2 Sum: 3
# New number: 3 Sum: 6
# New Number: 255 Sum: ___.
# Do NOT use an array to do this exercise.

sum = 0
(0...255).each do |num|
	sum += num
	puts "New number: #{num} sum: #{sum}"
end


# Iterating through an array
# Given an array X, say [1,3,5,7,9,13], write a program that would iterate through each member of the array and print each value on the screen. Being able to loop through each member of the array is extremely important.

arr = [1,3,5,7,9,13]
(0..arr.count-1).each {|i| puts arr[i]}


# Find Max
# Write a program (sets of instructions) that takes any array and prints the maximum value in the array. Your program should also work with a given array that has all negative numbers (e.g. [-3, -5, -7]), 
# or even a mix of positive numbers, negative numbers and zero.

arr = [-2, 3, 0, -5, -9, 10, 15]
puts arr.max


# Shifting the values in the array
# Given any array x, say [1, 5, 10, 7, -2], create an algorithm that shifts each number by one to the front.  For example, when the program is done, an x of [1, 5, 10, 7, -2] should become [5, 10, 7, -2, 0].

arr = [1, 5, 10, 7, -2]
(1..arr.count-1).each {|i| arr[i-1] = arr[i]}
arr[arr.count - 1] = 0
puts arr.to_s

# Get Average
# Write a program that takes an array, and prints the AVERAGE of the values in the array. For example for an array [2, 10, 3], your program should print an average of 5. 
# Again, make sure you come up with a simple base case and write instructions to solve that base case first, then test your instructions for other complicated cases. You can use a count function with this assignment.

arr = [2,10,3,18]
sum = 0.00
average = 0.00
arr.each do |num|
	sum += num
end 
average = sum / arr.length
puts "The average is #{average}"


# Array with Odd Numbers
# Write a program that creates an array 'y' that contains all the odd numbers between 1 to 255. When the program is done, 'y' should have the value of [1, 3, 5, 7, ... 255].

(1...255)
x = (1...255).each {|i| puts i if i % 2 != 0}
y = Array[x]
puts y.to_s


# Greater Than y
# Write a program that takes an array and returns the number of values in that array whose value is greater than a given value y. For example, if array = [1, 3, 5, 7] and y = 3, 
# after your program is run it will print 2 (since there are two values in the array that are greater than 3).

arr = [1,3,5,7]
y = 3
puts arr.select {|i| puts i if i > y}


# Square the values
# Given any array x, say [1, 5, 10, -2], create an algorithm (sets of instructions) that multiplies each value in the array by itself.  When the program is done, t
# he array x should have values that have been squared, say [1, 25, 100, 4].

arr = [1,5,10,-2]
x = arr.map! {|i| i*i}
puts x.to_s


# Eliminate Negative Numbers
# Given any array x, say [1, 5, 10, -2], create an algorithm that replaces any negative number with the value of 0.  When the program is done, x should have no negative values, say [1, 5, 10, 0].

arr = [1,5,10,-2]
i = 0
while i < arr.length
	if arr[i] < 1
		arr[i] = 0
	end
	i = i+1
end
puts arr.to_s


# Max, Min, and Average
# Given any array x, say [1, 5, 10, -2], create an algorithm that prints the maximum number in the array, the minimum value in the array, and the average of the values in the array.

arr = [1,5,10,-2]
sum = 0.00
average = 0.00

arr.each do |num|
	sum += num
end
puts average = sum / arr.length
puts arr.max
puts arr.min


# Number to string
# Write a program that takes an array of numbers and replaces any negative number with the string 'Dojo'.  
# For example, if array x is initially [-1, -3, 2] after your program is done that array should be ['Dojo', 'Dojo', 2].

arr = [-1, -3, 2]
i = 0
while i < arr.length
	if arr[i] < 0
		arr[i] = "Dojo"
	end
	i = i+1
end
puts arr.to_s


#######################Solution ##################################################
################################
#################################
#################################

# Print 1-255
# Write a program (sets of instructions) that would print all the numbers from 1 to 255.
(1..255).each { |n| puts n }

# Print odd numbers between 1-255
# Write a program (sets of instructions) that would print all the odd numbers from 1 to 255.
puts (1..255).select(&:odd?)

# Print Sum
# Write a program that would print the numbers from 0 to 255 but this time, it would also print the sum of the numbers that have been printed so far. For example, your output should be something like this:
# New number: 0 Sum: 0
# New number: 1 Sum: 1
# New Number: 2 Sum: 3
# New number: 3 Sum: 6
# New Number: 255 Sum: ___.
# Do NOT use an array to do this exercise.
sum = 0
(1..255).each { |n| puts "New number: #{n} Sum: #{sum+=n}" }


# Iterating through an array
# Given an array X, say [1,3,5,7,9,13], write a program that would iterate through each member of the array
# and print each value on the screen.  Being able to loop through each member of the array is extremely important.
X = [1,3,5,7,9,13]
puts X
X.each { |n| puts n }

# Find Max
# Write a program (sets of instructions) that takes any array and prints the maximum value in the array.
puts X.max
# Your program should also work with a given array that has all negative numbers (e.g. [-3, -5, -7]),
# or even a mix of positive numbers, negative numbers and zero.
negative_array = [-3, -5, -7]
puts negative_array.max
new_array = [-3, -5, -7, 5, 0, -2, 3]
puts new_array.max

# Get Average
# Write a program that takes an array, and prints the AVERAGE of the values in the array.
# For example for an array [2, 10, 3], your program should print an average of 5.
# Again, make sure you come up with a simple base case and write instructions to solve that base case first,
# then test your instructions for other complicated cases. You can use a count function with this assignment.
average_array = [2, 10, 3]
puts average_array.reduce(:+) / average_array.size
# reduce(:+) will add all the numbers from the array

# Array with Odd Numbers
# Write a program that creates an array 'Y' that contains all the odd numbers between 1 to 255.
# When the program is done, 'y' should have the value of [1, 3, 5, 7, ... 255].
puts y = (1..255).select(&:odd?)

# Greater Than y
# Write a program that takes an array and returns the number of values in that array
# whose value is greater than a given value y.
# For example if array = [1, 3, 5, 7] and y = 3, after your program is run it will print 2
# (since there are two values in the array that are greater than 3).
array = [1, 3, 5, 7]
y = 3
counter = 0
array.each { |array| counter+=1 if array > 3 }
puts counter

# Square the values
# Given any array x, say [1, 5, 10, -2], create an algorithm (sets of instructions)
# that multiplies each value in the array by itself. 
# When the program is done, the array x should have values that have been squared, say [1, 25, 100, 4].
x = [1, 5, 10, -2]
x.each { |x| puts x*x }

# Eliminate Negative Numbers
# Given any array x, say [1, 5, 10, -2], create an algorithm that replaces any negative number with the value of 0. 
# When the program is done, x should have no negative values, say [1, 5, 10, 0].
x = [1, 5, 10, -2]
x.each { |x| if x>0 then puts x else puts 0 end }
# x.each { |x| x>0 ? (puts x) : (puts 0) }

# Max, Min, and Average
# Given any array x, say [1, 5, 10, -2], create an algorithm that prints the maximum number in the array,
# the minimum value in the array, and the average of the values in the array.
x = [1, 5, 10, -2]
max = x[0]
min = x[0]
x.each { |x| max=x if x>max }
x.each { |x| min=x if x<min }
puts "Max = #{max}"
puts "Min = #{min}"
puts "Average = #{x.reduce(:+) / x.size.to_f} "

# Shifting the values in the array
# Given any array x, say [1, 5, 10, 7, -2], create an algorithm that shifts each number by one to the front.
# For example, when the program is done, an x of [1, 5, 10, 7, -2] should become [5, 10, 7, -2, 0].
x = [1, 5, 10, 7, -2]
counter = 0
x.each { x[counter] = x[counter+=1] }
x[x.size-1] = 0
puts x

# Number to string
# Write a program that takes an array of numbers and replaces any negative number with the string 'Dojo'. 
# For example if array x is initially [-1, -3, 2],
# after your program is done that array should be['Dojo', 'Dojo', 2].
x = [-1, -3, 2]
x.each { |x| if x>0 then puts x else puts 'Dojo' end }
# x.each { |x| x>0 ? (puts x) : (puts 'Dojo') }
