require "rails_helper"

describe Question do
  it { should validate_presence_of :optionA }
  it { should validate_presence_of :optionB }
end
