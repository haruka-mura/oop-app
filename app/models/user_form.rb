class UserForm
  include ActiveModel::Model

  attr_accessor :name, :email, :password

  validates :name, presence: true
  validates :title, presence: true
  validates :password, presence: true


end
