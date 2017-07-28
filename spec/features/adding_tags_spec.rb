feature 'FEATURE: adding tags' do
  scenario 'the user can add tags to a link' do
    login('user', 'user@user.com', 'password123')
    add_a_link("www.google.com", "Google", "Browser" )
    expect(page).to have_content('Browser')
  end
end
