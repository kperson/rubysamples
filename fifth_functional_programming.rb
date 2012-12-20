=begin
Functional programming
	1. functions are first class 
	2. method class have no side effects
	3. onece an object is declared you don't re-assign it
Functional with functional features = Scala, Ruby, Clojure, JavaScript, Haskhell, C#
	
	1. First Class
	someJSFunction = function(someParameter) {
	  //DO_SOMETHING
	};
	
	function callMyMethod(methodToCall, parameter){
		methodToCall.call(null, parameter)
		//in node.js you can write methodToCall(parameter)
	}
	
	callMyMethod(someJSFunction, "Hello World")
	
	I was able to pass someJsFunction (a function) like a first class citizen (e.g. string, ints, objects etc.)
	
	
	2. Methods have no side effects
	var fruits = ["Banana", "Orange", "Apple", "Mango"];
	fruits.sort();
	Not functional, fruits has been modified
	Functioal implies that the program would function the same if the a method call is replaced by its results
	fruits.sort() would be functional if the origin array rename the same and the sort function returned a new result instead	
	
	3. Once an object is declared you don'y re-assign it
	NOT FUNCTIONAL
	var fruits = ["Banana", "Orange", "Apple", "Mango"];
	fruits = ["Grapefruit", "Watermelon"];
	
	FUNCTIONAL
	var fruits = ["Banana", "Orange", "Apple", "Mango"];
	newFruits = ["Grapefruit", "Watermelon"];
	
	http://www.robertsosinski.com/2008/12/21/understanding-ruby-blocks-procs-and-lambdas/
=end

array = [1, 2, 3, 4]

#puts array
#puts new_array

#equivalent to scala map or yield function
new_array = array.collect do |n|
	n ** 2
end

class Array
	def iterate
		my_list = []
		self.each_with_index do |n, i|
			my_list.push(yield(n))
		end
		my_list
	end
	
	def iterate_2(&code)
		my_list = []
		self.each_with_index do |n, i|
			my_list.push(code.call(n))
		end
		my_list
	end
	
	def iterate_3(code)
		my_list = []
		self.each_with_index do |n, i|
			my_list.push(code.call(n))
		end
		my_list
	end	
	
end


results = array.iterate_2 do |num|  
	num ** 2
end	

results_2 = array.iterate_2 do |num|  
	num ** 2
end	

results_3 = array.iterate_3(Proc.new do |n|
	n ** 2
end)


results_4 = array.iterate{ |n| n ** 2 }

puts results
puts ""
puts results_2 
puts ""
puts results_3
puts ""
puts results_4
puts ""

#Post likely you will use the first and forth versions

#Other Samples

my_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

#find all numbers that are greater than 4, then square them, and reverse the list
filtered_and_squared_and_reversed = my_list.select { |n| n > 4 }.collect{ |x| x ** 2 }.reverse	
	
=begin	
equivalent PHP, this is functional, but looks like crap
$new_list = array();
foreach($my_list as $n){
	if($n > 4){
		$new_list[] = $n;
	}
}
$squared_list = array();
foreach($new_list as $x){
	$squared_list[] = $x^2;
}
$filterd_and_squared_and_reversed = array_reverse($squared_list)	
=end	

#PHP is about times as much code and much less easy to understand

# A little bit cleaner version in ruby, maybe
filtered_and_squared_and_reversed_clean = 
	my_list.select { |n| 
		n > 4 
	}
	.collect{ |x| 
		x ** 2 
	}
	.reverse

puts filtered_and_squared_and_reversed
puts ""
puts my_list


#Unrelated, deploying rails http://rubyonrails.org/deploy