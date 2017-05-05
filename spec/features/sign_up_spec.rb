feature 'Sign up form' do

  scenario 'User signs up' do

    visit '/signup'
    fill_in :email, with: 'test@example.com'
    fill_in :password, with: 'password'
    expect{ click_on 'Sign Up' }.to change { User.all.count }.by 1
    expect(page).to have_content 'Welcome, test@example.com.'
    expect(current_path).to eq '/links'
  end
end

