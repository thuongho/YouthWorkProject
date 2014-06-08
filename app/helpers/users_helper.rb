module UsersHelper
  def current_user?(user)
    minor == current_user
  end
end
