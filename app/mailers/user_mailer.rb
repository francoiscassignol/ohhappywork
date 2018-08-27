class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.survey.subject
  #
  def survey(user, survey)
  	@user = user
    @survey = survey
    

    mail to: @user.email, subject: "Hi #{@user.first_name}, your manager need you !"
  end

  #  def survey
  
  #   @greeting = "Hi"

  #   mail to: "cassignol.fr@gmail.com", subject: "Salut , la formiche mamen ?"
  # end
end
