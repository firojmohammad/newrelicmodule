module "newrelic" {
  source = "./modules/newrelic"
  count  = var.newrelic != null ? 1 : 0

  cpu_utiliztion    = var.newrelic["cpu_utiliztion"]
  memory_utiliztion = var.newrelic["memory_utiliztion"]
  ecs_pending       = var.newrelic["ecs_pending"]
  cpu_warning       = var.newrelic["cpu_warning"]
  cpu_critical      = var.newrelic["cpu_critical"]
  ecs_task_critical = var.newrelic["ecs_task_critical"]
  alert_name_cpu    = var.newrelic["alert_name_cpu"]
  alert_name_memory = var.newrelic["alert_name_memory"]
  alert_ecs_task    = var.newrelic["alert_ecs_task"]
  policy_name       = var.newrelic["policy_name"]
  newrelic_region   = var.newrelic["newrelic_region"]
  api_key           = var.newrelic["api_key"]
  account_id        = var.newrelic["account_id"]


}