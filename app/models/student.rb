class Student < ApplicationRecord
  validates_presence_of :first_name, :lastname, :email
end
