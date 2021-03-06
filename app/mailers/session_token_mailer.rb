class SessionTokenMailer < ApplicationMailer
  def notify
    @token = params[:token]
    message_id_for "session_tokens/#{@token.id}"
    mail(
      to: @token.email,
      subject: make_subject(),
    )
  end
end
