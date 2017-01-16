require 'spec_helper'

describe StartcoinClient::API do
  subject { StartcoinClient::API.new(:user => $user, :pass => $pass) }

  it "should have default host, port, ssl, proxy" do
    subject.host.should == 'localhost'
    subject.port.should == 8332
    subject.ssl?.should be_false
    subject.proxy.should be_nil
  end

  it "should accept host, port, ssl, proxy options" do
    req = StartcoinClient::API.new(:user => $user,
                                   :pass => $pass,
                                   :host => 'example.com',
                                   :port => 1234,
                                   :ssl => true,
                                   :proxy => 'proxy.com')
    req.host.should == 'example.com'
    req.port.should == 1234
    req.proxy.should == 'proxy.com'
    req.ssl?.should be_true
  end

  it "should build an options hash" do
    subject.to_hash.should == {
      :user => $user,
      :pass => $pass,
      :host => 'localhost',
      :port => 8332,
      :ssl => false,
      :proxy => nil
    }
  end
end
