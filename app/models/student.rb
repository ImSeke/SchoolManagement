class Student < User
    validates :name, :email, presence: true
    belongs_to :group
end
