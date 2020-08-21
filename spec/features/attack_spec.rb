feature 'Switch turns' do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Homer's turn"
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play
      click_button 'Attack'
      click_button 'OK'
      expect(page).not_to have_content "Homer's turn"
      expect(page).to have_content "Marge's turn"
    end

    scenario 'reduces player 1 HP by 10' do
     sign_in_and_play
     click_button 'Attack'
     click_button 'OK'
     click_button 'Attack'
     click_button 'OK'
     expect(page).not_to have_content 'Homer: 100 HP'
     expect(page).to have_content 'Homer: 90 HP'
   end
  end
end
