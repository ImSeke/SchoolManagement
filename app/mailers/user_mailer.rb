class UserMailer < ApplicationMailer
    default from: "SchoolManagement@example.com"
    layout "mailer"

    def welcome_email
        @user = params[:user]
        @url = 'http://localhost:3000/users/password/new'
        mail(to: @user.email, subject: 'Welcome to SchoolManagement')
    end

    def daily_schedule_email
        @user = params[:user]
        mail(to: @user.email, subject: 'This is your schedule for the day')
    end
end