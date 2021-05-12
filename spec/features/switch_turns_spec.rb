feature 'Switch Tunrs' do
    context 'seeing the current turn' do
        scenario 'when the game starts' do
            sign_in_and_play
            expect(page).to have_content("Godzilla's Turn")
        end

        scenario 'after player 1 attacks' do
            sign_in_and_play
            click_button 'Attack'
            click_button 'OK'
            expect(page).not_to have_content("Godzilla's Turn")
            expect(page).to have_content("Kong's Turn")
        end
    end
end