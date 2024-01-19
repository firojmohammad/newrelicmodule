variable "cpu_utiliztion" {
  type        = list(any)
  description = "List of cpu_utiliztion metrics "
}
variable "memory_utiliztion" {
  type        = list(any)
  description = "List of memory_utiliztion metrics "
}
variable "ecs_pending" {
  type        = list(any)
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
