class Admin < User
    validates :name, :email, presence: true
end
