class Person
  attr_reader :age, :phase
  attr_accessor :name

  def initialize(options = {})
      @phase = 1
      @age = options.fetch(:age, 0)
      @name = options.fetch(:name, "")
  end
  def offer_high_five
    "High five!"
  end

end
