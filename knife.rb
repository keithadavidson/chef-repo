current_dir = File.dirname(__FILE__)
user = ENV['OPSCODE_USER'] || ENV['USER']
log_level                :info
log_location             STDOUT
node_name                user
client_key               "#{ENV['HOME']}/Dropbox/Private/keithadavidson.pem"
validation_client_name   "dfc-validator"
validation_key           "#{ENV['HOME']}/Dropbox/sharedkeys/{ENV['ORGNAME']}-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/{ENV['ORGNAME']}"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
