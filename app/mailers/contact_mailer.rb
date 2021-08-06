class ContactMailer < ApplicationMailer
    def contact_email
        @contact = params[:contact]
        puts 'este es el contacto ', @contact
        mail(to: ENV["ADMIN_EMAIL"], subject: 'Contact from portfolio page')
    end
end
