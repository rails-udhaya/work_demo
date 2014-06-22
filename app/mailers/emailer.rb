class Emailer < ActionMailer::Base
    default from: "udhayakumar.dhanabalan@gmail.com"
    
  def check_email(to_which)
    @url_checked = to_which
    @subject = "some one is testing"
    mail(:to => "udhayakumar.dhanabalan@gmail.com", :subject => @subject)
  end
  
end
