module ApplicationHelper
    include SessionsHelper

    def require_admin
        if current_admin.nil?
            redirect_to login_path
            flash[:danger] = 'You are not an admin'
        end
    end
end
