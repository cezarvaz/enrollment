class RemoveRegisterNumberFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :register_number, :string
  end
end
