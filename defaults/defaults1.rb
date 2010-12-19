node "default" do
  scope.setdefaults(:notify, 
    [Puppet::Parser::Resource::Param.new(:name => "message",:value => "foo")]
  )
  notify "foo"
end
