class Movimentacao < ApplicationRecord
    enum :tipo, {saida: 'saida', entrada: 'entrada'}

    belongs_to :usuario

    validates :data, comparison: { less_than_or_equal_to: proc { Date.current } }
    validates :descricao, presence: true
    validates :descricao, length: {maximum:150}
    validates :valor, presence: true
    validates :tipo, presence: true
    validate :valida_se_existe_saldo

    def self.saldo_atual
        self.entrada.sum(:valor) - self.saida.sum(:valor)
        #self.entrada.sum(:valor) - self.saida.sum(:valor)
    end

    def self.total_entrada
        self.entrada.sum(:valor)
    end

    private

    def valida_se_existe_saldo
        return unless usuario
        return if entrada?
        return if valor.to_f <= usuario.movimentacoes.saldo_atual
            errors.add :valor, 'não há saldo suficiente'
    end
end
