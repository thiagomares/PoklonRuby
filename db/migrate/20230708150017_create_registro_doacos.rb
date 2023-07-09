class CreateRegistroDoacos < ActiveRecord::Migration[7.0]
  def change
    create_table :registro_doacos do |t|
      t.integer :donationID
      t.integer :customerID
      t.date :donation_date

      t.timestamps
    end
  end
end
