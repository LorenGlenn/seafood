FactoryGirl.define do
  factory :admin, class: User do
    email('testemail@email.com')
    password(123123)
    admin true
  end

  factory :dish do
    name('food')
    cost(3)
    image('.png')
  end
end
