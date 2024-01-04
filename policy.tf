resource "azurerm_policy_definition" "example" {
  name                = "restrict-storage-account-location"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "azure-policy-definition"

  policy_rule = <<POLICY_RULE
 {
    "if": {
        "field": "location",
        "equals": "northeurope"
    },
    "then": {
      "effect": "Deny"
    }
  }
POLICY_RULE
}

resource "azurerm_management_group_policy_assignment" "example" {
  for_each             = local.environments
  name                 = "example-policy"
  policy_definition_id = azurerm_policy_definition.example.id
  management_group_id  = azurerm_management_group.managementgroup[each.key].id
}