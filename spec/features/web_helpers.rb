def sign_in_and_play
  visit('/')
  fill_in(:player_1, with: 'Homer')
  fill_in(:player_2, with: 'Marge')
  click_button('Submit')
end
