class RelatoriosController < ApplicationController
    # before_action :set_cliente, only: %i[ new ]
    before_action :authenticate_user!



    def index
        # puts "TESTEEEEEEEEEEEEEEE1"
        # @cliente.vendas.build
        @q = Venda.ransack(params[:q])
        @vendas = @q.result.page(params[:page])
        # if params[:data_inicial].present? && params[:data_final].present?
        #   data_inicial = DateTime.parse(params[:data_inicial]).beginning_of_day
        #   data_final = DateTime.parse(params[:data_final]).end_of_day
        #   @vendas = @vendas.where("venda.created_at >='#{data_inicial.strftime("%d/%m/%Y")}'")  
        #   @vendas = @vendas.where("venda.created_at <= '#{data_final.strftime("%d/%m/%Y")}'")  
        # elsif params[:data_inicial].present? && params[:data_final].blank?
        #   data_inicial = DateTime.parse(params[:data_inicial]).beginning_of_day
        #   @vendas = @vendas.where("vendas.created_at >= '#{data_inicial.strftime("%d-%m-%Y")}'")
        # elsif params[:data_inicial].blank? && params[:data_final].present?
        #   data_final = DateTime.parse(params[:data_final]).end_of_day
        #   @vendas = @vendas.where("vendas.created_at <= '#{data_final.strftime("%d/%m/%Y")}'")
        # end

    end




    private
    # Use callbacks to share common setup or constraints between actions.
    # def set_cliente
    #   @cliente = Cliente.find(params[:cliente_id])
    # end

    # # Only allow a list of trusted parameters through.
    # def compra_params

    #   params.require(:compra).permit(:cliente_id, vendas_attributes:[:produto_id, :quantidade, :valor_venda, :compra_id, :cliente_id, :_destroy] )

    # end



end
