hostclass :foo do
  notice ["foo"]
end
node "default" do
  include "foo"
end

