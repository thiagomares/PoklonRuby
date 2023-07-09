class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios do |t|
      t.integer :customerID
      t.string :customer_name
      t.date :data_nascimento
      t.string :primary_email_address

      t.timestamps
    end
  end
end
