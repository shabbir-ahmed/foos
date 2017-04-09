class UserMailer < ApplicationMailer
    default from: 'notifications@example.com'
    def welcome_email(user)
        @user = user
        @url  = 'https://food-awesome-shabbir-ahmed.c9users.io/accounts/login'
        mail(to: @user.email, subject: 'Welcome to Food Awesome')
    end
end
