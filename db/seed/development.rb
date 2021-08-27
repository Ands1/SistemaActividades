puts "Developtment seed"

user = User.create(
    :first_name            => "Andres",
    :last_name             => "Alvarado",
    :username              => "Ands",
    :role                  => "Superuser",
    :email                 => "andres@gmail.com",
    :password              => "123456",
    :password_confirmation => "123456"
)

user.save!