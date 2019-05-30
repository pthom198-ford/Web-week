# require '../app.rb'

feature 'Testing infrastructure' do
scenario 'Can run app and check page content' do
  visit('/')
  expect(page).to have_content 'Testing infrastructure working!'
  end
end


# capybara can do save_and_open_page
#unit test testing small encapsultated code, just ruby based model
#test integration and how code interacts
