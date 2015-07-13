require "rails_helper"

describe "root path" do
  it "displays a button to ask a question" do
    visit root_path
    page.should have_content("Ask Question")
  end
end
