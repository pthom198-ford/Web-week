# require '../app.rb'

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature 'Entering Players' do
scenario 'can see and click submit button' do
  visit('/players')
  expect(page).to have_button('Submit')
end

scenario 'can fill in the form with first name' do
  visit('/players')
  # fill_in "First Name", with: "Peter"
  expect(page).to have_field('Player One')
end
scenario 'can fill in the form with first name' do
  visit('/players')
  # fill_in "First Name", with: "Peter"
  expect(page).to have_field('Player Two')
end

scenario 'can see the names displayed once submitted' do
  visit('/players')
  fill_in 'Player One', with: 'Peter'
  fill_in 'Player Two', with: 'Piers'
  click_button('Submit')
  expect(page).to have_text('Peter')
  expect(page).to have_text('Piers')
end
end

# capybara can do save_and_open_page
#unit test testing small encapsultated code, just ruby based model
#test integration and how code interacts
