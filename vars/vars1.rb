node "default" do
  scope.setvar("asdf", "foo")
  a = scope.lookupvar("asdf")
  notice [a]
end
