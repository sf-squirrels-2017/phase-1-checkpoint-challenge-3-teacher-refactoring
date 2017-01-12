module SetPhase
   def set_phase(num)
    case @phase
      when 3
      @phase = num
      "Cool, I've always wanted to teach phase #{num}!"
      when 1
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
  end
end

