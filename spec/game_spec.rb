require 'game'

describe Game do
    
    subject(:game) { described_class.new(player1, player2) }
    let(:player1) { double :player }
    let(:player2) { double :player }

    describe '#player1' do
        it 'receives the first player' do
            expect(game.player1).to eq(player1)
        end
    end

    describe '#player2' do
        it 'receives the second player' do
            expect(game.player2).to eq(player2)
        end
    end

    describe '#current_turn' do
        it 'always starts with player 1' do
            expect(game.current_turn).to eq(player1)
        end
    end

    describe '#opponent_of' do
        it 'egts the opponent of a player' do
            expect(game.opponent_of(player1)).to eq(player2)
            expect(game.opponent_of(player2)).to eq(player1)
        end
    end

end