#
# Cookbook Name:: ew-openvpn
# Attributes:: openvpn

# default['openvpn']['local']           = node['ipaddress']
# default['openvpn']['proto']           = 'udp'
# default['openvpn']['port']            = '1194'
# default['openvpn']['type']            = 'server'
# default['openvpn']['subnet']          = '10.8.0.0'
# default['openvpn']['netmask']         = '255.255.0.0'
# default['openvpn']['gateway']         = "vpn.#{node["domain"]}"
# default['openvpn']['log']             = '/var/log/openvpn.log'
# default['openvpn']['key_dir']         = '/etc/openvpn/keys'
# default['openvpn']['signing_ca_key']  = "#{node["openvpn"]["key_dir"]}/ca.key"
# default['openvpn']['signing_ca_cert'] = "#{node["openvpn"]["key_dir"]}/ca.crt"
# default['openvpn']['routes']          = []
# default['openvpn']['script_security'] = 1
# # set this to false if you want to just use the lwrp
# default['openvpn']['configure_default_server'] = true
# default['openvpn']['user']            = 'nobody'
# default['openvpn']['group']           = case node['platform_family']
#                                         when 'rhel'
#                                           'nobody'
#                                         else
#                                           'nogroup'
#                                         end

# # Used by helper library to generate certificates/keys
# default['openvpn']['key']['ca_expire'] = 3650
# default['openvpn']['key']['expire']    = 3650
default['openvpn']['key']['size']      = 2048
# default['openvpn']['key']['country']   = 'US'
# default['openvpn']['key']['province']  = 'CA'
# default['openvpn']['key']['city']      = 'SanFrancisco'
# default['openvpn']['key']['org']       = 'Fort-Funston'
# default['openvpn']['key']['email']     = 'me@example.com'