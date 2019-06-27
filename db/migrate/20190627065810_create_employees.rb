class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.date :dob
      t.date :doj
      t.string :designation
      t.string :department
      t.text :residential_address
      t.text :permanent_address
      t.timestamps
    end
  end
end
