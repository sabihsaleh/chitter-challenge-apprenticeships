feature 'adding a new message' do
    scenario 'a user can add a message to Chitter' do
      visit('/peeps/new')
      fill_in('message', with: 'Hello!')
      click_button('Submit')
 
      expect(page).to have_content 'Hello!'
    end
end