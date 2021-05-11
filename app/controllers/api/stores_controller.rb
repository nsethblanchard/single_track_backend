class Api::StoresController < ApplicationController

    def index
        stores = Store.all
        render json: StoreSerializer.new(stores)
    end

    def create
        store = Store.new(store_params)
        if store.save
            render json: store, status: :accepted
        else
            render json: {errors: store.errors.full_messages}, status: :unprocessable_entity
            # server understands context and syntax was correct but was unable to process (error 422 -unprocessable_entity)
        end

    end

    private

    def store_params
        params.require(:store).permit(:name, :phone, :city)
    end
end
