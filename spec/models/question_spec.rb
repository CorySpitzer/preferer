require "rails_helper"

describe Question do
  it { should validate_presence_of :option_a }
  it { should validate_presence_of :option_b }
  it { should have_many :comments }

  it 'updates the vote count when an option is chosen' do
    question = FactoryGirl.create :question
    question.option_a_count += 1
    question.save
    # makes sure the data is the db as well as the temporary object
    question2 = Question.find question.id
    expect(question2.vote_count).to eq 1
  end
end
