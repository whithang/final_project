Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'
   provider :facebook, '1673643282849183', '2c4ec9afd5d3d821232cacb8cdc3de49',:scope => 'user_friends,email,user_about_me',info_fields: 'name,email'

   provider :google_oauth2, '6536301833-0a5h2f9oidjmn4khue677flm2jcvln7a.apps.googleusercontent.com', 'jEARX0bGyWxjoAY1QoBPIbFe', skip_jwt: true
   provider :linkedin,'75yppv29dyjenx' ,'udtZmrlRzBxAnHQ5',:scope => 'r_basicprofile r_emailaddress', :fields => ["id", "email-address", "first-name", "last-name", "picture-url", "public-profile-url"]
end
