hostclass :foo, :arguments => {"myparam" => nil} do
  notice [scope.lookupvar("myparam")]
end
node "default" do
  create_resource :class, :foo, :myparam => "foo"
end
