FactoryBot.define do
  factory :lesson do
    location { 'Kholinar' }
    sequence :hour do |n|
      "Fri, 14 Oct 2022 #{n}:00:00 +0000"
    end
    day { 'monday' }
    teacher_id { Teacher.last.id }
    group_id { Group.last.id }
    course_id { Course.last.id }
  end
end
