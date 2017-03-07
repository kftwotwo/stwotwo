require "rails_helper"

describe OnBoardMailer do
  describe "welcome_email" do
    let(:mail) { OnBoardMailer.welcome_email }

    # it "renders the headers" do
    #   expect(mail.subject).to eq("Welcome email")
    #   expect(mail.to).to eq(["#{@lead.email}"])
    #   expect(mail.from).to eq(["kftwotwo@gmail.com"])
    # end
    #
    # it "renders the body" do
    #   expect(mail.body.encoded).to match("Hi")
    # end
  end

end
