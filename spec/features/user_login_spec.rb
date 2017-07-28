feature 'user login' do
  scenario 'user can enters details to login - welcome message appears' do
    visit '/'
    login('user', 'user@user.com', 'password123', 'password123')
    expect(page).to have_content "user@user.com"
  end

  scenario 'user enters a mismatching password' do
    count = User.count
    visit '/'
      login('user', 'user@user.com', 'password123', 'password122')
      expect { login('user', 'user@user.com', 'password123', 'password122') }.not_to change(User, :count)
  end
end
