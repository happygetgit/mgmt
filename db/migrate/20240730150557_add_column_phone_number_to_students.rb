class AddColumnPhoneNumberToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :phonenumber, :integer
    add_column :students, :standard, :string
    add_column :students, :dob, :datetime
    add_column :students, :ad, :string
  end
end
