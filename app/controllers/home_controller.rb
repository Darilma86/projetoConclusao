class HomeController < ApplicationController


  def index
    @total_vendas = Compra.all.count


    @vendas = Venda.all.order(created_at: :desc).limit(5)
    
  end
end
