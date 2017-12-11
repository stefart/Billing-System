class CreateTariffaOraria < ActiveRecord::Migration[5.1]
  def change
    create_table :tariffa_oraria do |t|
      t.integer :tariffa

      t.timestamps
    end
  end
end
