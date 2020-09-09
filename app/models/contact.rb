class Contact
  include ActiveModel::Model
  attr_accessor :name, :email, :subject, :text

  validates :name, presence: true
  validates :email, presence: true
  validates :text, presence: true
end
