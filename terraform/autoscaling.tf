# ECS service auto scaling

variable "autoscale_min" {
  description = "Minimum autoscale (number of tasks)"
  default     = "1"
}

variable "autoscale_max" {
  description = "Maximum autoscale (number of tasks)"
  default     = "4"
}

variable "autoscale_desired" {
  description = "Desired number of tasks to run initially"
  default     = "2"
}

