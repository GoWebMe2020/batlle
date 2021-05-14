feature 'Game Over' do
    context 'player health at 0' do
        before do
            sign_in_and_play
            attack_and_confirm
            allow(Kernel).to receive(:rand).and_return(10000)
        end

        scenario 'Player 1 Loses' do
            click_button 'Attack'
            expect(page).to have_content('Loses!!!')
        end
    end
end