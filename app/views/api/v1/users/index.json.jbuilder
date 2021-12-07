if @users then
  json.users do
    json.array! @users do |user|
      json.partial! partial: 'api/v1/users/user', locals: {user: user}
      if user.apartment.present?
        json.apartment_number user.apartment.number
        json.apartment_floor user.apartment.floor
        json.amount_of_room  user.apartment.amount_of_room
        json.apartment_area  user.apartment.area
      end
    end
  end
end
