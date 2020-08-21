require 'attack'

 describe Attack do
   subject(:object) { described_class }
   let(:player) { double :player }

   describe 'using .kick' do
     it 'damages the other player' do
       expect(player).to receive(:damage)
       object.kick(player)
     end
   end
 end
