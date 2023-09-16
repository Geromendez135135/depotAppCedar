class ApplicationMailbox < ActionMailbox::Base 
  routing "support@example.com" => :support #esto rutea los correos que lleguen al pasado por parametro a la funcion process dentro del support_mailbox.rb
end
