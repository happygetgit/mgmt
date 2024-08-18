class Student < ApplicationRecord
  has_many :blogs
  has_and_belongs_to_many :courses
  has_many :student_projects
  has_many :projects, through: :student_projects
  validates_presence_of :first_name, :lastname,
                        :email, :phonenumber, :dob, 
                        :permanent_contact_number, 
                        :local_address, 
                        :permanent_address, 
                        :alternate_contact_number 
  before_create :display_message

  def display_message
    p 'hello, this is a message before create action'
  end

  def full_name
    "#{first_name}#{lastname}"
  end

  def student_with_email
    "#{full_name} / #{email}"
  end
end
