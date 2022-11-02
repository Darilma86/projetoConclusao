class VendasController < ApplicationController
    # before_action :set_cliente, only: %i[ index new ]
    before_action :authenticate_user!


    def index
        # ESTA FUNCIONANDO"
        # @cliente.vendas.build
        @q = Venda.ransack(params[:q])
        @vendas = @q.result.page(params[:page])
        if params[:data_inicial].present? && params[:data_final].present?
          data_inicial = DateTime.parse(params[:data_inicial]).beginning_of_day
          data_final = DateTime.parse(params[:data_final]).end_of_day
          @vendas = @vendas.where("created_at >='#{data_inicial}'")  
          @vendas = @vendas.where("created_at <= '#{data_final}'")  
        elsif params[:data_inicial].present? && params[:data_final].blank?
          data_inicial = DateTime.parse(params[:data_inicial]).beginning_of_day
          @vendas = @vendas.where("created_at >= '#{data_inicial}'")
        elsif params[:data_inicial].blank? && params[:data_final].present?
          data_final = DateTime.parse(params[:data_final]).end_of_day
          @vendas = @vendas.where("created_at <= '#{data_final}'")
      end

    end


    def new
      puts "TESTEEEEEEEEEEEEEEE1"
      # @cliente.vendas.build
    end

    def show
    end


    private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente
      @cliente = Cliente.find(params[:cliente_id])
    end

    # Only allow a list of trusted parameters through.
    # def cliente_params

    #   params.require(:cliente).permit(:name, :rg, :cpf, :endereco, :celucar, :sexo, :data_nasciemnto, :email, :cidade)

    # end



end
