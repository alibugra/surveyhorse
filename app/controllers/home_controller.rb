class HomeController < ApplicationController
  def index
  end

  def forgotten_password(receiver)
    require 'mail'

    options = { :address              => "smtp.gmail.com",
                :port                 => 587,
                :user_name            => 'mail',
                :password             => 'password',
                :authentication       => 'plain',
                :enable_starttls_auto => true  }

    Mail.defaults do
      delivery_method :smtp, options
    end

    Mail.deliver do
      to receiver
      from 'test@gmail.com'
      subject 'test'
      body 'test'
    end
  end
end
