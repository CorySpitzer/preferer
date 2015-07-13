class Question < ActiveRecord::Base
  validates_presence_of :optionA
  validates_presence_of :optionB

end
