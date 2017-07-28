feature 'filtering by tag' do
  scenario 'can filter by the tag bubbles' do
    login('user', 'user@user.com', 'password123')
    add_a_link("www.google.com", "Google", "browser")
    add_a_link("www.bubbles.com", "Bubbles", "bubbles")
    visit('tags/bubbles')
    expect(page).to have_content "bubbles"
    expect(page).not_to have_content 'browser'
  end

end
