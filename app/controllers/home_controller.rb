class HomeController < ApplicationController


  def index
    @total_vendas = Compra.all.count
    @total_clientes = Cliente.all.count
    @total_produtos = Produto.all.count
   @total_vendido = Venda.total

    @compras = Compra.all.order(created_at: :desc).limit(5)
    @vendas = Venda.all.order(created_at: :desc).limit(5)

    @sapato = Venda.where(produto_id: 3).count
  
  end
end
