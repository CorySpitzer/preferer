class Question < ActiveRecord::Base
  validates_presence_of :option_a
  validates_presence_of :option_b
  has_many :comments

  def recent_comments(n)
    comments.order(id: :desc).limit(n)
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
