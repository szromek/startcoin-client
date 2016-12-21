module StartcoinClient
  autoload :Client,  'startcoin_client/client'
  autoload :API,     'startcoin_client/api'
  autoload :Request, 'startcoin_client/request'
  autoload :RPC,     'startcoin_client/rpc'
  autoload :Errors,  'startcoin_client/errors'
  autoload :Version, 'startcoin_client/version'
  autoload :VERSION, 'startcoin_client/version'
  autoload :DSL,     'startcoin_client/dsl'

  def self.included(base)
    base.send(:include, StartcoinClient::DSL)
    base.send(:extend,  StartcoinClient::DSL)
  end
end

def StartcoinClient(user, pass, options = {})
  ::StartcoinClient::Client.new(user, pass, options)
end
