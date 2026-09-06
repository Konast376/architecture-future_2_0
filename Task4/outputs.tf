# Эти outputs дублируют часть информации из deployment_summary,
# но сохранены для наглядности и соответствия исходной структуре.

output "nat_public_ip" {
  value = "10.0.1.100 (симуляция)"
  description = "Public IP of NAT instance"
}

output "load_balancer_ip" {
  value = "10.0.1.200 (симуляция)"
  description = "External IP of the application load balancer"
}

output "kafka_private_ips" {
  value = ["10.0.2.10", "10.0.2.11", "10.0.2.12"]
  description = "Private IPs of Kafka brokers"
}

output "db_private_ip" {
  value = "10.0.2.20"
  description = "Private IP of the database VM"
}

output "app_private_ips" {
  value = ["10.0.2.30", "10.0.2.31"]
  description = "Private IPs of application VMs"
}