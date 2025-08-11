rg = {
  rg1 = {

    rgname     = "mandeeprg"
    rglocation = "westus"
  }
}

vnet = {
  vnnet1 = {
    vnetname     = "mandeepvnet"
    vnetlocation = "westus"
    rgname       = "mandeeprg"
  }
}

subnetname = {

  subnetname1 = {
    subnetname = "mandeepsubnet"
    rgname     = "mandeeprg"
    vnetname   = "mandeepvnet"
  }
}

publicip = {
  publicip = {
    publicipname     = "mandeeppublicip"
    rgname           = "mandeeprg"
    publiciplocation = "westus"
  }
}



linixvm = {
  linixvm1 = {

    nicname      = "mandeepnic"
    niclocation  = "westus"
    rgname       = "mandeeprg"
    publicipname = "mandeeppublicip"
    subnetname   = "mandeepsubnet"
    vmname       = "mandeepvm"
    rgname       = "mandeeprg"
    vmlocation   = "westus"
    vnetname     = "mandeepvnet"

  }
}



