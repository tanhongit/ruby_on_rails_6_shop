class ApplicationMailbox < ActionMailbox::Base
  # routing /something/i => :somewhere
  # routing "tanhongitverifi@gmail.com" => :support
  routing "tanhongitverifi@gmail.com" => :support
end
