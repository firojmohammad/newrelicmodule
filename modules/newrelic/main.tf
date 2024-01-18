variable "cpu_warning" {}
variable "cpu_critical" {}
variable "alert_name_cpu" {}
variable "alert_name_memory" {}
variable "cpu_utiliztion" {}
variable "ecs_pending" {}
variable "memory_utiliztion" {}
variable "ecs_task_critical" {}
variable "alert_ecs_task" {}
variable "policy_name" {}
resource "newrelic_alert_policy" "jm-policy" {
  name = var.policy_name
  incident_preference = "PER_POLICY"
}

resource "newrelic_nrql_alert_condition" "CPUUtilization" {
  account_id                     = var.account_id
  policy_id                      = newrelic_alert_policy.jm-policy.id
  type                           = "static"
  name                           = var.alert_name_cpu
  enabled                        = true
  violation_time_limit_seconds   = 3600
  fill_option                    = "static"
  fill_value                     = 1.0
  aggregation_window             = 60
  aggregation_method             = "event_flow"
  aggregation_delay              = 120
  expiration_duration            = 120
  open_violation_on_expiration   = true
  close_violations_on_expiration = true
  slide_by                       = 30

  nrql {
    query = var.cpu_utiliztion
  }

  critical {
    operator              = "above"
    threshold             = var.cpu_critical
    threshold_duration    = 300
    threshold_occurrences = "ALL"
  }

  warning {
    operator              = "above"
    threshold             = var.cpu_warning
    threshold_duration    = 300
    threshold_occurrences = "ALL"
  }
}
resource "newrelic_nrql_alert_condition" "MemoryUtilization" {
  account_id                     = var.account_id
  policy_id                      = newrelic_alert_policy.jm-policy.id
  type                           = "static"
  name                           = var.alert_name_memory
  enabled                        = true
  violation_time_limit_seconds   = 3600
  fill_option                    = "static"
  fill_value                     = 1.0
  aggregation_window             = 60
  aggregation_method             = "event_flow"
  aggregation_delay              = 120
  expiration_duration            = 120
  open_violation_on_expiration   = true
  close_violations_on_expiration = true
  slide_by                       = 30

  nrql {
    query = var.memory_utiliztion
  }

  critical {
    operator              = "above"
    threshold             = var.cpu_critical
    threshold_duration    = 300
    threshold_occurrences = "ALL"
  }

  warning {
    operator              = "above"
    threshold             = var.cpu_warning
    threshold_duration    = 300
    threshold_occurrences = "ALL"
  }
}

resource "newrelic_nrql_alert_condition" "ECSPendingTask" {
  account_id                     = var.account_id
  policy_id                      = newrelic_alert_policy.jm-policy.id
  type                           = "static"
  name                           = var.alert_ecs_task
  enabled                        = true
  violation_time_limit_seconds   = 3600
  fill_option                    = "static"
  fill_value                     = 1.0
  aggregation_window             = 60
  aggregation_method             = "event_flow"
  aggregation_delay              = 120
  expiration_duration            = 120
  open_violation_on_expiration   = true
  close_violations_on_expiration = true
  slide_by                       = 30

  nrql {
    query = var.ecs_pending
  }

  critical {
    operator              = "above"
    threshold             = var.ecs_task_critical
    threshold_duration    = 300
    threshold_occurrences = "ALL"
  }
}
