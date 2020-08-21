require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
   subject(:finished_game) { described_class.new(player_lost, player_2) }
   let(:player_1) { double :player_1, hit_points: 100 }
   let(:player_2) { double :player_2, hit_points: 100 }
   let(:player_lost) { double :player, hit_points: 0 }
   subject { described_class.new(player_1, player_2)}

    it 'checks player 1 is equal to the player 1' do
      expect(game.opponent_of(player_2)).to eq(player_1)
    end

    describe '#game_over?' do
     it 'returns false if neither players are at 0' do
       expect(game.game_over?).to be false
     end

     it 'returns true if at least one player is at 0 HP' do
       expect(finished_game.game_over?).to be true
     end
   end

   describe '#loser' do
     it 'returns a player that has less than 0' do
       expect(finished_game.loser).to eq(player_lost)
     end
   end

end
