require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  
  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe '2 arguments' do
    it 'initializes with 2 arguments' do
      expect(Game).to respond_to(:new).with(2).argument
    end
  end
end