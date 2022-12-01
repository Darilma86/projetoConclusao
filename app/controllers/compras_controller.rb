class ComprasController < ApplicationController
    before_action :set_cliente, only: %i[ new ]
    before_action :authenticate_user!


    def index
      @q = Compra.all.order(created_at: :desc).ransack(params[:q])
      @compras = @q.result.page(params[:page])

      if params[:data_inicial].present? && params[:data_final].present?
        data_inicial = DateTime.parse(params[:data_inicial]).beginning_of_day
        data_final = DateTime.parse(params[:data_final]).end_of_day
        @compras = @compras .where("compras.created_at >='#{data_inicial}'")  
        @compras  = @compras .where("compras.created_at <= '#{data_final}'")  
      elsif params[:data_inicial].present? && params[:data_final].blank?
        data_inicial = DateTime.parse(params[:data_inicial]).beginning_of_day
        @compras = @compras .where("compras.created_at >= '#{data_inicial}'")
      elsif params[:data_inicial].blank? && params[:data_final].present?
        data_final = DateTime.parse(params[:data_final]).end_of_day
        @compras  = @compras .where("compras.created_at <= '#{data_final}'")
    end
    end

    def new
      
        @cliente.vendas.build
        @compra = Compra.new
        @id = params[:cliente_id]
         
    end


    def create

      len = 10
      protocolo = SecureRandom.alphanumeric(len)

      @compra = Compra.new(compra_params)
      @compra.protocolo = protocolo
 

      respond_to do |format|

        

        
        @produto_validado = []
        @produto_invalidado = []

        @compra.vendas.each do |venda|
          
          @produto = Produto.find(venda.produto_id)
          
          if (@produto.quantidade >= venda.quantidade)   
            @produto_validado << venda.produto_id
          else
            @produto_invalidado << venda.produto_id
          end 
        
        end

        # puts "PRODUTO INVALIDADO #{@produto_invalidado.first}"
        if (@produto_invalidado.blank?)


          @compra.vendas.each do |venda|

            @produto = Produto.find(venda.produto_id)
            @produto.quantidade -= venda.quantidade 
            @produto.save
          end

          if @compra.save
            puts "FOI DE BOA"
            format.html { redirect_to clientes_path, notice: "Venda Efetuada com Sucesso!" }
          else
            format.html { render :new, status: :unprocessable_entity }
          end



        else
          # puts"não fo000000000000000000i"
          produtos_recusados = ""
          
          @produto_invalidado.each do | produto_id |
            @prod = Produto.find(produto_id)

            produtos_recusados +=  " #{@prod.nome}, " 
          end

          format.html { redirect_to clientes_path, notice: "Não foi possível efeuar compra por falta de estoque do(s) produto(s) #{ produtos_recusados}!" }


        end






      end      

    end


    
    def detalhe_compra

      puts "DETALHE VENDAAAAAAAAAAAAAAAAAAAAAAAA"
      @vendas = Venda.where(compra_id: params[:id])
      @cliente = @vendas.first.cliente
      @total_venda = 0
      @protocolo = @vendas.first.compra.protocolo
      @data_compra = @vendas.first.compra.created_at.strftime("%d/%m/%Y")
      
      @vendas.each do |venda|
        @total_venda += venda.valor_venda * venda.quantidade  
      end
      
       

    end


    private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente
      @cliente = Cliente.find(params[:cliente_id])
    end

    # Only allow a list of trusted parameters through.
    def compra_params

      params.require(:compra).permit(:cliente_id, vendas_attributes:[:produto_id, :quantidade, :valor_venda, :compra_id, :cliente_id, :_destroy] )

    end



end
