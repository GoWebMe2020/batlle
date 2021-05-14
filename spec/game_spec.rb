require 'game'

describe Game do
    
    subject(:game) { described_class.new(player1, player2) }
    # let(:player1) { double :player }
    # let(:player2) { double :player }
    subject(:finished_game) { described_class.new(dead_player, player2) }
    let(:player1) { double :player, health: 60 }
    let(:player2) { double :player, health: 60 }
    let(:dead_player) { double :player, health: 0 }

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

    describe '#game_over?' do
        it 'returns false if no-one is at 0HP' do
            expect(game.game_over?).to be false
        end

        it 'returns true if at least one player is at 0HP' do
            expect(finished_game.game_over?).to be true
        end
    end

    describe '#loser' do
        it 'returns a player on less than 0HP' do
            expect(finished_game.loser).to eq dead_player
        end
    end

end