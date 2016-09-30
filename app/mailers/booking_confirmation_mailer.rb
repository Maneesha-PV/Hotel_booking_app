class BookingConfirmationMailer < ApplicationMailer
	default from: 'pvmaneesha2@gmail.com'
	def confirm_email(user)
		@user = user
		mail(to: @user.email,subject: 'sample email')
	end
end
