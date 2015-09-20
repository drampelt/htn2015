class Question < ActiveRecord::Base
  belongs_to :interview
  
  validates :interview, presence: true
end
