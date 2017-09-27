User.destroy_all

u1 = User.create!(username: Faker::Pokemon.name, password: "1234567")
u2 = User.create!(username: Faker::Pokemon.name, password: "1234567")
u3 = User.create!(username: Faker::Pokemon.name, password: "1234567")
u4 = User.create!(username: Faker::Pokemon.name, password: "1234567")
u5 = User.create!(username: Faker::Pokemon.name, password: "1234567")
u6 = User.create!(username: Faker::Pokemon.name, password: "1234567")
u7 = User.create!(username: Faker::Pokemon.name, password: "1234567")
u8 = User.create!(username: Faker::Pokemon.name, password: "1234567")
u9 = User.create!(username: Faker::Pokemon.name, password: "1234567")




Cat.destroy_all
colors = %w(black white orange brown)
sex = %w(M F)
def birth_date(yr)
  Faker::Date.between(yr.years.ago, Date.today)
end

cat1 =Cat.create(name: Faker::Cat.name, color: colors.sample, birth_date:birth_date(10),
sex: sex.sample, description: Faker::HowIMetYourMother.quote, user_id: u1.id)
cat2 =Cat.create(name: Faker::Cat.name, color: colors.sample, birth_date:birth_date(3),
sex: sex.sample, description: Faker::HowIMetYourMother.quote, user_id: u2.id)
cat3 =Cat.create(name: Faker::Cat.name, color: colors.sample, birth_date:birth_date(5),
sex: sex.sample, description: Faker::HowIMetYourMother.quote, user_id: u3.id)
cat4 =Cat.create(name: Faker::Cat.name, color: colors.sample, birth_date:birth_date(2),
sex: sex.sample, description: Faker::HowIMetYourMother.quote, user_id: u4.id)
cat5 =Cat.create(name: Faker::Cat.name, color: colors.sample, birth_date:birth_date(1),
sex: sex.sample, description: Faker::HowIMetYourMother.quote, user_id: u5.id)

# :cat_id, :start_date, :end_date, :status
#
# cat_id:, start_date:, end_date:, status:

CatRentalRequest.create(cat_id: cat1.id, start_date: Date.today - 5.days, end_date: Date.today + 5.days, status: "APPROVED", user_id: u1.id)
