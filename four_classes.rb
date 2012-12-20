#Author: Kelton

class Person
	
	#@ means an instance variable
	#@@ means class variable
	#http://stackoverflow.com/questions/5890118/what-does-variable-mean-in-ruby
	#http://net.tutsplus.com/tutorials/ruby/ruby-for-newbies-working-with-classes/
	
	
	
	
	attr_accessor :lastName
	
	@@numOfPeople = 0
	

	
	def initialize(firstName, lastName, age = 0)
		@firstName = firstName
		@lastName = lastName
		@age = age
		@@numOfPeople += 1
	end
	
	def firstName=firstName
	  @firstName = firstName
	end
	
	def firstName
		@firstName
	end	
	
	def self.numberOfPeople
		@@numOfPeople
	end
	
	def age
		@age
	end
	
	private  #you can use private, public or proctected
	def get_age_in_ten_years
		@age + 10
	end
	
	#This is kinda weird, but whatever (you have to switch back to public)
	
	public
	def get_age_in_twenty_years
		get_age_in_ten_years + 10
	end	
	
	
	
end

p1 = Person.new("Kelton", "Person", 25)
puts p1.firstName
puts p1.lastName
p1.firstName = "John"
p1.lastName = "Smith"
puts p1.age
puts p1.firstName
puts p1.lastName
puts p1.get_age_in_twenty_years
p2 = Person.new("Ryan", "Cook", 28)
puts Person.numberOfPeople

#p1.age = 24, this should throw an exception there is no setter