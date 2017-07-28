feature 'FEATURE: see existing bookmarks' do
  scenario 'the user can see saved bookmarks on the homepage' do
    login('user', 'user@user.com', 'password123', 'password123')
    Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    visit('/links')
    expect(page).to have_content('Makers Academy')
  end
end
