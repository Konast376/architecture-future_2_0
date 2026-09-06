# Файл terraform.tfvars – значения переменных для локальной симуляции
# Все значения соответствуют значениям по умолчанию, но указаны явно.

yc_token     = "dummy"
yc_cloud_id  = "dummy"
yc_folder_id = "dummy"
zone         = "ru-central1-a"

kafka_count   = 3
kafka_cpu     = 4
kafka_memory  = 8
kafka_disk_size = 100

db_cpu        = 4
db_memory     = 16
db_disk_size  = 200

app_count     = 2
app_cpu       = 2
app_memory    = 4