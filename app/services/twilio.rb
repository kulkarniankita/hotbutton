def subscribe()
    
    require 'twilio-ruby'
    account_id = 'AC7e360eaa4567230b22fd5156242eb307'
    account_oath = 'c15ab4ac583cf6767683328987e81261'
    client = Twilio::REST::Client.new(account_id, account_oath     )
    
    jsonData = "msg"
    
    client.account.messages.create(
        :from => 6475577425, #Twilio number
        :to => 6477064846,
        :body => jsonData
      ) 
  
end

def sendMsg()
    
    require 'twilio-ruby'
    account_id = 'AC7e360eaa4567230b22fd5156242eb307'
    account_oath = 'c15ab4ac583cf6767683328987e81261'
    client = Twilio::REST::Client.new(account_id, account_oath     )
    jsonData = "msg"
    client.account.messages.create(
        :from => '', #user_number
        :to => 6475577425, #Twilio number
        :body => jsonData
      )     
      
end