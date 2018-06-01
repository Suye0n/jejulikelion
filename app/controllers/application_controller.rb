class ApplicationController < ActionController::Base
    rescue_from CanCan::AccessDenied do |e|
        respond_to do |format|
            format.json{}
            format.js{}
            format.html {redirect_to root_path, notice: e.message}
        end
    end
end
