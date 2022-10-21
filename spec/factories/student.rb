FactoryBot.define do
  factory :student do
    name { 'Joe' }
    password { '12345678' }
    group_id { Group.last.id }
    sequence :email do |n|
      "#{name}.#{n}@example.com"
    end
  end
end
