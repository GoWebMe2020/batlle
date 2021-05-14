require 'computer_player'

describe ComputerPlayer do
    subject(:computer_player) {described_class.new }

    it 'creates a player from player class' do
        expect(described_class).to be < Player
    end

    describe '#copmuter?' do
        it 'returns true' do
            expect(computer_player.computer?).to be(true)
        end
    end

    context 'defaults' do
        it ' defaults to the name The Machine' do
            expect(computer_player.name).to eq('The Machine')
        end
    end
end