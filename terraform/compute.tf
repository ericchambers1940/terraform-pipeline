terraform {
  required_providers {
    virtualbox = {
      source = "terra-farm/virtualbox"
      version = "0.2.1"
    }
  }
}

# There are currently no configuration options for the provider itself.

resource "virtualbox_vm" "vm" {
  count     = 2
  name      = format("node-%02d", count.index + 1)
  cpus      = 2
  memory    = "512 mib"

  network_adapter {
    type           = "hostonly"
    host_interface = "vboxnet1"
  }
}s