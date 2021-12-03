
feature 'Attacking' do
  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play
    click_button 'Attack 1'
  # click_link 'OK'
    expect(page).not_to have_content 'Charlotte: 60HP'
    expect(page).to have_content 'Charlotte: 50HP'
  end
end