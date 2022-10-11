class CreateMovimentacoes < ActiveRecord::Migration[7.0]
  def change
    create_table :movimentacoes do |t|
      t.date :data
      t.string :descricao, limit: 150
      t.integer :valor
      t.string :tipo, limit: 50

      t.timestamps
    end
  end
end
