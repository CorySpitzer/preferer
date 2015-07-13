class Question < ActiveRecord::Base
  validates_presence_of :option_a
  validates_presence_of :option_b
  has_many :comments
  # has_attached_file :image_a, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  # validates_attachment_content_type :image_a, :content_type => /\Aimage\/.*\Z/
  # has_attached_file :image_b, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  # validates_attachment_content_type :image_b, :content_type => /\Aimage\/.*\Z/


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
