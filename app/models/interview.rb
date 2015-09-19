class Interview < ActiveRecord::Base
  belongs_to :user

  validates :user, presence: true

  before_create do
    self.link = SecureRandom.hex
  end
end
