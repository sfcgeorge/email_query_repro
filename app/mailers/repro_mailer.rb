class ReproMailer < ApplicationMailer
  def repro_email
    mail(
      to:      "test@example.com",
      from:    "noreply@example.com",
      subject: "Test Subject"
    )
  end
end
