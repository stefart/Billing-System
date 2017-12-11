class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.string :voce
      t.integer :ore_eff
      t.integer :tariffa
      
      t.belongs_to :client, foreign_key: true

      t.timestamps
    end
  end
end
