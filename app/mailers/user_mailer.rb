class UserMailer < ActionMailer::Base
  default from: "babsonhonors@gmail.com"

  def welcome_email(user)
  	@user = user
  	@url = "http://localhost:3000"
  	mail(:to => user.email, :subject => "Application Submitted")
  end

  def faculty_rec_email(user, faculty_email)
  	@user = user
  	@url = "http://localhost:3000/users/new"
  	mail(:to => faculty_email, :subject => "Honors Program Faculty Rec Request")
  end
end
