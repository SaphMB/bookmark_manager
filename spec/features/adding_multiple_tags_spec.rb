feature 'adding multiple tags' do
  scenario 'can add more tags' do
    add_a_link("www.google.com", "Google", "browser search")
    visit('/links')
    expect(page).to have_content "browser, search"
  end
end
