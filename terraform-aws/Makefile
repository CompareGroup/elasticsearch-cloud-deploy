# .PHONEY: all network infrastructure domain remote-state install destroy
#
# all: domain

init:
	@terraform init

plan:
	@echo "Plan ELK stack in $(ENV)"
	@terraform plan -var-file workspace-variables/$(ENV).tfvars

install:
	@echo "Install ELK stack in $(ENV)"
	@terraform apply -var-file workspace-variables/$(ENV).tfvars

destroy:
	@echo "Destroy ELK stack in $(ENV)"
	@terraform destroy -var-file workspace-variables/$(ENV).tfvars
