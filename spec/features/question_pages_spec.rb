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

describe "submitting a question" do
  it 'displays the question', js: true do
    visit root_path
    click_on 'Ask Question'
    fill_in "Option A", with: "use Rails"
    fill_in "Option B", with: "use Ember"
    click_on "Save"
    expect(page).to have_no_content "Option A"
    expect(page).to have_content "use Rails"
    expect(page).to have_content "use Ember"
  end
end

describe "Loading more question with scrolling" do
  it 'loads more question with scrolling', js: true do
    6.times do |n|
      Question.create! option_a: (n+1).to_s, option_b: 'b'
    end
    visit root_path
    expect(page).to have_no_content '6'
    page.evaluate_script('window.scrollTo(0, document.height)')
    expect(page).to have_content '6'
  end
end

describe "voting on an option" do
  it "displays the number of votes for both options", js: true do
    question = Question.create option_a: "use ember", option_b: "use rails"
    visit root_path
    click_on "question_#{question.id}_option_b_link"
    expect(page).to have_content "100%"
    expect(page).to have_content "0%"
  end
end

describe "leaving a comment" do
  it "displays the new comment next to the question", js: true do
    question = Question.create option_a: "use ember", option_b: "use rails"
    visit root_path
    fill_in "comment_text", with: "I love rails"
    fill_in "comment_author", with: "Ben"
    click_on "Comment"
    expect(page).to have_content "I love rails"
    expect(page).to have_no_css "form#new_comment_#{question.id}"
  end
end
