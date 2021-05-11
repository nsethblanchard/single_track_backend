class Api::StoresController < ApplicationController

    def index
        stores = Store.all
        render json: stores
    end

    def create
        store = Store.new(store_params)

    end

    private

    def store_params
        params.require(:store).permit(:name, :phone, :city)
    end
end
