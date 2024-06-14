class SessionsController < ApplicationController
    include SessionsHelper

    def new
    end
    
    def create
        user = User.find_by(user_num: params[:session][:user_num])
        if user
            log_in user
            redirect_to posts_path        
        else
          flash[:alert] = 'Wrong number or password'
        end
    end

    def destroy
        log_out
        redirect_to root_path
    end
    
end
