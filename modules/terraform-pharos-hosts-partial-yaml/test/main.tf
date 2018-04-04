module "pharos_hosts" {
  source = ".."

  addresses         = ["8.8.8.8", "4.4.4.4"]
  private_addresses = ["10.0.0.1", "10.0.0.2"]

  fields = {
    role         = "worker"
    user         = "ubuntu"
    ssh_key_path = "~/.ssh/my_key"

    labels = {
      ingress = "nginx"
    }
  }
}

output "rendered" {
  value = "${module.pharos_hosts.rendered}"
}
