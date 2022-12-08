class Venda < ApplicationRecord

    belongs_to :cliente
    belongs_to :produto
    belongs_to :compra
    belongs_to :devolucao

      def self.total
      
        vendas = Venda.where("DATE(created_at) =?", Date.today)
        
        total = 0

        vendas.each do |venda|
          total += venda.quantidade * venda.valor_venda
        end

        total
      end

end
