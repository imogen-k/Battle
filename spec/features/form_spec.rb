feature 'form test' do
  scenario 'see players names on screen' do
    sign_in_and_play
    expect(page).to have_content('Homer vs Marge')
  end
end
