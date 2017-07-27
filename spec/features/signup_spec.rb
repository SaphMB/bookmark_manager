feature 'user signup' do
  scenario 'user enters details to signup - welcome message appears' do
    user = 0
    visit '/'
    fill_in :email_address, with: 'user@user.com'
    fill_in :password, with: 'password123'
    expect(current_path).to eq '/links'
    expect(page).to have_content "user@user.com"
    expect(user).to eq 1
  end
end
