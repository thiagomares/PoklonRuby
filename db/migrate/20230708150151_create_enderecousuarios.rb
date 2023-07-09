class CreateEnderecousuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :enderecousuarios do |t|
      t.integer :customerID
      t.string :logradouro
      t.string :state
      t.string :state_alias

      t.timestamps
    end
  end
end
