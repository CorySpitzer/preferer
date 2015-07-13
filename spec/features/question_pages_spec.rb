require "rails_helper"

describe "root path" do
  it "displays a button to ask a question" do
    visit root_path
    expect(page).to have_content("Ask Question")
  end
end

describe 'loading the question form' do
  it 'loads the question form', js: true do
    visit root_path
    expect(page).to have_no_content 'Save'
    click_on 'Ask Question'
    expect(page).to have_content 'Option A'
  end
end
