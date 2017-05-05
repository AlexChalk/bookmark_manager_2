feature 'Sign up form' do

  scenario 'User signs up' do
    expect{ sign_up }.to change { User.count }.by 1
    expect(page).to have_content 'Welcome, test@example.com.'
    expect(current_path).to eq '/links'
  end
end

