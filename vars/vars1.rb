node "default" do
  # Set
  scope.setvar("asdf", "foo")

  # Get
  a = scope.lookupvar("asdf")
  notice [a]
end
