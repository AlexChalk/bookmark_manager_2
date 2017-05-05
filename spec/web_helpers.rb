def add_link_with_tag
    visit '/links/new'
    fill_in 'page_name', with: 'RegExr'
    fill_in 'page_url', with: 'http://regexr.com/'
    fill_in 'page_tag', with: 'coding'
    click_on 'Create new link'
end

def add_link_with_bubbles_tag
    visit '/links/new'
    fill_in 'page_name', with: 'Bubbles_Site'
    fill_in 'page_url', with: 'http://bubbles.com/'
    fill_in 'page_tag', with: 'bubbles'
    click_on 'Create new link'
end

def sign_up
  visit '/signup'
  fill_in :email, with: 'test@example.com'
  fill_in :password, with: 'password'
  click_button 'Sign Up'
end


