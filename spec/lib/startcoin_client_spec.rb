require 'spec_helper'

describe StartcoinClient do
  before :each do
    FakeWeb.register_uri(:post, "http://user:pass@localhost:8332", :response => fixture('getbalance'))
  end

  it "as a function" do
    cli = StartcoinClient($user, $pass)
    cli.balance.should == 0.001
  end

  it "DSL, included" do
    class << self
      include StartcoinClient
    end

    username $user
    password $pass

    balance.should == 0.001
  end

  it "DSL, extended" do
    class << self
      include StartcoinClient

      username $user
      password $pass

      balance.should == 0.001
    end
  end
end
