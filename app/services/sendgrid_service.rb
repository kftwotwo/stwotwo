class SendgridService
  def send_email
    send_grid = SendGrid::API.new(api_key: ENV['SENDGRID_KEY'])
    response = send_grid.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
  end
end
