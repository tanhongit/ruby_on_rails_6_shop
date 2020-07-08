class ApplicationMailbox < ActionMailbox::Base
  # routing /something/i => :somewhere
  # routing "tanhongitverifi@gmail.com" => :support
  routing "henrywingard@my.smccd.edu" => :support
end
