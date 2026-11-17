output "id" {
  description = "AKS 클러스터 ID"
  value       = azurerm_kubernetes_cluster.this.id
}

output "name" {
  description = "AKS 클러스터 이름 (az aks get-credentials 용)"
  value       = azurerm_kubernetes_cluster.this.name
}
