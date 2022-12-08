class RemoveColumnFromStudents < ActiveRecord::Migration[6.0]
  def change
  	remove_column :students, :address
  end
end
