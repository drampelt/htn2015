class Interview < ActiveRecord::Base
  belongs_to :user
  has_many :questions

  validates :user, presence: true

  before_create do
    self.link = SecureRandom.hex
  end
end
