class ContactMailer < ApplicationMailer
  def send_when_submit(contact) #メソッドに対して引数を設定
    @contact = contact
    mail to: "info@f-copo.com", subject:'AIO.JAPANのホームページよりメッセージが届きました'
  end
end
