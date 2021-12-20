class OpinionMailer < ApplicationMailer
    def new_opinion_email
    @opinion = params[:opinion]

    mail(to: "laferiaapp21@gmail.com", subject: "Hay una nueva opinión!")
  end
end
