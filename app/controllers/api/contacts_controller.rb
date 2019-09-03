class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render 'index.json.jb'
  end

  def create
    @contact = Contact.new(
                            first_name: params[:first_name],
                            last_name: params[:last_name],
                            email: params[:email],
                            phone_number: params[:phone_number]
                          )

    @contact.save
    render 'show.json.jb'
  end

  def show
    @contact = Contact.find(params[:id])
    render 'show.json.jb'
    
  end

  def update
    @contact = Contact.find(params[:id])

    @contact.first_name = params[:first_name] || params.first_name
    @contact.last_name = params[:last_name] || params.last_name
    @contact.email = params[:email] || params.email
    @contact.phone_number = params[:phone_number] || params.phone_number

    @contact.save
    render 'show.json.jb'
    
  end

  def destroy
    @contacts = Contact.find(params[:id])
    @contacts.destroy
    render json: {message: "Successfuly destroyed contact."}
    
  end

end



  




