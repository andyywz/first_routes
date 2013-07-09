class ContactsController < ApplicationController
  before_filter :authenticate_user

  def index
    @contacts = User.find(params[:user_id]).contacts
    render :json => @contacts
  end

  def create
    contact = Contact.new(params[:contact])
    if contact.save!
      render :json => contact
    else
      render :json => user.errors, status: :unprocessable_entity
    end
  end

  def show
    contact = Contact.find(params[:id])
    render :json => contact
  end

  def update
    contact = Contact.find(params[:id])
    contact.update_attributes!(params[:contact])
    render :json => contact
  end

  def destroy
    contact = Contact.find(params[:id])
    # should need to check authorization
    contact.destroy
    render :json => {message: "Destroyed user #{contact.id}"}
  end
end
