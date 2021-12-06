json.partial! partial: 'api/v1/users/user', locals: {user: @user}
if @user.apartment.present?
  json.partial! 'api/v1/apartments/apartment', apartment: @user.apartment
end
