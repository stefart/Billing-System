class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :nome
      t.string :cognome
      t.string :telefono
      t.string :indirizzo
      t.integer :ore_totali
      t.string :ultima_fattura

      t.timestamps
    end
  end
end
