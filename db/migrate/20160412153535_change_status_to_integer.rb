class ChangeStatusToInteger < ActiveRecord::Migration
  def change
    change_column :courses, :status, :integer
  end
end
