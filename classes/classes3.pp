class foo ($myparam, $myparam2 = "default_value") {
  notice($myparam2)
}
node "default" {
  class { "foo": myparam => "foo" }
}
