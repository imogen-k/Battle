feature 'game over' do
  context 'when the first player reaches 0' do
    before do
      sign_in_and_play
      click_button('Attack')
      click_button('OK')
     allow(Kernel).to receive(:rand).and_return(100)
    end

    scenario 'Player 1 lost' do
      click_button('Attack')
      expect(page).to have_content 'Homer loses!'
    end
  end
end
