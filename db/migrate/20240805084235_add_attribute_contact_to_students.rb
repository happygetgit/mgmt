class AddAttributeContactToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :contact, :integer
  end
end
