resource "ibm_iam_access_group" "res_ag_5" {
  name        = var.ag5
  description = "Access group for Cloud Object Storage administrators Test"
}

resource "ibm_iam_access_group_policy" "res_ag5_policy1" {
  access_group_id = ibm_iam_access_group.res_ag_5.id
  roles           = ["Administrator", "Manager"]
  resources {
    service = "cloud-object-storage"
  }
}