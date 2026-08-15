module "rg" {
  source = "../../Child_Module/RG"
  rgs    = var.rgs
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../../Child_Module/Vnet"
  vnets      = var.vnets

}

module "subnet" {
  depends_on = [module.rg, module.vnet]
  source     = "../../Child_Module/Subnet"
  subnets    = var.subnets


}

module "pip" {
  depends_on = [module.rg]
  source     = "../../Child_Module/PIP"
  pips       = var.pips

}

module "nic" {
  depends_on = [module.rg, module.vnet, module.pip, module.subnet]
  source     = "../../Child_Module/NIC"
  nics       = var.nics

}