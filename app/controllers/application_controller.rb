class ApplicationController < ActionController::Base
  # rescue_from Exception, with: :email_error

  def email_error
    if Logger::Severity::FATAL
      ApplicationMailer.error_notification_email.deliver_later
    end
    # redirect_to store_index_url
  end
end
