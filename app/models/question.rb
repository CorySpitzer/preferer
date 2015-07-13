class Question < ActiveRecord::Base
  validates_presence_of :option_a
  validates_presence_of :option_b

  def make
    "Would you rather #{option_a} or #{option_b}?"
  end
end
