require 'rspec'
require './secret_number'

# 'describe' is a method, that is passed a 'Game' class,
# it's not normally written like this but is just shown this
# way in this case to affirm its just plain old Ruby.
describe(Game) do

  #let(:num_finder) {Secret_number.new}
  # just say subject to refer to SecretNumber.new
  subject { Game.new(5) }

  #let(:secret_number) { 5 }

  describe '#guess' do
    for i in 1..10
      if (i == 5)
        context 'when guessing a number that is the SAME as the secret number ' do
          it 'returns the symbol :found_secret_number' do
            expect(subject.guess(i)).to eq(:found_secret_number)
          end
        end

      elsif (i < 5)
        context 'when guessing a number that is lower than the secret number ' do
          it 'returns the symbol :lower' do
            expect(subject.guess(i)).to eq(:lower)
          end
        end

      elsif (i > 5)
        context 'when guessing a number that is higher than the secret number ' do
          it 'returns the symbol :greater' do
            expect(subject.guess(i)).to eq(:greater)
            end
         end
      end
    end
  end
end
    # 10.times do
    # context 'when guessing a number that is lower than the secret number' do
    #   it 'returns the symbol :greater' do
    #     expect(subject.guess(17)).to eq(:greater)
    #     #expect(subject.guess(17)).to eq('greater')
    # end
    #   end
    # end
    # context 'when guessing a number that is higher than the secret number' do
    #   it 'returns the symbol :lower' do
    #     expect(subject.guess(28)).to eq(:lower)
    #   end
    # end
