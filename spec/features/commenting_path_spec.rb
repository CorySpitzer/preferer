require 'rails_helper'

describe "leaving a comment" do
  it "displays the new comment next to the question if logged in", js: true do
    question = Question.create option_a: "use ember", option_b: "use rails"
    user = FactoryGirl.create :user
    login_as user
    visit root_path
    fill_in "comment_text", with: "I love rails"
    click_on "Comment"
    expect(page).to have_content "I love rails"
    expect(page).to have_no_css "form#new_comment_#{question.id}"
  end

  it "displays comments as authored by anon if not logged in", js: true do
    question = Question.create option_a: "use ember", option_b: "use rails"
    User.create(email: 'anon@anon.who', password: '12341234')
    visit root_path
    fill_in "comment_text", with: "I love rails"
    click_on "Comment"
    expect(page).to have_content "anon@anon.who says I love rails"
  end
end
