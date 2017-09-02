class Game

  def initialize(secret_number)
    @secret_number = secret_number
  end

  def guess(number)
    if (@secret_number > number)
      :greater
    elsif (@secret_number < number)
      :lower
    elsif (@secret_number == number)
      :found_secret_number
    end
  end
end

