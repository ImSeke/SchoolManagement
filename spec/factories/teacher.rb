FactoryBot.define do
    factory :teacher do
      name { "Joe" }
      password { "12345678" }
      sequence :email do |n|
        "#{name}.#{n}@example.com"
      end
    end
  end