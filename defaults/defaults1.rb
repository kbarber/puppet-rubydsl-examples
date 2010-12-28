#!/usr/bin/env puppet

node "default" do
  # Defining
  scope.setdefaults(:notify, 
    [Puppet::Parser::Resource::Param.new(:name => "message",:value => "foo")]
  )

  # Using
  notify "foo"
end
