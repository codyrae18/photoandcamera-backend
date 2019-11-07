class Api::UsersController < ApplicationController
    skip_before_action :authorized, only: [:index, :create, :update, :show]

      def index
        @users = User.all 
        render json: @users
      end
      
      def show
        @user = User.find_by(id: params[:id])
        render json: @user
      end

     
      def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
      end


      def create
        # byebug
        @user = User.create(user_params)
        if @user.valid?
          @token = encode_token(user_id: @user.id)
          render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
        end
      end
    
      def update
        
        @user = User.find(params[:id])
        @user.image.attach(params[:image])
        byebug
        render json: @user.as_json, status: 200
      end
    
      private
      def user_params
        params.require(:user).permit(:id, :name, :username, :password, :password_digest, :description, :image)
      end
    
      def set_user
        @user = user.find(params[:id])
      end

    
end
