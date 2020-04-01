aws_region            = "eu-west-1"
user_secret_profile   = "cg-iac"

vpc_id                = "vpc-4fac482b"
availability_zones    = ["eu-west-1a","eu-west-1b","eu-west-1c"]
clients_subnet_ids = ["subnet-3c69ca58","subnet-0df5207b","subnet-523cdc0a"]
cluster_subnet_ids = ["subnet-515e9235","subnet-8c03f5fa","subnet-fdc8c6a4"]

# the ability to add additional existing security groups. In our case
# we have consul running as agents on the box
additional_security_groups = []

es_cluster            = "cg-es7-front-cluster"
environment           = "stage"
key_name              = "elasticsearch"

lb_port = 80
health_check_type = "EC2"
# client nodes have nginx installed on them, these credentials are used for basic auth
client_user = "cg_admin"
public_facing = "true"

data_instance_type = "c5.2xlarge"
master_instance_type = "c5.large"
ebs_optimized = "true"

elasticsearch_volume_size = "100"
volume_encryption = true
elasticsearch_data_dir = "/opt/elasticsearch/data"
elasticsearch_logs_dir = "/var/log/elasticsearch"

data_heap_size = "8g"
master_heap_size = "2g"
client_heap_size = "1g"

#masters_count = 1
#datas_count = 1
#clients_count = 1

masters_count = 3
datas_count = 2
clients_count = 1

security_enabled = "false"
monitoring_enabled = "true"

xpack_monitoring_host = "self"
s3_backup_bucket = "arn:aws:s3:::test-cg-elastic-backup"



