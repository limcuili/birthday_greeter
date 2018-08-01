feature 'user enters name' do

  scenario 'accepts user name' do
    visit '/'
    fill_in :name, with: 'Tristan'
    click_button 'Submit'
    expect(page).to have_content 'Hello, Tristan!'
  end

  scenario 'tells you your birthday' do
    visit '/'
    fill_in :name, with: 'Tristan'
    select("14", from: "birth_day").select_option
    select("January", from: "birth_month").select_option
    click_button 'Submit'
    expect(page).to have_content 'Your birthday is 14 January'
  end

end
