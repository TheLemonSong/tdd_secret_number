class Game

  def initialize(secret_number)
    @secret_number = secret_number
  end


  def guess(number)


    if (number < @secret_number)
      :lower
    elsif
      (number > @secret_number)
      puts ("number is: " + number.to_s)

      :greater
    elsif (number == @secret_number)
      :found_secret_number
    end
  end
end
