class AddUsuarioToMovimentacoes < ActiveRecord::Migration[7.0]
  def change
    add_reference :movimentacoes, :usuario, null: true, foreign_key: true
  end
end
