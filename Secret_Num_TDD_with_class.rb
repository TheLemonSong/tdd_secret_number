require 'rspec'

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

# 'describe' is a method, that is passed a 'Game' class,
# it's not normally written like this but I've just shown it this
# way, in this case, to affirm its just plain old Ruby.
describe(Game) do
  subject { Game.new(5) }
  describe '#guess' do
    for i in 1..10
      if (i < 5)
        puts ("i is less than 5, it is: " + i.to_s)
        context 'when guessing a number that is lower than the secret number ' do
          it 'returns the symbol :lower' do
            expect(subject.guess(val)).to eq(:lower)
          end
        end

      elsif (i == 5)
        puts ("i is equal to 5, it is: " + i.to_s)
        context 'when guessing a number that is the SAME as the secret number ' do
          it 'returns the symbol :found_secret_number' do
            expect(subject.guess(val)).to eq(:found_secret_number)
          end
        end

      elsif (i > 5)
        puts ("i is greater than 5, it is: " + i.to_s)
        context 'when guessing a number that is higher than the secret number ' do
          it 'returns the symbol :greater' do
            expect(subject.guess(val)).to eq(:greater)
            end
         end
      end
    end
  end
end
