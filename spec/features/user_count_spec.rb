feature 'user count' do
  scenario 'user count increases when user enters details' do
    count = User.count
    visit '/'
    fill_in :email_address, with: 'user@user.com'
    fill_in :password, with: 'password123'
    fill_in :password_confirmation, with: 'password123'
    click_button 'Submit'
    expect(User.count).to eq (count + 1)
  end
end
