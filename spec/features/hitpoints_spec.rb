feature 'See hit points' do
  scenario 'see player 2 hit points' do
    visit('/')
    fill_in(:player_1, with: 'Homer')
    fill_in(:player_2, with: 'Marge')
    click_button('Submit')
    expect(page).to have_content('Marge: 100 HP')
  end
end
