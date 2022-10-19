module ControllerMacros
    def login_teacher
        before(:each) do
            @request.env["devise.mapping"] = Devise.mappings[:teacher]
            teacher = FactoryBot.create(:teacher)
            sign_in teacher
        end
    end
end