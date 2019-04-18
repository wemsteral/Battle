feature 'Attacking' do
  scenario 'Attack opponent and confirm' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Al attacked Mittens'
  end
end
