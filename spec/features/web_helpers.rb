def add_a_link(url, title, tag )
  visit('/links/new')
  fill_in :url, with: url
  fill_in :title, with: title
  fill_in :tags, with: tag
  click_button "Submit"
end

def login(name, email_address, password)
  visit '/'
  fill_in :name, with: name
  fill_in :email_address, with: email_address
  fill_in :password, with: password
  click_button 'Submit'
end
