require 'rails_helper'

describe 'the question sorting path' do
  it 'sorts the questions votes when a button is clicked' do
    visit root_path
    question1 = FactoryGirl.create(:question)
    question2 = FactoryGirl.create(:question, option_a: "fight a dragon",
                                              option_b: "fight a kraken",
                                              option_a_count: 1)
    click_on "Sort by votes"
    expect(page).to have_content "kraken Would you rather: use Ember" 

  end
end
