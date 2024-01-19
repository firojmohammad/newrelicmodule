module "newrelic" {
  source = "./modules/newrelic"
  count  = var.relic != null ? 1 : 0

  cpu_utiliztion    = var.relic["cpu_utiliztion"]
  memory_utiliztion = var.relic["memory_utiliztion"]
  ecs_pending       = var.newrelic["ecs_pending"]
  cpu_warning       = var.relic["cpu_warning"]
  cpu_critical      = var.relic["cpu_critical"]
  ecs_task_critical = var.relic["ecs_task_critical"]
  alert_name_cpu    = var.relic["alert_name_cpu"]
  alert_name_memory = var.relic["alert_name_memory"]
  alert_ecs_task    = var.relic["alert_ecs_task"]
  policy_name       = var.relic["policy_name"]
  newrelic_region   = var.relic["newrelic_region"]
  api_key           = var.relic["api_key"]
  account_id        = var.relic["account_id"]


}
