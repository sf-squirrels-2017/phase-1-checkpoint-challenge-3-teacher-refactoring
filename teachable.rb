

module teachable

  def offer_high_five
    "High five!"
  end



  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end

  # refactor these three methods with similar call and response:

  # from student
  def set_phase(num) from student
    response = ""
    if num == @phase
      response += "I'm doing phase #{@phase} again because "
      response += "I put my learning first. I'm gonna rock it!"
    else
      response = "Oooh, phase #{num}. I hope I'm ready!"
    end
    @phase = num
    response
  end


  # from teacher
  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end



end
