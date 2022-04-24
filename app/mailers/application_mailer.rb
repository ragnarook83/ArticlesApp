# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: ENV.fetch('RAILS_DEFAULT_EMAIL', 'noreply@localhost')
  layout 'mailer'
end
