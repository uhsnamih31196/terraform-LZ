output "subscription_name" {
  value       = [for subscription in azurerm_subscription.subs : subscription.subscription_name]
  description = "subscription name"
  
}
