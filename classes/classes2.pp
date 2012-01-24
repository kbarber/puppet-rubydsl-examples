class foo ($myparam) {
  notice($myparam)
}
node "default" {
  class { "foo": myparam => "foo" }
}
