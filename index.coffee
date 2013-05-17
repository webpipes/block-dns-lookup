Block = require('node-webpipe').Block
dns   = require 'dns'

new Block ->
  @name "DNS Lookup"
  @description "Determine whether or not a domain exists."
  @input "domain", "string", "A domain to lookup."
  @output "ok", "bool", "Returns true of false if lookup succeeds."
  @handle (inputs, callback) ->
    dns.lookup inputs.domain, (err, address, family) ->
      outputs =
        ok: if err then false else true
      callback false, outputs
  @listen()
