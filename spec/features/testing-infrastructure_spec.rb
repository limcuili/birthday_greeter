feature 'Testing infrastructure works' do
  scenario 'prints message that our infrastructure works' do
    visit ('/')
    expect(page).to have_content 'Testing infrastructure works!'
  end
end
