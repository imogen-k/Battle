feature 'attack button' do
  scenario 'attacking player 1' do
    sign_in_and_play
    click_button('Attack')
    click_button('Attack')
    expect(page).to have_content('Marge attacked Homer!')
  end
end
