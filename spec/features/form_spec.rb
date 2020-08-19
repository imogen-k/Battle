feature 'form test' do
  scenario 'see players names on screen' do
    visit('/')
    fill_in(:player_1, with: 'Homer')
    fill_in(:player_2, with: 'Marge')
    click_button('Submit')
    expect(page).to have_content('Homer vs Marge')
  end
end
