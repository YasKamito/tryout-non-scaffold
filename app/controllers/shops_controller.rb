class ShopsController < ApplicationController

    before_action :set_shop, only: %w(show edit update destroy)

    def index
        @shops = Shop.all
    end

    def new
        @shop = Shop.new
    end

    def create
        @shop = Shop.new(shop_params)

        if @shop.save
            redirect_to shops_url
        else
            render 'new'
        end
    end

    def update
        if @shop.update(shop_params)
            redirect_to shops_url(@shop)
        else
            render 'edit'
        end
    end

    def destroy
        @shop.destroy
        redirect_to shops_url
    end

    private
    def shop_params
        params.require(:shop).permit(:shopname, :address)
    end

    def set_shop
        @shop = Shop.find(params[:id])
    end

end
