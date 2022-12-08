class ApplicationController < ActionController::Base

    before_action :set_current_user
    before_action :protect_pages

    class NotAutorizedError < StandardError; end
    
    rescue_from NotAutorizedError do
        redirect_to turns_path, alert: t('common.not_auhorized') 
    end
    def set_current_user
        Current.user = User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def protect_pages
        redirect_to new_session_path unless Current.user
    end

    def authorize! turn
        is_allowed = turn.user_id == Current.user.id
        raise NotAutorizedError unless is_allowed
        #redirect_to turns_path, alert: t('common.not_auhorized') unless is_allowed
    end

end
