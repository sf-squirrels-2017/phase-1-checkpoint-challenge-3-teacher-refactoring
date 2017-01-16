require_relative "person.rb"

class Teacher < Person

	attr_reader  :salary, :target_raise

	def initialize(options = {})
    super
		@phase = 3
		@salary = options.fetch(:salary, nil)
		@target_raise = options.fetch(:target_raise, nil)
    @rating_threshold = 80
	end

	def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
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

  def set_performance_rating(rating)
    response = ""
    if rating > @rating_threshold
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end
end