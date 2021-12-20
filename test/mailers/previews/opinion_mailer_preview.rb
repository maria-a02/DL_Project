# Preview all emails at http://localhost:3000/rails/mailers/opinion_mailer
class OpinionMailerPreview < ActionMailer::Preview
    def new_opinion_email
    # Set up a temporary order for the preview
    opinion = Opinion.new(title: "Test", comment: "Test comment")
    OpinionMailer.with(opinion: opinion).new_opinion_email
    end
end
