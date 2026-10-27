output "instance_id" {
  description = "ID de la instancia EC2"
  value       = module.compute.instance_id
}

output "public_ip" {
  description = "IP publica de la instancia"
  value       = module.compute.public_ip
}