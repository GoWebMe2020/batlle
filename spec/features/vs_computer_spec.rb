# As a lonely Player,
# So I can keep my Battle skills up to scratch
# I want to play a Computerised opponent

feature 'Single player mode, play vs computer' do
    scenario 'computer gets a name' do
        sign_in_and_play(true)
        expect(page).to have_content('Godzilla')
        expect(page).to have_content('VS')
        expect(page).to have_content('The Machine')
    end

    scenario 'computer can attack' do
        sign_in_and_play(true)
        attack_and_confirm
        click_button 'Attack'
        expect(page).to have_content('The Machine attacked Godzilla')
    end

    scenario 'computer can damage player' do
        sign_in_and_play(true)
        attack_and_confirm
        attack_and_confirm
        # click_button 'OK'
        expect(page).not_to have_content('Godzilla: 10000HP')
    end

    scenario 'computer can die' do
        sign_in_and_play(true)
        allow(Kernel).to receive(:rand).and_return(10000)
        click_button 'Attack'
        expect(page).to have_content('The Machine Loses!!!')
    end

    scenario 'computer can win' do
        sign_in_and_play(true)
        attack_and_confirm
        allow(Kernel).to receive(:rand).and_return(10000)
        click_button 'Attack'
        # click_button 'OK'
        expect(page).to have_content('Godzilla Loses!!!')
    end
end