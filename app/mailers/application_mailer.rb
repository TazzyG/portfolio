class ApplicationMailer < ActionMailer::Base
	include SendGrid
  default from: 'gloge@haathi-consulting.com'
  layout 'mailer'
end
