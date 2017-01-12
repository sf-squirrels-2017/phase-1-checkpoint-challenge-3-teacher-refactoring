

module Teacher_stuff

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

  module Offer_high_five
	  def offer_high_five
	    "High five!"
	  end
	end