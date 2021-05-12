require 'player'

describe Player do

    subject(:godzilla) { Player.new('Godzilla') }
    subject(:kong) { Player.new('Kong') }

    describe '#name' do
        it 'returns the name' do
            expect(godzilla.name).to eq('Godzilla')
        end
    end

    describe '#health' do
        it 'returns the health' do
            expect(godzilla.health).to eq(described_class::DEFAULT_HEALTH)
        end
    end

    describe '#attack' do
        it 'damages the other player' do
            expect(kong).to receive(:receive_damage)
            godzilla.attack(kong)
        end
    end

    describe '#receive_damage' do
        it 'deducts health from the player under attack' do
            expect { godzilla.receive_damage }.to change { godzilla.health }.by(-10)
        end
    end

end