using '../../../deploy-func.bicep'

// Načtení globálních parametrů z env.json
var env = loadJsonContent('../env.json')

// Globální parametry převzaté z env.json
param location = env.location
param locationShort = env.locationShort
param environment = env.environment

// Specifické parametry pro tuto šablonu
param appNameShort = 'fn100'
param sequence = '100'
param workloadTags = {
  applicationNameShort: appNameShort
  ownerGroup: 'John Doe'
}

// Ostatní parametry
param use32BitWorkerProcess = false
param ftpsState = 'Disabled'
param linuxFxVersion = 'Python|3.10'
param sku = 'Dynamic'
param skuCode = 'Y1'
param workerSize = 'Small'
param workerSizeId = '0'
param numberOfWorkers = '1'

// ACL pro pristup k funkci
param ipSecurityRestrictions = []

// ACL pro pristup k SCM
param scmIpSecurityRestrictions = []
