class PagesController < ApplicationController
  def home
  end

  def about
  end

  def skillset
  end

  def contact
    @contact_form = ContactForm.new(params[:contact_form])
  end

  def create
    @contact_form = ContactForm.new(params[:contact_form])
    @request = request

    respond_to do |format|
      if @contact_form.deliver
        format.html { redirect_to :root, notice: "Thank you." }
      else
        format.html { render :contact, notice: "Something went wrong, please try again." }
      end
    end
  end
end
