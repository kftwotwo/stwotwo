# Preview all emails at http://localhost:3000/rails/mailers/on_board
class OnBoardPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/on_board/welcome_email
  def welcome_email
    OnBoardMailer.welcome_email
  end

end
