feature 'FEATURE: adding tags' do
  scenario 'the user can add tags to a link' do
    visit('/links/new')
    fill_in :url, with: "www.google.com"
    fill_in :title, with: "Google"
    fill_in :tags, with: "Browser"
    click_button "Submit"
    expect(page).to have_content('Browser')
  end
end
