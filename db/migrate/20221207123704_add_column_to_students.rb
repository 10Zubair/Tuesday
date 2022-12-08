class AddColumnToStudents < ActiveRecord::Migration[6.0]
  def change
  	add_column :students, :local_address, :string
  	add_column :students, :permanent_address, :string
  	add_column :students, :alternate_contact_number, :string
  end
end
