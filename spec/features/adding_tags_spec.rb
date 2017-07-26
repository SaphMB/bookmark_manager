feature 'FEATURE: adding tags' do
  scenario 'the user can add tags to links' do
    visit('/links/new')
    fill_in :url, with: "www.google.com"
    fill_in :title, with: "Google"
    fill_in :tag, with: "Browsing"
    click_button "Submit"
    expect(page).to have_content('Browsing')
  end
end
