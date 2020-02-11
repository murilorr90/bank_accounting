class User < ApplicationRecord
  has_secure_password
  has_one :account

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  scope :by_name, -> { order(:name) }

  def self.names
    pluck(:name)
  end
end