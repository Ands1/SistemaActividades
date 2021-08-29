puts "Developtment seed"

user = User.create_with(
    :first_name              => "Andres",
    :last_name              => "Alvarado",
    :username              => "Ands",
    :password              => "123456",
    :password_confirmation => "123456",
    :role              => "SuperUsuario"
).find_or_create_by(
    :email                 => "1azands@gmail.com",
)

user.save!