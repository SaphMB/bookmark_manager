feature 'FEATURE: creating links' do
  scenario 'the user can add a new bookmark to the database' do
    visit('/links/new')
    fill_in :url, with: "www.google.com"
    fill_in :title, with: "Google"
    click_button "Submit"
    expect(page).to have_content('www.google.com')
  end
end
