# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "gcosare"
client_key               "#{current_dir}/gcosare.pem"
chef_server_url          "https://georgec5.mylabserver.com/organizations/wgu"
cookbook_path            ["#{current_dir}/../cookbooks"]
