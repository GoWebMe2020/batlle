# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points
feature 'View health' do
    scenario 'see Player 2 health' do
        sign_in_and_play
        expect(page).to have_content 'Kong: 100HP'
    end

# As Player 1,
# So I can see how close I am to losing,
# I want to see my own hit points
    scenario 'see Player 1 health' do
        sign_in_and_play
        expect(page).to have_content 'Godzilla: 100HP'
    end

end