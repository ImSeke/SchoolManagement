FactoryBot.define do
  factory :course do
    sequence :name do |n|
      "Course #{n}"
    end
  end
end
