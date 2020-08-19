feature 'reduce player 2 HP' do
  scenario 'reduce player 2 HP by 10' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Marge: 90 HP')
  end
end
