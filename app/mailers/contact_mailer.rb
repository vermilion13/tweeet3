class ContactMailer < ApplicationMailer

def contact_mail(contact)
 @contact = contact

 mail to: "varm666@mist.dti.ne.jp", subject: "お問い合わせの確認メール"
end

end
