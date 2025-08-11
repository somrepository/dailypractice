module "rgname" {
  source = "../child/RG"
  rg     = var.rg

}

module "vnet" {
  source     = "../child/vnet"
  depends_on = [module.rgname]
  vnet       = var.vnet
}

module "subnetname" {
  source     = "../child/subnet"
  depends_on = [module.vnet]
  subnetname = var.subnetname


}

module "publicip" {
  source     = "../child/publicip"
  depends_on = [module.rgname]
  publicip   = var.publicip

}

module "linixvm" {
  source     = "../child/VM"
  depends_on = [module.subnetname, module.vnet, module.rgname, module.publicip]
  linixvm    = var.linixvm

}






