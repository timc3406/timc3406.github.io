# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a = Account.where("email = 'timc3406@gmail.com'")

if !a.exists?
  account = Account.new(email: 'timc3406@email.com', encrypted_password: '$2a$11$ZvcK9vwCtpKa4t5Z/rvmk.mPxNLVhkx6wq.ToXcumbc.GJx4Iq1Uy')
  account.save(validate: false)
end
