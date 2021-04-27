module SessionsHelper
    def log_in(admin)
        session[:admin_id] = admin.id
    end

    def current_admin
        @current_admin ||= Admin.find_by(id: session[:admin_id])
    end

    def log_out
        @current_admin = nil
        session[:admin_id] = nil
    end

    def admin_check
        if current_admin
            flash[:info] = 'You are already logged in!'
            redirect_to root_path
        end
    end
end
