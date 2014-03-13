class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout :skip_layout_if_pjax

  def skip_layout_if_pjax
    request.headers['X-PJAX'] ? false : nil
  end

end
