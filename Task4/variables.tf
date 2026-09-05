# Переменные – все имеют значения по умолчанию, но для terraform.tfvars мы зададим их явно

variable "yc_token" {
  description = "OAuth token for Yandex Cloud"
  sensitive   = true
  default     = "dummy"
}

variable "yc_cloud_id" {
  description = "Yandex Cloud cloud ID"
  default     = "dummy"
}

variable "yc_folder_id" {
  description = "Yandex Cloud folder ID"
  default     = "dummy"
}

variable "zone" {
  description = "Availability zone"
  default     = "ru-central1-a"
}

variable "kafka_count" {
  description = "Number of Kafka brokers"
  default     = 3
}

variable "kafka_cpu" {
  description = "CPU cores for Kafka VM"
  default     = 4
}

variable "kafka_memory" {
  description = "Memory (GB) for Kafka VM"
  default     = 8
}

variable "kafka_disk_size" {
  description = "Size (GB) of data disk for Kafka"
  default     = 100
}

variable "db_cpu" {
  description = "CPU cores for DB VM"
  default     = 4
}

variable "db_memory" {
  description = "Memory (GB) for DB VM"
  default     = 16
}

variable "db_disk_size" {
  description = "Size (GB) of data disk for DB"
  default     = 200
}

variable "app_count" {
  description = "Number of application VMs"
  default     = 2
}

variable "app_cpu" {
  description = "CPU cores for application VM"
  default     = 2
}

variable "app_memory" {
  description = "Memory (GB) for application VM"
  default     = 4
}