class Question < ActiveRecord::Base
  validates_presence_of :option_a
  validates_presence_of :option_b

  def make
    "Would you rather #{option_a} or #{option_b}?"
  end

  def total_count
    option_a_count + option_b_count
  end

  def option_a_percentage
    "#{100*option_a_count/total_count}%"
  end

  def option_b_percentage
    "#{100*option_b_count/total_count}%"
  end

end
