class ApplicationController < ActionController::Base
  rescue_from Exception, with: :email_error

  def email_error
    logger.error 'An error occourred'
    ApplicationMailer.error_notification_email.deliver_later
  end
end
