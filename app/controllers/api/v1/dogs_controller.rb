module Api
  module V1

    class DogsController < Api::V1::ApplicationController    
      before_action :set_dog, only: %i[ show update destroy ]    

      # GET /dogs
      def index
        @dogs = Dog.paginate(page: params[:page], per_page: 20)      
        render json: @dogs
      end

      # GET /dogs/1
      def show
        render json: @dog
      end

      # POST /dogs
      def create
        @dog = Dog.new(dog_params)

        if @dog.save
          render json: @dog, status: :created
        else
          render json: @dog.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /dogs/1
      def update
        if @dog.update(dog_params)
          render json: @dog
        else
          render json: @dog.errors, status: :unprocessable_entity
        end
      end

      # DELETE /dogs/1
      def destroy
        @dog.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_dog
          @dog = Dog.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def dog_params
          params.require(:dog).permit(:license, :breed, :color, :name, :zip, :expiry)
        end
    end

  end

end
