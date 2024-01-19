variable "cpu_utiliztion" {
  type        = string
  description = "List of cpu_utiliztion metrics "
}
variable "memory_utiliztion" {
  type        = string
  description = "List of memory_utiliztion metrics "
}
variable "ecs_pending" {
  type        = string
  description = "List of ecs_pending "
}
variable "cpu_warning" {
  type        = number
  description = "cpu_warning  reservation"
  default     = 80
}
variable "cpu_critical" {
  type        = number
  description = "cpu_critical  reservation"
  default     = 90
}
variable "ecs_task_critical" {
  type        = number
  description = "ecs_task_critical  reservation"
  default     = 1
}

variable "alert_name_cpu" {
  type        = string
  description = "alert_name_cpu name"
}
variable "alert_name_memory" {
  type        = string
  description = "alert_name_memory name"
}
variable "alert_ecs_task" {
  type        = string
  description = "alert_ecs_task name"
}
variable "policy_name" {
  type        = string
  description = "policy_name name"
}
variable "newrelic_region" {
  type        = string
  description = "newrelic_region "
  default     = "EU"
}

variable "api_key" {
  type        = string
  description = "api_key name"

variable "account_id" {
  type        = number
  description = "account_id reservation"
 
}
