feature 'user enters name' do

  scenario 'accepts user name with default birthday' do
    visit ('/')
    fill_in :name, with: 'Tristan'
    click_button 'Submit'
    expect(page).to have_content 'Your birthday is 1 January'
  end
end
