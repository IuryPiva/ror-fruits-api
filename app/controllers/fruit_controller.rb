class FruitController < ApplicationController
    before_action :set_fruit, only: [:pick, :drop]

    def index
        fruits = Fruit.all
        render json: fruits
    end

    def pick
        @fruit.on_hand += 1
        @fruit.save

        render json: @fruit
    end

    def drop
        if @fruit.on_hand > 0
            @fruit.on_hand -= 1
            @fruit.save

            render json: @fruit
        else
            render json: { message: 'No items left in basket'}, status: :bad_request
        end  
    end
    
    private
        def set_fruit
            @fruit = Fruit.find(params[:id])
        end
end
