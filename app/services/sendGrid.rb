require "httparty"
require "json"
url = "https://sendgrid.com/api/mail.send.json"

#to_email
smtpapi_header = { 
  "to" => [ "kulkarni.ankita09@gmail.com", "k@adamworrall.com" ]
}
jsonData = "hey"

response = HTTParty.post url, :body => {
  "api_user" => "kulkarniankita09",
  "api_key" => "happymonkey9",
  "to" => "override.this@email.com",
  "from" => "codecademy@sendgrid.me", #from_email
  "subject" => "Using the SMTP API header for email awesomesauce",
  "html" => jsonData,
  "x-smtpapi" => JSON.generate(smtpapi_header)
}

response.body