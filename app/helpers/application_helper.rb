module ApplicationHelper
  module SessionsHelper
    private # helper methods

      def logged_in?
        current_user ? true : false
        # !!current_user (does the same thing as the line above)
      end

      def current_user
        if session[:current_user_id]
          @current_user ||= User.find(session[:current_user_id])
          # Memoization -  Cheap Caching.
          # "||=" checks if there is a current user and returns it before querying to find a user
          # if @current_user
          #   return @current_user
          # else
          #   @current_user = User.find(session[:current_user_id])
          # end
        end
      end
    
      def login(user)
        session[:current_user_id] = @user.id
      end
  end
end