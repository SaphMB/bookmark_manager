feature 'adding multiple tags' do
  scenario 'can add more tags' do
    login('user', 'user@user.com', 'password123', 'password123')
    add_a_link("www.google.com", "Google", "browser search")
    visit('/links')
    expect(page).to have_content "browser, search"
  end
end
