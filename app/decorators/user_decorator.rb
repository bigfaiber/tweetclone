class UserDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def user_name
    "@" + username
  end
end