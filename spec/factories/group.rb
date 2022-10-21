FactoryBot.define do
  factory :group do
    sequence :name do |n|
      "Bridge #{n}"
    end
  end
end
