feature 'Attack' do
    scenario 'player 1 attacking player 2' do
        sign_in_and_play
        click_button 'Attack'
        expect(page).to have_content 'Godzilla attacked Kong'
    end

    # As Player 1,
    # So I can start to win a game of Battle,
    # I want my attack to reduce Player 2's HP by 500

    scenario 'deduct attack value from player 2 HP' do
        sign_in_and_play
        allow(Kernel).to receive(:rand).and_return(500)
        click_button 'Attack'
        click_button 'OK'
        expect(page).not_to have_content 'Kong: 10000HP'
        expect(page).to have_content 'Kong: 9500HP' # This needs the HP
    end

    # As Player 1,
    # So I can start to lose a game of Battle,
    # I want Player 2's attack to reduce my HP by 500
    scenario 'deduct Players 1 health by 500' do
        sign_in_and_play
        click_button 'Attack'
        click_button 'OK'
        allow(Kernel).to receive(:rand).and_return(500)
        click_button 'Attack'
        click_button 'OK'
        expect(page).not_to have_content 'Godzilla: 10000HP'
        expect(page).to have_content 'Godzilla: 9500HP' # This needs the HP
    end

    # As a Player,
    # So I can extend my joyous experience of Battle,
    # I want to have an attack that heals some of my Hit Points
    scenario 'increase Player 1 health by 500' do
        sign_in_and_play
        allow(Kernel).to receive(:rand).and_return(500)
        click_button 'Attack'
        click_button 'OK'
        allow(Kernel).to receive(:rand).and_return(500)
        click_button 'Attack'
        click_button 'OK'
        allow(Kernel).to receive(:rand).and_return(500)
        click_button 'Heal'
        click_button 'OK'
        expect(page).to have_content 'Kong: 10000HP'
    end
end