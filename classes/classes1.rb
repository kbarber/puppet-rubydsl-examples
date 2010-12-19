hostclass :foo do
  notice ["foo"]
end
node "default" do
  create_resource :class, :foo
end
