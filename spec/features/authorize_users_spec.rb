require 'rails_helper'

describe 'the authorization paths' do
  it 'redirects to the sign in page if a user is not signed in' do
    visit new_question_path
    expect(page).to have_content 'You would rather sign in :)'
  end

end
