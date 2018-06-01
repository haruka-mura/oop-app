class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true

    # 
    # def create
    #   return false if invalid?
    #
    #   NewUserDecorator.new(user).save
    # end
end
