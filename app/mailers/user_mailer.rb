class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.survey.subject
  #
  def survey(user)
  	@user = user
    @greeting = "Hi"

    mail to: "cassignol.fr@gmail.com", subject: "Salut #{@user.first_name}, la formiche mamen ?"
  end
end
