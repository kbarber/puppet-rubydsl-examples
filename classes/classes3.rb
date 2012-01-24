hostclass :foo, :arguments => {"myparam" => nil, "myparam2" => AST::String.new(:value => "default_value")} do
  notice [scope.lookupvar("myparam2")]
end
node "default" do
  create_resource :class, :foo, :myparam => "foo"
end
