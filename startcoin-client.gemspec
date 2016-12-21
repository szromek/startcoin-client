# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'startcoin_client/version'

Gem::Specification.new do |s|
  s.licenses    = ['MIT']
  s.name        = 'startcoin-client'
  s.version     = StartcoinClient::VERSION
  s.authors     = ['Colin MacKenzie IV', 'Krzysztof Szromek']
  s.email       = ['sinisterchipmunk@gmail.com', 'k.szromek@exlabs.co.uk']
  s.homepage    = 'http://github.com/szromek/startcoin-client'
  s.summary     = %q{Provides a Ruby library to the complete Startcoin JSON-RPC API.}
  s.description = 'Provides a Ruby library to the complete Startcoin JSON-RPC API. ' +
                  'Implements all methods listed at ' +
                  'https://en.bitcoin.it/wiki/Original_Bitcoin_client/API_Calls_list ' +
                  'which is the same as Startcoin API. ' +
                  'Lets you set options such as the host and port number, and whether to use SSL.'

  s.rubyforge_project = 'startcoin-client'

  s.files         = `git ls-files`.split('\n')
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split('\n')
  s.executables   = `git ls-files -- bin/*`.split('\n').map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_development_dependency "rake",    '~> 0.9'
  s.add_development_dependency "bundler"
  s.add_development_dependency "rspec",   '~> 2.6'
  s.add_development_dependency "fakeweb", '~> 1.3'
  s.add_development_dependency "coveralls"
  s.add_runtime_dependency "rest-client"
end
