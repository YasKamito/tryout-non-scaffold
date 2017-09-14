class CashesController < ApplicationController
    
    before_action :set_cash, only: %w(show edit update destroy)
    
    def index
        @cashes = Cash.all
    end

    def new
        @cash = Cash.new
    end

    def create
        @cash = Cash.new(cash_params)

        if @cash.save
            redirect_to cashes_url
        else
            render 'new'
        end
    end

    def update
        if @cash.update(cash_params)
            redirect_to cashes_url
        else
            render 'edit'
        end

    end

    def destroy
        @cash.destroy
        redirect_to cashes_url
    end

    private
        def cash_params
            params.require(:cash).permit(:name, :cashtype)
        end
        def set_cash
            @cash = Cash.find(params[:id])
        end

end
