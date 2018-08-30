class ContactMailer < ApplicationMailer

def contact_mail(current_user, tweeet)
  @tweeet = tweeet
  mail to: current_user.email, subject: "登録メール", body: "呟きを登録したデース！"
end

end
