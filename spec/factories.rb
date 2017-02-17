FactoryGirl.define do
  factory(:user) do
    email('testemail@email.com')
    password(123123)
  end
end
