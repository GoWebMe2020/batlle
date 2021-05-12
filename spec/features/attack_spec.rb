feature 'Attack' do
    scenario 'player 1 attacking player 2' do
        sign_in_and_play
        click_button 'Attack'
        expect(page).to have_content 'Godzilla attacked Kong'
    end

    # As Player 1,
    # So I can start to win a game of Battle,
    # I want my attack to reduce Player 2's HP by 10

    scenario 'deduct attack value from player 2 HP' do
        sign_in_and_play
        click_button 'Attack'
        click_button 'OK'
        expect(page).not_to have_content 'Kong: 100HP'
        expect(page).to have_content 'Kong: 90HP'
    end

    # As Player 1,
    # So I can start to lose a game of Battle,
    # I want Player 2's attack to reduce my HP by 10
    scenario 'deduct Players 1 health by 10' do
        sign_in_and_play
        click_button 'Attack'
        click_button 'OK'
        click_button 'Attack'
        click_button 'OK'
        expect(page).not_to have_content 'Godzilla: 100HP'
        expect(page).to have_content 'Godzilla: 90HP'
    end
end