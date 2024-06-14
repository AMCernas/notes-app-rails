class UsersController < ApplicationController

  before_action :authenticate_admin!

    def index
        @users = User.all
      end
    
      def show
        @user = User.find(params[:id])
      end
    
      def new
        @user = User.new
        @user.user_num = generate_unique_user_num
      end
    
      def edit
        @user = User.find(params[:id])
      end
    
      def update
        user = User.find(params[:id])
        user.update(user_params)
    
        redirect_to users_path
      end
    
      def destroy 
        user = User.find(params[:id])
        user.destroy
        redirect_to users_path
      end
    
      def create
        user = User.new(user_params)
        user.save
        redirect_to users_path
      end

      private

      def user_params
          params.require(:user).permit(:name, :status, :user_num)
      end

      def generate_unique_user_num
        loop do
          user_num = rand(100000..999999)
          break user_num unless User.exists?(user_num: user_num)
        end
      end
end
