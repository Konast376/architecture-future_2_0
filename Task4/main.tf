# Демонстрационная конфигурация OpenTofu (локальная симуляция)
# Не требует внешних провайдеров – использует встроенный ресурс terraform_data

locals {
  project     = "Buduschee 2.0"
  environment = "dev"
  timestamp   = timestamp()
}

# Имитация NAT-инстанса
resource "terraform_data" "nat" {
  triggers_replace = [local.timestamp]

  provisioner "local-exec" {
    command = "echo 'NAT instance created' > nat.txt"
  }
}

# Имитация Kafka брокеров (количество задаётся переменной)
resource "terraform_data" "kafka" {
  count = var.kafka_count
  triggers_replace = [local.timestamp]

  provisioner "local-exec" {
    command = "echo 'Kafka broker ${count.index + 1} created' >> kafka.txt"
  }
}

# Имитация базы данных
resource "terraform_data" "db" {
  triggers_replace = [local.timestamp]

  provisioner "local-exec" {
    command = "echo 'PostgreSQL DB created' > db.txt"
  }
}

# Имитация приложений
resource "terraform_data" "app" {
  count = var.app_count
  triggers_replace = [local.timestamp]

  provisioner "local-exec" {
    command = "echo 'Application ${count.index + 1} created' >> app.txt"
  }
}

# Имитация мониторинга
resource "terraform_data" "monitoring" {
  triggers_replace = [local.timestamp]

  provisioner "local-exec" {
    command = "echo 'Monitoring instance created' > monitoring.txt"
  }
}

# Имитация балансировщика
resource "terraform_data" "lb" {
  triggers_replace = [local.timestamp]

  provisioner "local-exec" {
    command = "echo 'Load balancer created' > lb.txt"
  }
}

# Вывод симулированных параметров (соответствуют реальной архитектуре)
output "deployment_summary" {
  value = {
    project     = local.project
    environment = local.environment
    timestamp   = local.timestamp
    status      = "Инфраструктура успешно развёрнута (симуляция)."
    components = {
      vpc     = "10.0.0.0/16 (симуляция)"
      nat_ip  = "10.0.1.100 (симуляция)"
      lb_ip   = "10.0.1.200 (симуляция)"
      kafka   = ["10.0.2.10", "10.0.2.11", "10.0.2.12"]
      db      = "10.0.2.20"
      app     = ["10.0.2.30", "10.0.2.31"]
    }
    message = "Все ресурсы были бы созданы в облаке. Это демонстрационный вывод."
  }
}