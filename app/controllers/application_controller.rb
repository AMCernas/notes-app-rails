class ApplicationController < ActionController::Base
    include SessionsHelper

    def after_sign_in_path_for(resource)
        users_path
    end

    def after_sign_out_path_for(resource)
        root_path
    end

    private

    def logged_in_user
        unless logged_in?
          flash[:alert] = "Please log in."
          redirect_to login_url
        end
      end
end
