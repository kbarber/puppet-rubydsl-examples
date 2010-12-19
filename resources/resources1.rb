define "foo" do
  notice [@name]
end

node "default" do
  create_resource :foo, "foo"
end
