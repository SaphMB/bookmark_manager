feature 'FEATURE: creating links' do
  scenario 'the user can add a new bookmark to the database' do
    login('user', 'user@user.com', 'password123')
    add_a_link("www.google.com", "Google", "browser search")
    expect(page).to have_content('www.google.com')
  end
end
