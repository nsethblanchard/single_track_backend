class Api::StoresController < ApplicationController

    def index
        stores = Store.all
        render json: StoreSerializer.new(stores)
        # could also use below to grab associations...instead of just adding to serializer
        # a little more nesting and specificity this way but complicated for this size application

        # options = {
        #     include: [:customers]
        # }
        # render json: StoreSerializer.new(stores, options)
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
