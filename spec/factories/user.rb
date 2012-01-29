Factory.define :user do |u|
  u.email { Faker::Internet.email }
  u.password 'password'
end

Factory.define :admin, :class => User do |u|
  u.email { Faker::Internet.email }
  u.password 'password'
  u.admin true
end
