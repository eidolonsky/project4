class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private 


  def current_todo_list
    @current_todo_list ||= TodoList.find_by(user_id: session[:id])
  end

end
