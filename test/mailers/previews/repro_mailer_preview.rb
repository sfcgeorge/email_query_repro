# Preview all emails at http://localhost:3000/rails/mailers/repro_mailer
class ReproMailerPreview < ActionMailer::Preview
  def repro_email
    ReproMailer.repro_email
  end
end
