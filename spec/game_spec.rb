require 'game'

describe Game do

   let(:player_1) { double :player_1 }
   let(:player_2) { double :player_2 }
   subject { described_class.new(player_1, player_2)}

    it 'checks player 1 is equal to the player1 ' do
      expect(subject.player_1).to eq(player_1)
    end

end
