require "test_helper"

class ReproMailerTest < ActionMailer::TestCase
  def subject
    @subject ||= ReproMailer.repro_email.deliver_now
  end

  test "sends email with valid URL query strings" do
    assert subject.body.to_s.match?("Test Title")
    assert subject.to == [ "test@example.com" ]
    puts subject.body

    assert_not subject.body.to_s.match?("&amp;") # fails
  end
end
