#Author: Kelton

def hello
	"Hello"
end

def hello1(name)
 "Hello #{name}"
end

def my_list(arg1=3, arg2=4)
	puts [arg1, arg2]
end

puts hello
puts ""
puts hello1("Kelton")
puts ""
puts my_list
puts ""
puts my_list(5, 6)
puts ""
puts my_list(5, arg2 = 7)