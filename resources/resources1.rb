define "foo" do
  notice [@name]
end

#node "default" do
  Puppet::DSL::ResourceAPI::create_resource :foo, "foo"
#end
