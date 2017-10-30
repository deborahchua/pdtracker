class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def set_attachment_name(name)
    escaped = URI.encode(name)
    response.headers['Content-Disposition'] = "attachment; filename*=UTF-8''#{escaped}"
  end
end
