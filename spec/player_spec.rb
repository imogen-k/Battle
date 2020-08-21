require 'player'

describe Player do
  subject(:homer) { Player.new("homer") }
  subject(:marge) { Player.new("marge") }
  it 'checks that the player name = the player instance variable' do
    expect(homer.name).to eq("homer")
  end

  it 'returns HP' do
    expect(homer.hit_points).to eq(described_class::DEFAULT_HP)
  end

  
end
