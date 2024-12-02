data "azurerm_billing_enrollment_account_scope" "billing_account" {
    for_each = var.subscription
    billing_account_name = each.value.billing_account_name
    enrollment_account_name = each.value.enrollment_account_name
}


resource "azurerm_subscription" "subs"{
    for_each = var.subscription
    subscription_name = each.value.subscription_name
    billing_scope_id = data.azurerm_billing_enrollment_account_scope.billing_account[each.key].id
}