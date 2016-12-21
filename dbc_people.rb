module PeoplePowers
  def offer_high_five
    "High five!"
  end
end

module TeacherPowers
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

class People
  include PeoplePowers

  def initialize(options = {})
    @phase = phase
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
  end
end

class Teachers < People
  include TeacherPowers

  def initialize(options={})
    super
    @target_raise = target_raise
  end
end
