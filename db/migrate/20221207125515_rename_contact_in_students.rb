class RenameContactInStudents < ActiveRecord::Migration[6.0]
  def change
  	rename_column :students, :contact, :permanent_contact_number
  end
end
