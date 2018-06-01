class User < ApplicationRecord
  validates :name, presence: true
  validates :title, presence: true
  validates :password, presence: true
end
