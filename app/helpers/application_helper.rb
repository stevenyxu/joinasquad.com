module ApplicationHelper
  def signed_in_before?
    cookies['last_user_signed_in']
  end
end
