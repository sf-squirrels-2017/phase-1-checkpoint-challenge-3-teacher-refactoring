class People
	attr_reader :age, :salary, :phase
	attr_accessor :name
	def initialize(options={})
		@age = options.fetch(:age, 0)
		@name = options.fetch(:name, "")
		@phase = 3
	end

	def offer_high_five
		"High five!"
	end

  	def set_phase(num)
    	@phase = num
    	"Cool, I've always wanted to teach phase #{num}!"
  	end

  	def salary=(new_salary)
    	puts "This better be good!"
    	@salary = new_salary
  	end

  	def receive_raise(raise)
    @salary += raise
  	end
end

# module Learners
# end

