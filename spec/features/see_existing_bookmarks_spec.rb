feature 'FEATURE: see existing bookmarks' do
  scenario 'the user can see saved bookmarks on the homepage' do
    Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')

    visit('/')
    expect(page).to have_content('Makers Academy')
  end
end
