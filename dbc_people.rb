module PeoplePowers
  def offer_high_five
    "High five!"
  end
end

module TeacherPowers
  # not sure if I should include the teach_stuff method
  # there are definite similarities but am wondering how far super goes
  # and if I'm able to just add in the changes that I need without affect
  # will return to this if I have time
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

# senior and apprentice teachers have diff rating values
  def set_performance_rating(rating)
    response = ""
    if rating > 80
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end
end

# teachers have @target_raise variable also
class People
  def initialize(options = {})
    @phase = phase
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
  end

  include PeoplePowers

  def offer_high_five
    PeoplePowers.offer_high_five
    # or you can use PeoplePowers::offer_high_five
  end
end


# teachers have singular diff methods
# attend_training_session for ApprenticeTeacher
# lead_training_session for SeniorTeacher
class Teachers < People
  def initialize(options={})
    super
    @phase = phase
    @target_raise = target_raise
  end

  include TeacherPowers

  def set_phase
    TeacherPowers.set_phase
  end

  def salary
    TeacherPowers.salary
  end

  def receive_raise
    TeacherPowers.receive_raise
  end
end
