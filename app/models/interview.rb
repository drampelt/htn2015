class Interview < ActiveRecord::Base
  belongs_to :user
  has_many :questions
  has_many :notes

  validates :user, presence: true

  before_create do
    self.link = SecureRandom.hex
  end
end
