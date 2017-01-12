class BootcampAcademic
  attr_reader :age, :phase
  attr_accessor :name

DEFAULT = {
  age: 0,
  name: "",
}

  def initialize(input_options={})
    options = DEFAULT.merge(input_options)
    @age = options[:age]
    @name = options[:name]
  end

  def offer_high_five
    "High five!"
  end
end
