class Student < ApplicationRecord
  validates_presence_of :first_name, :lastname, :email
  before_create :display_message

  def display_message
    p 'hello, this is a message before create action'
  end
end
