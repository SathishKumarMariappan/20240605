from azure.identity import DefaultAzureCredential
from azure.mgmt.resource import ResourceManagementClient
from azure.mgmt.resource.resources.models import ResourceGroup

subscription_id = '30f35e9a-4e7f-4d77-81d5-777bec490223'
credential = DefaultAzureCredential()

resource_client = ResourceManagementClient(credential, subscription_id)

def delete_all_resource_groups():
    resource_groups = resource_client.resource_groups.list()

    print("Deleting resource groups...")

    for rg in resource_groups:
        print(f"Deleting resource group: {rg.name}")
        try:
            resource_client.resource_groups.begin_delete(rg.name)
            print(f"Resource group '{rg.name}' deletion initiated.")
        except Exception as e:
            print(f"Failed to delete resource group '{rg.name}': {str(e)}")

if __name__ == "__main__":
    delete_all_resource_groups()
