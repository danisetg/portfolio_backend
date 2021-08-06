class ContactsController < ApplicationController
    def create
        @contact = contact_params
        ContactMailer.with(contact: @contact).contact_email.deliver_now
        render json: @contact, status: :ok
    end

    def contact_params
        params.require(:contact).permit(:email, :message)
    end
end
