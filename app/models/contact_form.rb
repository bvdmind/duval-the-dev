class ContactForm < MailForm::Base
  attribute :first_name,      :validate => true
  attribute :last_name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  attribute :message
  attribute :nickname,  :captcha  => true

  def full_name
    first_name + last_name
  end

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Portfolio Website Contact",
      :to => "duvalwcash@gmail.com",
      :from => %("#{full_name}" <#{email}>)
    }
  end
end
