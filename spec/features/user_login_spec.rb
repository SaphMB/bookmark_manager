feature 'user login' do
  scenario 'user can enters details to login - welcome message appears' do
    visit '/'
    fill_in :name, with: 'user'
    fill_in :email_address, with: 'user@user.com'
    fill_in :password, with: 'password123'
    click_button 'Submit'
    expect(page).to have_content "user@user.com"
  end
end
