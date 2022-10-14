class Teacher < User
    validates :name, :email, presence: true
    has_many :lessons

    def schedule
        week = %w[Monday Tuesday Wednesday Thursday Friday]

        day = week[(Date.today.wday-1)]

        Lesson.where(day: day, teacher_id: self.id).order(:hour)
    end
    
end
