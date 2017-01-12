require_relative 'module_set_phase'

class Teacher
  include SetPhase
  attr_reader :age, :salary, :phase
  attr_accessor :name

  def initialize(options={})
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @phase = 3
  end

  def teach_stuff
    if @target_raise == 1000
      response = ""
      response += "Listen, class, this is how everything works, fo SHO! "
      response += "*drops flat-out insane knowledge bomb* "
      response += "... You're welcome. *saunters away*"
      response
    else
      response = ""
      response += "Listen, class, this is how everything works. "
      response += "*drops crazy knowledge bomb* "
      response += "... You're welcome."
      response
    end
  end

  def set_performance_rating(rating)
    case @target_raise
      when 1000
      response = ""
      if rating > 90
        response = "Yay, I'm a great employee!"
        receive_raise(@target_raise)
      else
        response += "Oh, well -- thanks to this actionable, specific, and kind "
        response += "feedback, I'll do better next time."
      end
      response
    when 800
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

   def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

   def receive_raise(raise)
    @salary += raise
  end
end
