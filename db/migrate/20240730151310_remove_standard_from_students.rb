class RemoveStandardFromStudents < ActiveRecord::Migration[6.1]
  def change
    remove_column :students, :standard
    rename_column :students, :ad, :address
  end
end
