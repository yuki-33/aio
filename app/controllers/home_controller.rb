class HomeController < ApplicationController
  def index
    @constructions = Construction.all
  end

  def show
    @construction = Construction.find(params[:id])
  end

  def about
  end

  def privacy
  end

  def contact
    @contact = Contact.new
  end

  def inquiry
    @contact = Contact.new(contact_params)
    if @contact.valid?
      ContactMailer.send_when_submit(@contact).deliver
      redirect_to root_path, notice: "メッセージが送信されました。ご連絡ありがとうございます。"
    else
      render "index"
    end
  end

  private

  def contact_params
    params[:contact].permit(
      :email,
      :name,
      :subject,
      :text
    )
  end

end
