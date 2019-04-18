require 'player'

describe Player do
  describe '#name' do
    it 'returns the players name' do
      x = subject("dave")
      expect(x.name).to eq "dave"
    end
  end
end
