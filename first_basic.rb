#Numbers
puts 3 + 2
puts 3 + 1.3
puts 3 * 5
puts 3 ** 2 #exponents 3 to the second power
puts 3 / 2
puts 3 / 2.0
puts 3.0 / 2

#Strings
"Kelton" + " " + "Person"
first_name = "Kelton"
last_name = "Person"
"#{first_name} #{last_name}"
puts "Kelton"
first_name.length
puts "".empty?
blank_string = ""
nil_string = nil
puts blank_string.nil?
nil_string.nil?

#Arrays
list = ["Cat", "Bird", "Dog"]
list[0]
list[1]
new_list = list.sort
puts new_list
puts list

list.sort!
puts list

list.delete("Cat")
list.delete_at(0)
#More at http://www.ruby-doc.org/core-1.9.3/Array.html#method-i-delete

#Hashes
my_hash = { "firstName" => "Kelton", "lastName" => "Person", "age" => 25 }
my_hash["firstName"]
my_hash.delete("age") # don't worry about :age still present in hash
my_hash["middleName"] = "Moreland"
puts my_hash

#Bang vs. Not Bang
#Bang means the method is modifing the parameter sort => returns an new array, sort! => sorts the input array


#Symbols
#Are a way to store frequently used strings or references
#If you are using "firstName" in 1000 places you can replace it with :firstName => and it will only take up 1/1000 of the #memory need
my_hash = { :firstName => "Kelton", :lastName => "Person", :age => 25 }
my_hash[:firstName]
my_hash.delete(:age)
my_hash[:middleName]
puts :firstName.to_s

#IF else
num = 6
if num == 3
 puts "Num = 3, yea!"
elsif num == 5
 puts "Num = 5, yea!"
else
  puts "I only like 3 and 5, all other numbers are terrible"
end




#Tips
#List all class methods by calling Classname.instance_methods