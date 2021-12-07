apartment1 = Apartment.find_or_create_by!(number: 3, area: 23, floor: 1, amount_of_room: 2)
apartment2 = Apartment.find_or_create_by!(number: 4, area: 24, floor: 2, amount_of_room: 3)
apartment3 = Apartment.find_or_create_by!(number: 5, area: 35, floor: 3, amount_of_room: 5)

user1 = User.find_or_create_by!(name: 'Jhon', surename: 'Adam', ssn: 22346, apartment_id: apartment1.id)
user2 = User.find_or_create_by!(name: 'Paul', surename: 'Roa', ssn: 44889, apartment_id: apartment2.id)
user3 = User.find_or_create_by!(name: 'Simmon', surename: 'Miago', ssn: 998743, apartment_id: apartment3.id)
