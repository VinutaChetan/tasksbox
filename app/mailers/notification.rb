class Notification < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification.completed.subject
  
  def completed(newtask,user)
    @task = newtask
    @user = user

    mail to: "#{newtask.project.client.email}",cc: "#{user.email}",subject: "#{newtask.title} has been completed!"
    #@greeting = "Hi" 
  end

  def incompleted(newtask,user)
    @task =newtask
    @user =user

  mail to: c
end

  def greeting(announcement)
    @announcement=announcement
    @recepients = Client.where('user_id =?',@announcement.user_id).pluck(:email)


    mail to: @recepients.join(","),subject: "#{announcement.title} has been sent!"
   end 
end
