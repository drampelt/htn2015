class Question < ActiveRecord::Base
  belongs_to :interview
  has_one :response
  
  validates :interview, presence: true
end
