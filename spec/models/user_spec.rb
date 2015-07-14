require 'rails_helper'

describe User, type: :model do
  it { should have_many :comments}
  # pending "add some examples to (or delete) #{__FILE__}"
end
