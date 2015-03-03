require 'net/ssh'

HOST = '<url or IP address>'
USER = '<username>'

# This example assumes that you have already setup SSH keys

Net::SSH.start(HOST, USER) do |ssh|
  result = ssh.exec!('ls -al')
  puts result
end