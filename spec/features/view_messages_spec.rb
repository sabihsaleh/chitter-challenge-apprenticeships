feature 'viewing messages' do
    scenario 'visiting the index page' do
      visit('/')
      expect(page).to have_content "Welcome to Chitter"
    end
    scenario 'user can see messages' do
        Peeps.add(message: "Hello, I am a peep")
        Peeps.add(message: "I also am a peep")
        Peeps.add(message: "Also a peep")
        
        visit('/peeps')

        expect(page).to have_content "Hello, I am a peep"
        expect(page).to have_content "I am also a peep!"
        expect(page).to have_content "Also a peep!"
    end
end
