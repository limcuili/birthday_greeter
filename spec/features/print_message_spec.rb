xfeature 'prints the correct birthday message' do

  scenario 'it is your birthday today' do
    visit '/'
    fill_in :name, with: 'Tristan'
    select("1", from: "birth_day").select_option
    select("August", from: "birth_month").select_option
    click_button 'Submit'
    expect(page).to have_content 'Happy Birthday!'
  end

  scenario 'it is one day to your birthday' do
    visit '/'
    fill_in :name, with: 'Tristan'
    select("2", from: "birth_day").select_option
    select("August", from: "birth_month").select_option
    click_button 'Submit'
    expect(page).to have_content 'Your birthday is tomorrow!'
  end

  scenario 'there are 20 days to your birthday' do
    visit '/'
    fill_in :name, with: 'Tristan'
    select("21", from: "birth_day").select_option
    select("August", from: "birth_month").select_option
    click_button 'Submit'
    expect(page).to have_content 'There are 20 days to your birthday.'
  end

  scenario 'there are 345 days to your birthday' do
    visit '/'
    fill_in :name, with: 'Tristan'
    select("11", from: "birth_day").select_option
    select("July", from: "birth_month").select_option
    click_button 'Submit'
    expect(page).to have_content 'There are 345 days to your birthday.'
  end

end
