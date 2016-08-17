ActionMailer::Base.smtp_settings = { 
   :address => "smtp.gmail.com",
   :port => 587,
   :domain => "gmail.com",
   :authentication => "plain",
   :enable_starttls_auto => true,
   :user_name => "vinuta.udagatti@gmail.com",
   :password => "vinuchandru",
   :openssl_verify_mode  => 'none'
}