require_relative 'high_fivable.rb'

class Person
	include HighFivable
	attr_reader :age, :phase
  attr_accessor :name

	def initialize(options = {})
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @phase = options.fetch(:phase, nil)
  end

end