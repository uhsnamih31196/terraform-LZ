variable "subscription" {
  type        = map(object(
  {
    subscription_name = string
    billing_account_name = string
    enrollment_account_name = string
  }

  ))
  
}
