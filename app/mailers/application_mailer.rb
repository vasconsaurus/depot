class ApplicationMailer < ActionMailer::Base
  default from: ENV['SECRET_EMAIL']
  layout 'mailer'

  def error_notification_email
    mail to: ENV['SECRET_EMAIL'], subject: 'An error has occourred'
  end
end
