class AdminController < ApplicationController
  def index
    @contacts = Contact.all.order("last_name")
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new contact_params
    if @contact.save
      redirect_to admin_path
    else
      render :new
    end
  end

  def show
    @contact = Contact.find params[:id]
  end

  def edit
    @contact = Contact.find params[:id]
  end

  def update
    @contact = Contact.find params[:id]
    if @contact.update contact_params
      redirect_to contact_path(id: @contact.id)
    else
      render :edit
    end
  end

  def destroy
    @contact = Contact.find params[:id]
    @contact.destroy
    redirect_to admin_path
  end

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :phone, :company_name)
  end
end
