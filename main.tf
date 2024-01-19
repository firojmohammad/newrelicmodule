module "newrelic" {
  source = "./modules/newrelic"
  cpu_utiliztion    = var.cpu_utiliztion
  memory_utiliztion = var.memory_utiliztion"]
  ecs_pending       = var.ecs_pending
  cpu_warning       = var.cpu_warning
  cpu_critical      = var.cpu_critical
  ecs_task_critical = var.ecs_task_critical
  alert_name_cpu    = var.alert_name_cpu
  alert_name_memory = var.alert_name_memory
  alert_ecs_task    = var.alert_ecs_task
  policy_name       = var.policy_name
  newrelic_region   = var.newrelic_region
  api_key           = var.api_key
  account_id        = var.account_id


}
