class UserMailer < ActionMailer::Base
  default from: "babsonhonors@gmail.com"

  def welcome_email(user)
  	@user = user
  	@url = "www.babsonhonors.com/signin"
  	mail(:to => user.email, :subject => "Account Created")
  end

  def faculty_rec_email(user, faculty_email, app)
  	@user = user
    @app = app.id
  	@url = "www.babsonhonors.com/users/new_faculty_user"
  	mail(:to => faculty_email, :subject => "Honors Program Faculty Rec Request")
  end
end
