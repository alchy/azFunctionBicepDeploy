using '../../../deploy-func.bicep'

// cislo funkce v prostredi, kazda funkce by mela mit unikatni v pripade, ze budou pouzivany stejne pojmenovane unikatni zdroje, jako napr. keyvalut
param sequence = '001'

// Načtení globálních parametrů z env.json
var env = loadJsonContent('../env.json')

// Globální parametry převzaté z env.json
param location = env.location
param locationShort = env.locationShort
param environment = env.environment

// Specifické parametry pro tuto šablonu
param appNameShort = 'somefn'
param workloadTags = {
  applicationNameShort: appNameShort
  ownerGroup: 'John Doe'
}

// Ostatní parametry
param use32BitWorkerProcess = false
param ftpsState = 'Disabled'
param linuxFxVersion = 'Python|3.12'
param sku = 'ElasticPremium'            // 'Dynamic'
param skuCode =  'EP1'                  // 'Y1'
param workerSize = 'Small'
param workerSizeId = '0'
param numberOfWorkers = '1'

// ACL pro pristup k funkci
param ipSecurityRestrictions = [
  {
    ipAddress: '0.0.0.0/32'
    action: 'Allow'
    tag: 'Default'
    priority: 300
    name: 'Name'
    description: 'Description'
  }
]

// ACL pro pristup k SCM
param scmIpSecurityRestrictions = []
