# White Label Communications CPaas API Documentation Bash client

## Overview

This is a Bash client script for accessing White Label Communications CPaas API Documentation service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x 

# Print the list of operations available on the service
$ ./ -h

# Print the service description
$ ./ --about

# Print detailed information about specific operation
$ ./ <operationId> -h

# Make GET request
./ --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
 -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Make POST request with form data
$  --host <hostname> <operationId> key1:=value1 key2:=value2 key3:=23

# Preview the cURL command without actually executing it
$  --host http://<hostname>:<port> --dry-run <operationid>

```

## Docker image

You can easily create a Docker image containing a preconfigured environment
for using the REST Bash client including working autocompletion and short
welcome message with basic instructions, using the generated Dockerfile:

```shell
docker build -t my-rest-client .
docker run -it my-rest-client
```

By default you will be logged into a Zsh environment which has much more
advanced auto completion, but you can switch to Bash, where basic autocompletion
is also available.

## Shell completion

### Bash

The generated bash-completion script can be either directly loaded to the current Bash session using:

```shell
source .bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp .bash-completion /etc/bash-completion.d/
```

#### OS X

On OSX you might need to install bash-completion using Homebrew:

```shell
brew install bash-completion
```

and add the following to the `~/.bashrc`:

```shell
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
```

### Zsh

In Zsh, the generated `_` Zsh completion file must be copied to one of the folders under `$FPATH` variable.

## Documentation for API Endpoints

All URIs are relative to **

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AccountApi* | [**v1AccountAccountidChildrenGet**](docs/AccountApi.md#v1accountaccountidchildrenget) | **GET** /v1/account/{accountid}/children | Get Sub Account List
*AccountApi* | [**v1AccountAccountidDelete**](docs/AccountApi.md#v1accountaccountiddelete) | **DELETE** /v1/account/{accountid} | Delete Account
*AccountApi* | [**v1AccountAccountidDnsrecordGet**](docs/AccountApi.md#v1accountaccountiddnsrecordget) | **GET** /v1/account/{accountid}/dnsrecord | Get Account DNS Record
*AccountApi* | [**v1AccountAccountidDnsrecordPost**](docs/AccountApi.md#v1accountaccountiddnsrecordpost) | **POST** /v1/account/{accountid}/dnsrecord | Create Account DNS Record
*AccountApi* | [**v1AccountAccountidDnsrecordPut**](docs/AccountApi.md#v1accountaccountiddnsrecordput) | **PUT** /v1/account/{accountid}/dnsrecord | Convert Account DNS Record
*AccountApi* | [**v1AccountAccountidGet**](docs/AccountApi.md#v1accountaccountidget) | **GET** /v1/account/{accountid} | Get Account Details
*AccountApi* | [**v1AccountAccountidLimitGet**](docs/AccountApi.md#v1accountaccountidlimitget) | **GET** /v1/account/{accountid}/limit | Get Account Limits
*AccountApi* | [**v1AccountAccountidLimitPut**](docs/AccountApi.md#v1accountaccountidlimitput) | **PUT** /v1/account/{accountid}/limit | Set Account Limits
*AccountApi* | [**v1AccountAccountidPost**](docs/AccountApi.md#v1accountaccountidpost) | **POST** /v1/account/{accountid} | Create Sub Account
*AccountApi* | [**v1AccountAccountidProvisioningdetailsGet**](docs/AccountApi.md#v1accountaccountidprovisioningdetailsget) | **GET** /v1/account/{accountid}/provisioningdetails | Get Account Provisioning Details
*AccountApi* | [**v1AccountAccountidProvisioningdetailsResetpwPut**](docs/AccountApi.md#v1accountaccountidprovisioningdetailsresetpwput) | **PUT** /v1/account/{accountid}/provisioningdetails/resetpw | Reset the provisioning details password.
*AccountApi* | [**v1AccountAccountidPut**](docs/AccountApi.md#v1accountaccountidput) | **PUT** /v1/account/{accountid} | Update Account
*AccountApi* | [**v1AccountApikeyGet**](docs/AccountApi.md#v1accountapikeyget) | **GET** /v1/account/apikey | 
*AccountApi* | [**v1AccountGet**](docs/AccountApi.md#v1accountget) | **GET** /v1/account | Get Account List
*AccountApi* | [**v1AccountPost**](docs/AccountApi.md#v1accountpost) | **POST** /v1/account | Create Account
*CPaaSManagementApi* | [**v1MgmtUserGet**](docs/CPaaSManagementApi.md#v1mgmtuserget) | **GET** /v1/mgmt/user | Get All CPaaS Users
*CPaaSManagementApi* | [**v1MgmtUserPost**](docs/CPaaSManagementApi.md#v1mgmtuserpost) | **POST** /v1/mgmt/user | Invite CPaaS User
*CPaaSManagementApi* | [**v1MgmtUserUserIDDelete**](docs/CPaaSManagementApi.md#v1mgmtuseruseriddelete) | **DELETE** /v1/mgmt/user/{userID} | Delete CPaaS User
*CPaaSManagementApi* | [**v1MgmtUserUserIDGet**](docs/CPaaSManagementApi.md#v1mgmtuseruseridget) | **GET** /v1/mgmt/user/{userID} | Get CPaaS User Details
*CPaaSManagementApi* | [**v1MgmtUserUserIDPut**](docs/CPaaSManagementApi.md#v1mgmtuseruseridput) | **PUT** /v1/mgmt/user/{userID} | Update CPaaS User Role
*CallParkApi* | [**v1AccountAccountIDParkedcallGet**](docs/CallParkApi.md#v1accountaccountidparkedcallget) | **GET** /v1/account/{accountID}/parkedcall | Get Call Park List
*CallQueueManagementApi* | [**v1AccountAccountIDCallqueueGet**](docs/CallQueueManagementApi.md#v1accountaccountidcallqueueget) | **GET** /v1/account/{accountID}/callqueue | Get Call Queues
*CallQueueManagementApi* | [**v1AccountAccountIDCallqueuePost**](docs/CallQueueManagementApi.md#v1accountaccountidcallqueuepost) | **POST** /v1/account/{accountID}/callqueue | Create Call Queue
*CallQueueManagementApi* | [**v1AccountAccountIDCallqueueQueueIDDelete**](docs/CallQueueManagementApi.md#v1accountaccountidcallqueuequeueiddelete) | **DELETE** /v1/account/{accountID}/callqueue/{queueID} | Delete Call Queue
*CallQueueManagementApi* | [**v1AccountAccountIDCallqueueQueueIDGet**](docs/CallQueueManagementApi.md#v1accountaccountidcallqueuequeueidget) | **GET** /v1/account/{accountID}/callqueue/{queueID} | Get Call Queue Details
*CallQueueManagementApi* | [**v1AccountAccountIDCallqueueQueueIDPut**](docs/CallQueueManagementApi.md#v1accountaccountidcallqueuequeueidput) | **PUT** /v1/account/{accountID}/callqueue/{queueID} | Update Call Queue
*CallQueueManagementApi* | [**v1AccountAccountIDCallqueueQueueIDStatusGet**](docs/CallQueueManagementApi.md#v1accountaccountidcallqueuequeueidstatusget) | **GET** /v1/account/{accountID}/callqueue/{queueID}/status | Get Call Queue Status
*CallQueueManagementApi* | [**v1AccountAccountIDQueuerolesGet**](docs/CallQueueManagementApi.md#v1accountaccountidqueuerolesget) | **GET** /v1/account/{accountID}/queueroles | Get Queue Roles of Account
*CallQueueManagementApi* | [**v1AccountAccountIDQueuerolesQueueIDPost**](docs/CallQueueManagementApi.md#v1accountaccountidqueuerolesqueueidpost) | **POST** /v1/account/{accountID}/queueroles/{queueID} | Assign Queue Role to Call Queue
*CallQueueMembershipApi* | [**v1AccountAccountIDQueuemembershipPost**](docs/CallQueueMembershipApi.md#v1accountaccountidqueuemembershippost) | **POST** /v1/account/{accountID}/queuemembership | Grant Queue Membership to User
*CallQueueMembershipApi* | [**v1AccountAccountIDQueuemembershipRecipientIDDisablePost**](docs/CallQueueMembershipApi.md#v1accountaccountidqueuemembershiprecipientiddisablepost) | **POST** /v1/account/{accountID}/queuemembership/{recipientID}/disable | Disable Queue Membership
*CallQueueMembershipApi* | [**v1AccountAccountIDQueuemembershipRecipientIDEnablePost**](docs/CallQueueMembershipApi.md#v1accountaccountidqueuemembershiprecipientidenablepost) | **POST** /v1/account/{accountID}/queuemembership/{recipientID}/enable | Enable Queue Membership
*CallQueueRecipientApi* | [**v1AccountAccountIDLoginrecipientRecipientIDPost**](docs/CallQueueRecipientApi.md#v1accountaccountidloginrecipientrecipientidpost) | **POST** /v1/account/{accountID}/loginrecipient/{recipientID} | Login as Recipient
*CallQueueRecipientApi* | [**v1AccountAccountIDQueuerecipientGet**](docs/CallQueueRecipientApi.md#v1accountaccountidqueuerecipientget) | **GET** /v1/account/{accountID}/queuerecipient | Change Recipient Status
*CallQueueRecipientApi* | [**v1AccountAccountIDRecipientRecipientIDStatusPost**](docs/CallQueueRecipientApi.md#v1accountaccountidrecipientrecipientidstatuspost) | **POST** /v1/account/{accountID}/recipient/{recipientID}/status | Get Recipient List
*CallRecordingApi* | [**v1AccountAccountIDRecordingGet**](docs/CallRecordingApi.md#v1accountaccountidrecordingget) | **GET** /v1/account/{accountID}/recording | Get Account Call Recording
*CallRecordingApi* | [**v1AccountAccountIDRecordingRecordingIDDelete**](docs/CallRecordingApi.md#v1accountaccountidrecordingrecordingiddelete) | **DELETE** /v1/account/{accountID}/recording/{recordingID} | Delete Call Recording
*CallRecordingApi* | [**v1AccountAccountIDRecordingRecordingIDGet**](docs/CallRecordingApi.md#v1accountaccountidrecordingrecordingidget) | **GET** /v1/account/{accountID}/recording/{recordingID} | Get Call Recording Details
*CallRecordingApi* | [**v1AccountAccountIDUserUserIDRecordingGet**](docs/CallRecordingApi.md#v1accountaccountiduseruseridrecordingget) | **GET** /v1/account/{accountID}/user/{userID}/recording | Get User Call Recording
*CallflowApi* | [**v1AccountAccountIDCallflowCallflowIDDelete**](docs/CallflowApi.md#v1accountaccountidcallflowcallflowiddelete) | **DELETE** /v1/account/{accountID}/callflow/{callflowID} | Delete Call Group
*CallflowApi* | [**v1AccountAccountIDCallflowCallflowIDGet**](docs/CallflowApi.md#v1accountaccountidcallflowcallflowidget) | **GET** /v1/account/{accountID}/callflow/{callflowID} | Get Call Group Details
*CallflowApi* | [**v1AccountAccountIDCallflowCallflowIDPut**](docs/CallflowApi.md#v1accountaccountidcallflowcallflowidput) | **PUT** /v1/account/{accountID}/callflow/{callflowID} | Update Call Group
*CallflowApi* | [**v1AccountAccountIDCallflowGet**](docs/CallflowApi.md#v1accountaccountidcallflowget) | **GET** /v1/account/{accountID}/callflow | Get Callflow List
*CallflowApi* | [**v1AccountAccountIDCallflowPost**](docs/CallflowApi.md#v1accountaccountidcallflowpost) | **POST** /v1/account/{accountID}/callflow | Create Call Group
*ChannelApi* | [**v1AccountAccountIDChannelChannelIDGet**](docs/ChannelApi.md#v1accountaccountidchannelchannelidget) | **GET** /v1/account/{accountID}/channel/{channelID} | Get Channel Details
*ChannelApi* | [**v1AccountAccountIDChannelChannelIDPost**](docs/ChannelApi.md#v1accountaccountidchannelchannelidpost) | **POST** /v1/account/{accountID}/channel/{channelID} | Associate Action to Channel
*ChannelApi* | [**v1AccountAccountIDChannelChannelIDPut**](docs/ChannelApi.md#v1accountaccountidchannelchannelidput) | **PUT** /v1/account/{accountID}/channel/{channelID} | Associate Metaflow to Channel
*ChannelApi* | [**v1AccountAccountIDChannelGet**](docs/ChannelApi.md#v1accountaccountidchannelget) | **GET** /v1/account/{accountID}/channel | Get Account Channel List
*ChannelApi* | [**v1AccountAccountIDDeviceDeviceIDChannelGet**](docs/ChannelApi.md#v1accountaccountiddevicedeviceidchannelget) | **GET** /v1/account/{accountID}/device/{deviceID}/channel | Get Device Channel List
*ChannelApi* | [**v1AccountAccountIDUserUserIDChannelGet**](docs/ChannelApi.md#v1accountaccountiduseruseridchannelget) | **GET** /v1/account/{accountID}/user/{userID}/channel | Get User Channel List
*DataApi* | [**v1AccountAccountIDCdrCdrIDGet**](docs/DataApi.md#v1accountaccountidcdrcdridget) | **GET** /v1/account/{accountID}/cdr/{cdrID} | Get CDR Details
*DataApi* | [**v1AccountAccountIDCdrGet**](docs/DataApi.md#v1accountaccountidcdrget) | **GET** /v1/account/{accountID}/cdr | Get CDR List
*DataApi* | [**v1DataCallDailySummaryGet**](docs/DataApi.md#v1datacalldailysummaryget) | **GET** /v1/data/call_daily_summary | Get Call Daily Summary List
*DataApi* | [**v1DataCallDetailGet**](docs/DataApi.md#v1datacalldetailget) | **GET** /v1/data/call_detail | Get Call Detail List
*DataApi* | [**v1DataCallMonthlySummaryGet**](docs/DataApi.md#v1datacallmonthlysummaryget) | **GET** /v1/data/call_monthly_summary | Get Call Detail List
*DataApi* | [**v1DataEndpointListGet**](docs/DataApi.md#v1dataendpointlistget) | **GET** /v1/data/endpoint_list | Get Endpoint List
*DataApi* | [**v1DataEventDailySummaryGet**](docs/DataApi.md#v1dataeventdailysummaryget) | **GET** /v1/data/event_daily_summary | Get Event Daily Summary List
*DataApi* | [**v1DataEventDetailGet**](docs/DataApi.md#v1dataeventdetailget) | **GET** /v1/data/event_detail | Get Event Details
*DataApi* | [**v1DataEventMonthlySummaryGet**](docs/DataApi.md#v1dataeventmonthlysummaryget) | **GET** /v1/data/event_monthly_summary | Get Event Monthly Summary List
*DataApi* | [**v1DataFeatureDailySummaryGet**](docs/DataApi.md#v1datafeaturedailysummaryget) | **GET** /v1/data/feature_daily_summary | Get Feature Daily Summary List
*DataApi* | [**v1DataFeatureMonthlySummaryGet**](docs/DataApi.md#v1datafeaturemonthlysummaryget) | **GET** /v1/data/feature_monthly_summary | Get Feature Monthly Summary List
*DeviceApi* | [**v1AccountAccountidDeviceDeviceidDelete**](docs/DeviceApi.md#v1accountaccountiddevicedeviceiddelete) | **DELETE** /v1/account/{accountid}/device/{deviceid} | Delete Device
*DeviceApi* | [**v1AccountAccountidDeviceDeviceidGet**](docs/DeviceApi.md#v1accountaccountiddevicedeviceidget) | **GET** /v1/account/{accountid}/device/{deviceid} | Get Device Details
*DeviceApi* | [**v1AccountAccountidDeviceDeviceidPut**](docs/DeviceApi.md#v1accountaccountiddevicedeviceidput) | **PUT** /v1/account/{accountid}/device/{deviceid} | Update Device
*DeviceApi* | [**v1AccountAccountidDeviceDeviceidRebootPost**](docs/DeviceApi.md#v1accountaccountiddevicedeviceidrebootpost) | **POST** /v1/account/{accountid}/device/{deviceid}/reboot | Reboot Device
*DeviceApi* | [**v1AccountAccountidDeviceGet**](docs/DeviceApi.md#v1accountaccountiddeviceget) | **GET** /v1/account/{accountid}/device | Get Device List
*DeviceApi* | [**v1AccountAccountidDevicePost**](docs/DeviceApi.md#v1accountaccountiddevicepost) | **POST** /v1/account/{accountid}/device | Create Device
*DeviceApi* | [**v1AccountAccountidDeviceStatusGet**](docs/DeviceApi.md#v1accountaccountiddevicestatusget) | **GET** /v1/account/{accountid}/device/status | Get Device Status
*E911Api* | [**v1E911Get**](docs/E911Api.md#v1e911get) | **GET** /v1/e911 | Get E911 List
*E911Api* | [**v1E911LocationLocationIDActivatePut**](docs/E911Api.md#v1e911locationlocationidactivateput) | **PUT** /v1/e911/location/{locationID}/activate | Activate E911 Location
*E911Api* | [**v1E911LocationLocationIDDelete**](docs/E911Api.md#v1e911locationlocationiddelete) | **DELETE** /v1/e911/location/{locationID} | Delete E911 Location
*E911Api* | [**v1E911LocationValidatePut**](docs/E911Api.md#v1e911locationvalidateput) | **PUT** /v1/e911/location/validate | Validate a Location
*E911Api* | [**v1E911PhoneNumberDelete**](docs/E911Api.md#v1e911phonenumberdelete) | **DELETE** /v1/e911/{phoneNumber} | Delete E911 Phone Number
*E911Api* | [**v1E911PhoneNumberLocationActiveGet**](docs/E911Api.md#v1e911phonenumberlocationactiveget) | **GET** /v1/e911/{phoneNumber}/location/active | Get Actvie Location for a Phone Number
*E911Api* | [**v1E911PhoneNumberLocationGet**](docs/E911Api.md#v1e911phonenumberlocationget) | **GET** /v1/e911/{phoneNumber}/location | Get Location List for Phone Number
*E911Api* | [**v1E911Post**](docs/E911Api.md#v1e911post) | **POST** /v1/e911 | Create an E911 Location
*GroupApi* | [**v1AccountAccountIDGroupGet**](docs/GroupApi.md#v1accountaccountidgroupget) | **GET** /v1/account/{accountID}/group | Get Group List
*GroupApi* | [**v1AccountAccountIDGroupGroupIDDelete**](docs/GroupApi.md#v1accountaccountidgroupgroupiddelete) | **DELETE** /v1/account/{accountID}/group/{groupID} | Delete Group
*GroupApi* | [**v1AccountAccountIDGroupGroupIDGet**](docs/GroupApi.md#v1accountaccountidgroupgroupidget) | **GET** /v1/account/{accountID}/group/{groupID} | Get Group Details
*GroupApi* | [**v1AccountAccountIDGroupGroupIDPut**](docs/GroupApi.md#v1accountaccountidgroupgroupidput) | **PUT** /v1/account/{accountID}/group/{groupID} | Update Group
*GroupApi* | [**v1AccountAccountIDGroupPost**](docs/GroupApi.md#v1accountaccountidgrouppost) | **POST** /v1/account/{accountID}/group | Create Group
*MediaApi* | [**v1AccountAccountIDMediaMediaIDFileGet**](docs/MediaApi.md#v1accountaccountidmediamediaidfileget) | **GET** /v1/account/{accountID}/media/{mediaID}/file | Get Media File
*MediaApi* | [**v1AccountAccountIDMediaMediaIDFilePost**](docs/MediaApi.md#v1accountaccountidmediamediaidfilepost) | **POST** /v1/account/{accountID}/media/{mediaID}/file | Add Media File
*MediaApi* | [**v1AccountAccountidMediaGet**](docs/MediaApi.md#v1accountaccountidmediaget) | **GET** /v1/account/{accountid}/media | Get Media List
*MediaApi* | [**v1AccountAccountidMediaMediaidDelete**](docs/MediaApi.md#v1accountaccountidmediamediaiddelete) | **DELETE** /v1/account/{accountid}/media/{mediaid} | Delete Media
*MediaApi* | [**v1AccountAccountidMediaMediaidGet**](docs/MediaApi.md#v1accountaccountidmediamediaidget) | **GET** /v1/account/{accountid}/media/{mediaid} | Get Media Details
*MediaApi* | [**v1AccountAccountidMediaPost**](docs/MediaApi.md#v1accountaccountidmediapost) | **POST** /v1/account/{accountid}/media | Create Media
*MenuApi* | [**v1AccountAccountIDMenuGet**](docs/MenuApi.md#v1accountaccountidmenuget) | **GET** /v1/account/{accountID}/menu | Get Menu List
*MenuApi* | [**v1AccountAccountIDMenuMenuIDDelete**](docs/MenuApi.md#v1accountaccountidmenumenuiddelete) | **DELETE** /v1/account/{accountID}/menu/{menuID} | Delete Menu
*MenuApi* | [**v1AccountAccountIDMenuMenuIDGet**](docs/MenuApi.md#v1accountaccountidmenumenuidget) | **GET** /v1/account/{accountID}/menu/{menuID} | Get Menu Details
*MenuApi* | [**v1AccountAccountIDMenuMenuIDPut**](docs/MenuApi.md#v1accountaccountidmenumenuidput) | **PUT** /v1/account/{accountID}/menu/{menuID} | Update Menu
*MenuApi* | [**v1AccountAccountIDMenuPost**](docs/MenuApi.md#v1accountaccountidmenupost) | **POST** /v1/account/{accountID}/menu | Create Menu
*MetaflowApi* | [**v1AccountAccountIDDeviceDeviceIDMetaflowDelete**](docs/MetaflowApi.md#v1accountaccountiddevicedeviceidmetaflowdelete) | **DELETE** /v1/account/{accountID}/device/{deviceID}/metaflow | Delete Device Metaflow
*MetaflowApi* | [**v1AccountAccountIDDeviceDeviceIDMetaflowGet**](docs/MetaflowApi.md#v1accountaccountiddevicedeviceidmetaflowget) | **GET** /v1/account/{accountID}/device/{deviceID}/metaflow | Get Device Metaflow List
*MetaflowApi* | [**v1AccountAccountIDDeviceDeviceIDMetaflowPost**](docs/MetaflowApi.md#v1accountaccountiddevicedeviceidmetaflowpost) | **POST** /v1/account/{accountID}/device/{deviceID}/metaflow | Create Device Metaflow
*MetaflowApi* | [**v1AccountAccountIDMetaflowDelete**](docs/MetaflowApi.md#v1accountaccountidmetaflowdelete) | **DELETE** /v1/account/{accountID}/metaflow | Delete Account Metaflow
*MetaflowApi* | [**v1AccountAccountIDMetaflowGet**](docs/MetaflowApi.md#v1accountaccountidmetaflowget) | **GET** /v1/account/{accountID}/metaflow | Get Account Metaflow List
*MetaflowApi* | [**v1AccountAccountIDMetaflowPost**](docs/MetaflowApi.md#v1accountaccountidmetaflowpost) | **POST** /v1/account/{accountID}/metaflow | Create Account Metaflow
*MetaflowApi* | [**v1AccountAccountIDUserUserIDMetaflowDelete**](docs/MetaflowApi.md#v1accountaccountiduseruseridmetaflowdelete) | **DELETE** /v1/account/{accountID}/user/{userID}/metaflow | Delete User Metaflow
*MetaflowApi* | [**v1AccountAccountIDUserUserIDMetaflowGet**](docs/MetaflowApi.md#v1accountaccountiduseruseridmetaflowget) | **GET** /v1/account/{accountID}/user/{userID}/metaflow | Get User Metaflow List
*MetaflowApi* | [**v1AccountAccountIDUserUserIDMetaflowPost**](docs/MetaflowApi.md#v1accountaccountiduseruseridmetaflowpost) | **POST** /v1/account/{accountID}/user/{userID}/metaflow | Create User Metaflow
*PhoneNumberApi* | [**v1AccountAccountidPhonenumberGet**](docs/PhoneNumberApi.md#v1accountaccountidphonenumberget) | **GET** /v1/account/{accountid}/phonenumber | Get Assigned Numbers List
*PhoneNumberApi* | [**v1AccountPhonenumberAssignPost**](docs/PhoneNumberApi.md#v1accountphonenumberassignpost) | **POST** /v1/account/phonenumber/assign | Assign Number
*PhoneNumberApi* | [**v1AccountPhonenumberDisconnectPost**](docs/PhoneNumberApi.md#v1accountphonenumberdisconnectpost) | **POST** /v1/account/phonenumber/disconnect | Disconnect Number
*PhoneNumberApi* | [**v1AccountPhonenumberGet**](docs/PhoneNumberApi.md#v1accountphonenumberget) | **GET** /v1/account/phonenumber | Get Unassigned Numbers List
*PhoneNumberApi* | [**v1AccountPhonenumberPost**](docs/PhoneNumberApi.md#v1accountphonenumberpost) | **POST** /v1/account/phonenumber | Purchase Number
*PhoneNumberApi* | [**v1AccountPhonenumberUnassignPost**](docs/PhoneNumberApi.md#v1accountphonenumberunassignpost) | **POST** /v1/account/phonenumber/unassign | Unassign Number
*PhoneNumberApi* | [**v1PhonenumberSearchGet**](docs/PhoneNumberApi.md#v1phonenumbersearchget) | **GET** /v1/phonenumber/search | Search New Numbers
*PresenceApi* | [**v1AccountAccountIDPresenceExtensionPut**](docs/PresenceApi.md#v1accountaccountidpresenceextensionput) | **PUT** /v1/account/{accountID}/presence/{extension} | Set/Reset Presence for Extension
*PresenceApi* | [**v1AccountAccountIDPresenceGet**](docs/PresenceApi.md#v1accountaccountidpresenceget) | **GET** /v1/account/{accountID}/presence | Get Presence Details
*PresenceApi* | [**v1AccountAccountIDUserUserIDPresencePut**](docs/PresenceApi.md#v1accountaccountiduseruseridpresenceput) | **PUT** /v1/account/{accountID}/user/{userID}/presence | Set/Reset Presence for User
*ProvisioningApi* | [**v1AccountAccountIDProvisionFilenameGet**](docs/ProvisioningApi.md#v1accountaccountidprovisionfilenameget) | **GET** /v1/account/{accountID}/provision/{filename} | Get Config File Details
*ProvisioningApi* | [**v1ApBrandBrandFamilyFamilyGet**](docs/ProvisioningApi.md#v1apbrandbrandfamilyfamilyget) | **GET** /v1/ap/brand/{brand}/family/{family} | Get Family Details
*ProvisioningApi* | [**v1ApBrandBrandFamilyFamilyModelGet**](docs/ProvisioningApi.md#v1apbrandbrandfamilyfamilymodelget) | **GET** /v1/ap/brand/{brand}/family/{family}/model | Get Model List
*ProvisioningApi* | [**v1ApBrandBrandFamilyFamilyModelModelGet**](docs/ProvisioningApi.md#v1apbrandbrandfamilyfamilymodelmodelget) | **GET** /v1/ap/brand/{brand}/family/{family}/model/{model} | Get Model Details
*ProvisioningApi* | [**v1ApBrandBrandFamilyFamilyModelModelTemplateGet**](docs/ProvisioningApi.md#v1apbrandbrandfamilyfamilymodelmodeltemplateget) | **GET** /v1/ap/brand/{brand}/family/{family}/model/{model}/template | Get Template List
*ProvisioningApi* | [**v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet**](docs/ProvisioningApi.md#v1apbrandbrandfamilyfamilymodelmodeltemplatetemplateget) | **GET** /v1/ap/brand/{brand}/family/{family}/model/{model}/template/{template} | Get Template Details
*ProvisioningApi* | [**v1ApBrandBrandFamilyGet**](docs/ProvisioningApi.md#v1apbrandbrandfamilyget) | **GET** /v1/ap/brand/{brand}/family | Get Family List
*ProvisioningApi* | [**v1ApBrandBrandGet**](docs/ProvisioningApi.md#v1apbrandbrandget) | **GET** /v1/ap/brand/{brand} | Get Brand Details
*ProvisioningApi* | [**v1ApBrandGet**](docs/ProvisioningApi.md#v1apbrandget) | **GET** /v1/ap/brand | Get Brand List
*ProvisioningApi* | [**v1ApConfigfileGeneratePost**](docs/ProvisioningApi.md#v1apconfigfilegeneratepost) | **POST** /v1/ap/configfile/generate | Generate Config File
*SMSApi* | [**v1SmsAccountAccountIDCampaignCampaignIDImportGet**](docs/SMSApi.md#v1smsaccountaccountidcampaigncampaignidimportget) | **GET** /v1/sms/account/{accountID}/campaign/{campaignID}/import | 
*SMSApi* | [**v1SmsAccountAccountIDCampaignCampaignIDImportPost**](docs/SMSApi.md#v1smsaccountaccountidcampaigncampaignidimportpost) | **POST** /v1/sms/account/{accountID}/campaign/{campaignID}/import | 
*SMSApi* | [**v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet**](docs/SMSApi.md#v1smsaccountaccountidcampaigncampaignidphonenumberget) | **GET** /v1/sms/account/{accountID}/campaign/{campaignID}/phonenumber | 
*SMSApi* | [**v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut**](docs/SMSApi.md#v1smsaccountaccountidcampaigncampaignidphonenumberput) | **PUT** /v1/sms/account/{accountID}/campaign/{campaignID}/phonenumber | 
*SMSApi* | [**v1SmsAccountAccountIDCampaignImportGet**](docs/SMSApi.md#v1smsaccountaccountidcampaignimportget) | **GET** /v1/sms/account/{accountID}/campaign/import | 
*StorageApi* | [**v1AccountAccountIDStorageDelete**](docs/StorageApi.md#v1accountaccountidstoragedelete) | **DELETE** /v1/account/{accountID}/storage | Delete Storage
*StorageApi* | [**v1AccountAccountIDStorageGet**](docs/StorageApi.md#v1accountaccountidstorageget) | **GET** /v1/account/{accountID}/storage | Get Storage Details
*StorageApi* | [**v1AccountAccountIDStoragePost**](docs/StorageApi.md#v1accountaccountidstoragepost) | **POST** /v1/account/{accountID}/storage | Create Storage
*StorageApi* | [**v1AccountAccountIDStoragePut**](docs/StorageApi.md#v1accountaccountidstorageput) | **PUT** /v1/account/{accountID}/storage | Update Storage
*SystemStatusApi* | [**v1ApPingGet**](docs/SystemStatusApi.md#v1appingget) | **GET** /v1/ap/ping | Provisioning Ping
*SystemStatusApi* | [**v1PingGet**](docs/SystemStatusApi.md#v1pingget) | **GET** /v1/ping | Ping Backend
*SystemStatusApi* | [**v1PingseccognitoGet**](docs/SystemStatusApi.md#v1pingseccognitoget) | **GET** /v1/pingseccognito | Ping Cognito
*SystemStatusApi* | [**v1SystemStatusGet**](docs/SystemStatusApi.md#v1systemstatusget) | **GET** /v1/system_status | Get System Status
*TemporalRuleApi* | [**v1AccountAccountIDTemporalruleGet**](docs/TemporalRuleApi.md#v1accountaccountidtemporalruleget) | **GET** /v1/account/{accountID}/temporalrule | Get Temporal Rule List
*TemporalRuleApi* | [**v1AccountAccountIDTemporalrulePost**](docs/TemporalRuleApi.md#v1accountaccountidtemporalrulepost) | **POST** /v1/account/{accountID}/temporalrule | Create Temporal Rule
*TemporalRuleApi* | [**v1AccountAccountIDTemporalruleTemporalRuleIDDelete**](docs/TemporalRuleApi.md#v1accountaccountidtemporalruletemporalruleiddelete) | **DELETE** /v1/account/{accountID}/temporalrule/{temporalRuleID} | Delete Temporal Rule
*TemporalRuleApi* | [**v1AccountAccountIDTemporalruleTemporalRuleIDGet**](docs/TemporalRuleApi.md#v1accountaccountidtemporalruletemporalruleidget) | **GET** /v1/account/{accountID}/temporalrule/{temporalRuleID} | Get Temporal Rule Details
*TemporalRuleApi* | [**v1AccountAccountIDTemporalruleTemporalRuleIDPut**](docs/TemporalRuleApi.md#v1accountaccountidtemporalruletemporalruleidput) | **PUT** /v1/account/{accountID}/temporalrule/{temporalRuleID} | Update Temporal Rule
*TemporalRuleSetApi* | [**v1AccountAccountIDTemporalrulesetGet**](docs/TemporalRuleSetApi.md#v1accountaccountidtemporalrulesetget) | **GET** /v1/account/{accountID}/temporalruleset | Get Temporal Rule Set List
*TemporalRuleSetApi* | [**v1AccountAccountIDTemporalrulesetPost**](docs/TemporalRuleSetApi.md#v1accountaccountidtemporalrulesetpost) | **POST** /v1/account/{accountID}/temporalruleset | Create Temporal Rule Set
*TemporalRuleSetApi* | [**v1AccountAccountIDTemporalrulesetTemporalRuleSetIDDelete**](docs/TemporalRuleSetApi.md#v1accountaccountidtemporalrulesettemporalrulesetiddelete) | **DELETE** /v1/account/{accountID}/temporalruleset/{temporalRuleSetID} | Delete Temporal Rule Set
*TemporalRuleSetApi* | [**v1AccountAccountIDTemporalrulesetTemporalRuleSetIDGet**](docs/TemporalRuleSetApi.md#v1accountaccountidtemporalrulesettemporalrulesetidget) | **GET** /v1/account/{accountID}/temporalruleset/{temporalRuleSetID} | Get Temporal Rule Set Details
*TemporalRuleSetApi* | [**v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut**](docs/TemporalRuleSetApi.md#v1accountaccountidtemporalrulesettemporalrulesetidput) | **PUT** /v1/account/{accountID}/temporalruleset/{temporalRuleSetID} | Update Temporal Rule Set
*VoIPUserApi* | [**v1AccountAccountidUserGet**](docs/VoIPUserApi.md#v1accountaccountiduserget) | **GET** /v1/account/{accountid}/user | Get User List
*VoIPUserApi* | [**v1AccountAccountidUserPost**](docs/VoIPUserApi.md#v1accountaccountiduserpost) | **POST** /v1/account/{accountid}/user | Create User
*VoIPUserApi* | [**v1AccountAccountidUserUseridDelete**](docs/VoIPUserApi.md#v1accountaccountiduseruseriddelete) | **DELETE** /v1/account/{accountid}/user/{userid} | Delete User
*VoIPUserApi* | [**v1AccountAccountidUserUseridGet**](docs/VoIPUserApi.md#v1accountaccountiduseruseridget) | **GET** /v1/account/{accountid}/user/{userid} | Get User Details
*VoIPUserApi* | [**v1AccountAccountidUserUseridPut**](docs/VoIPUserApi.md#v1accountaccountiduseruseridput) | **PUT** /v1/account/{accountid}/user/{userid} | Update User
*VoIPUserApi* | [**v1AccountAccountidUserUseridUserauthPost**](docs/VoIPUserApi.md#v1accountaccountiduseruseriduserauthpost) | **POST** /v1/account/{accountid}/user/{userid}/userauth | Impersonate a User
*VoicemailApi* | [**v1AccountAccountIDVoicemailGet**](docs/VoicemailApi.md#v1accountaccountidvoicemailget) | **GET** /v1/account/{accountID}/voicemail | Get Voicemail Box List
*VoicemailApi* | [**v1AccountAccountIDVoicemailPost**](docs/VoicemailApi.md#v1accountaccountidvoicemailpost) | **POST** /v1/account/{accountID}/voicemail | Create Voicemail Box
*VoicemailApi* | [**v1AccountAccountIDVoicemailVoicemailIDDelete**](docs/VoicemailApi.md#v1accountaccountidvoicemailvoicemailiddelete) | **DELETE** /v1/account/{accountID}/voicemail/{voicemailID} | Delete Voicemail Box
*VoicemailApi* | [**v1AccountAccountIDVoicemailVoicemailIDGet**](docs/VoicemailApi.md#v1accountaccountidvoicemailvoicemailidget) | **GET** /v1/account/{accountID}/voicemail/{voicemailID} | Get Voicemail Box Details
*VoicemailApi* | [**v1AccountAccountIDVoicemailVoicemailIDMessageGet**](docs/VoicemailApi.md#v1accountaccountidvoicemailvoicemailidmessageget) | **GET** /v1/account/{accountID}/voicemail/{voicemailID}/message | Get Voicemail Message List
*VoicemailApi* | [**v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete**](docs/VoicemailApi.md#v1accountaccountidvoicemailvoicemailidmessagemessageiddelete) | **DELETE** /v1/account/{accountID}/voicemail/{voicemailID}/message/{messageID} | Delete Voicemail Message
*VoicemailApi* | [**v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet**](docs/VoicemailApi.md#v1accountaccountidvoicemailvoicemailidmessagemessageidget) | **GET** /v1/account/{accountID}/voicemail/{voicemailID}/message/{messageID} | Get Voicemail Message Details
*VoicemailApi* | [**v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut**](docs/VoicemailApi.md#v1accountaccountidvoicemailvoicemailidmessagemessageidput) | **PUT** /v1/account/{accountID}/voicemail/{voicemailID}/message/{messageID} | Update Voicemail Message
*VoicemailApi* | [**v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet**](docs/VoicemailApi.md#v1accountaccountidvoicemailvoicemailidmessagemessageidrawget) | **GET** /v1/account/{accountID}/voicemail/{voicemailID}/message/{messageID}/raw | Get Voicemail Message File
*VoicemailApi* | [**v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost**](docs/VoicemailApi.md#v1accountaccountidvoicemailvoicemailidmessagemessageidrawpost) | **POST** /v1/account/{accountID}/voicemail/{voicemailID}/message/{messageID}/raw | Add Voicemail Message File
*VoicemailApi* | [**v1AccountAccountIDVoicemailVoicemailIDMessagePost**](docs/VoicemailApi.md#v1accountaccountidvoicemailvoicemailidmessagepost) | **POST** /v1/account/{accountID}/voicemail/{voicemailID}/message | Create Voicemail Message
*VoicemailApi* | [**v1AccountAccountIDVoicemailVoicemailIDPut**](docs/VoicemailApi.md#v1accountaccountidvoicemailvoicemailidput) | **PUT** /v1/account/{accountID}/voicemail/{voicemailID} | Update Voicemail Box
*WebhookApi* | [**v1WebhookAccountAccountIDGet**](docs/WebhookApi.md#v1webhookaccountaccountidget) | **GET** /v1/webhook/account/{accountID} | Get Webhook List
*WebhookApi* | [**v1WebhookAccountAccountIDPost**](docs/WebhookApi.md#v1webhookaccountaccountidpost) | **POST** /v1/webhook/account/{accountID} | Create Webhook
*WebhookApi* | [**v1WebhookAccountAccountIDWebhookIDDelete**](docs/WebhookApi.md#v1webhookaccountaccountidwebhookiddelete) | **DELETE** /v1/webhook/account/{accountID}/{webhookID} | Delete Webhook
*WebhookApi* | [**v1WebhookAccountAccountIDWebhookIDGet**](docs/WebhookApi.md#v1webhookaccountaccountidwebhookidget) | **GET** /v1/webhook/account/{accountID}/{webhookID} | Get Webhook Details
*WebhookApi* | [**v1WebhookAccountAccountIDWebhookIDPut**](docs/WebhookApi.md#v1webhookaccountaccountidwebhookidput) | **PUT** /v1/webhook/account/{accountID}/{webhookID} | Update Webhook


## Documentation For Models

 - [CPAASError](docs/CPAASError.md)
 - [MenuInputData](docs/MenuInputData.md)
 - [MenuOutputDetail](docs/MenuOutputDetail.md)
 - [MenuOutputDetailData](docs/MenuOutputDetailData.md)
 - [MenuOutputDetailMedia](docs/MenuOutputDetailMedia.md)
 - [MenuOutputList](docs/MenuOutputList.md)
 - [MenuOutputListData](docs/MenuOutputListData.md)
 - [ModelAccountProvisioning](docs/ModelAccountProvisioning.md)
 - [ModelAccountWebhook](docs/ModelAccountWebhook.md)
 - [ModelCallDailySummary](docs/ModelCallDailySummary.md)
 - [ModelCallDetail](docs/ModelCallDetail.md)
 - [ModelCallMonthlySummary](docs/ModelCallMonthlySummary.md)
 - [ModelEndpointList](docs/ModelEndpointList.md)
 - [ModelEventDailySummary](docs/ModelEventDailySummary.md)
 - [ModelEventDetail](docs/ModelEventDetail.md)
 - [ModelEventMonthlySummary](docs/ModelEventMonthlySummary.md)
 - [ModelFeatureDailySummary](docs/ModelFeatureDailySummary.md)
 - [ModelFeatureMonthlySummary](docs/ModelFeatureMonthlySummary.md)
 - [ModelsAccountOutputFull](docs/ModelsAccountOutputFull.md)
 - [ModelsAccountOutputFullCalleridEmergency](docs/ModelsAccountOutputFullCalleridEmergency.md)
 - [ModelsAccountOutputFullCalleridExternal](docs/ModelsAccountOutputFullCalleridExternal.md)
 - [ModelsAccountOutputFullCalleridInternal](docs/ModelsAccountOutputFullCalleridInternal.md)
 - [ModelsBrand](docs/ModelsBrand.md)
 - [ModelsCallForward](docs/ModelsCallForward.md)
 - [ModelsCallRecordingParameters](docs/ModelsCallRecordingParameters.md)
 - [ModelsCallRecordingSettings](docs/ModelsCallRecordingSettings.md)
 - [ModelsCallRecordingSource](docs/ModelsCallRecordingSource.md)
 - [ModelsConfigFileParameter](docs/ModelsConfigFileParameter.md)
 - [ModelsDeviceOutputFull](docs/ModelsDeviceOutputFull.md)
 - [ModelsDeviceOutputFullCallerid](docs/ModelsDeviceOutputFullCallerid.md)
 - [ModelsDeviceOutputFullCalleridEmergency](docs/ModelsDeviceOutputFullCalleridEmergency.md)
 - [ModelsDeviceOutputFullCalleridExternal](docs/ModelsDeviceOutputFullCalleridExternal.md)
 - [ModelsDeviceOutputFullCalleridInternal](docs/ModelsDeviceOutputFullCalleridInternal.md)
 - [ModelsDeviceOutputFullMedia](docs/ModelsDeviceOutputFullMedia.md)
 - [ModelsDeviceOutputFullMediaAudio](docs/ModelsDeviceOutputFullMediaAudio.md)
 - [ModelsDeviceOutputFullProvision](docs/ModelsDeviceOutputFullProvision.md)
 - [ModelsDeviceOutputFullSIP](docs/ModelsDeviceOutputFullSIP.md)
 - [ModelsFamily](docs/ModelsFamily.md)
 - [ModelsGenerateConfigFileRequest](docs/ModelsGenerateConfigFileRequest.md)
 - [ModelsLineKeyProcessedTempData](docs/ModelsLineKeyProcessedTempData.md)
 - [ModelsModel](docs/ModelsModel.md)
 - [ModelsMusicOnHold](docs/ModelsMusicOnHold.md)
 - [ModelsTemplate](docs/ModelsTemplate.md)
 - [ModelsUserOutputFull](docs/ModelsUserOutputFull.md)
 - [ModelsUserOutputFullCallerid](docs/ModelsUserOutputFullCallerid.md)
 - [ModelsUserOutputFullCalleridEmergency](docs/ModelsUserOutputFullCalleridEmergency.md)
 - [ModelsUserOutputFullCalleridExternal](docs/ModelsUserOutputFullCalleridExternal.md)
 - [ModelsUserOutputFullCalleridInternal](docs/ModelsUserOutputFullCalleridInternal.md)
 - [ModelsVOIPAccountMusicOnHold](docs/ModelsVOIPAccountMusicOnHold.md)
 - [ModelsVOIPAccountOutputFullCallerid](docs/ModelsVOIPAccountOutputFullCallerid.md)
 - [ModelsVOIPDeviceOutputLineKey](docs/ModelsVOIPDeviceOutputLineKey.md)
 - [ModelsVOIPSharedDoNotDisturb](docs/ModelsVOIPSharedDoNotDisturb.md)
 - [ProvisioningDocsDocsBrandOutputSingle](docs/ProvisioningDocsDocsBrandOutputSingle.md)
 - [ProvisioningDocsDocsBrandsOutput](docs/ProvisioningDocsDocsBrandsOutput.md)
 - [ProvisioningDocsDocsConfigFileOutput](docs/ProvisioningDocsDocsConfigFileOutput.md)
 - [ProvisioningDocsDocsFamilyOutput](docs/ProvisioningDocsDocsFamilyOutput.md)
 - [ProvisioningDocsDocsFamilyOutputSingle](docs/ProvisioningDocsDocsFamilyOutputSingle.md)
 - [ProvisioningDocsDocsModelOutput](docs/ProvisioningDocsDocsModelOutput.md)
 - [ProvisioningDocsDocsModelOutputSingle](docs/ProvisioningDocsDocsModelOutputSingle.md)
 - [ProvisioningDocsDocsPingOutput](docs/ProvisioningDocsDocsPingOutput.md)
 - [ProvisioningDocsDocsPingOutputData](docs/ProvisioningDocsDocsPingOutputData.md)
 - [ProvisioningDocsDocsTemplateOutputSingle](docs/ProvisioningDocsDocsTemplateOutputSingle.md)
 - [ProvisioningDocsDocsTemplatesOutput](docs/ProvisioningDocsDocsTemplatesOutput.md)
 - [RepositoryLocationsResponse](docs/RepositoryLocationsResponse.md)
 - [ResponseProvisionError](docs/ResponseProvisionError.md)
 - [ServiceAPIKey](docs/ServiceAPIKey.md)
 - [ServiceAPIResponse](docs/ServiceAPIResponse.md)
 - [ServiceAPIResponseStatusCodeOnly](docs/ServiceAPIResponseStatusCodeOnly.md)
 - [ServiceAccountLimitOutput](docs/ServiceAccountLimitOutput.md)
 - [ServiceAccountOutputShort](docs/ServiceAccountOutputShort.md)
 - [ServiceAdminUserAddData](docs/ServiceAdminUserAddData.md)
 - [ServiceAdminUserDeleteOutput](docs/ServiceAdminUserDeleteOutput.md)
 - [ServiceAdminUserEditData](docs/ServiceAdminUserEditData.md)
 - [ServiceAdminUserOutput](docs/ServiceAdminUserOutput.md)
 - [ServiceCallQueueOutputFull](docs/ServiceCallQueueOutputFull.md)
 - [ServiceCallQueueOutputShort](docs/ServiceCallQueueOutputShort.md)
 - [ServiceCallQueueRolesOutput](docs/ServiceCallQueueRolesOutput.md)
 - [ServiceCallQueueStatusOutput](docs/ServiceCallQueueStatusOutput.md)
 - [ServiceCallQueueStatusStats](docs/ServiceCallQueueStatusStats.md)
 - [ServiceCallRecordingOutput](docs/ServiceCallRecordingOutput.md)
 - [ServiceCallflowAddEditData](docs/ServiceCallflowAddEditData.md)
 - [ServiceCallflowAddEditFlowData](docs/ServiceCallflowAddEditFlowData.md)
 - [ServiceCallflowOutputFull](docs/ServiceCallflowOutputFull.md)
 - [ServiceCallflowOutputShort](docs/ServiceCallflowOutputShort.md)
 - [ServiceCampaignImportOutput](docs/ServiceCampaignImportOutput.md)
 - [ServiceCampaignImportOutputMnoStatusListInner](docs/ServiceCampaignImportOutputMnoStatusListInner.md)
 - [ServiceCampaignPhoneNumberOutput](docs/ServiceCampaignPhoneNumberOutput.md)
 - [ServiceCampaignTagDetagPhonenumbers](docs/ServiceCampaignTagDetagPhonenumbers.md)
 - [ServiceCampaignTagDetagPhonenumbersOutput](docs/ServiceCampaignTagDetagPhonenumbersOutput.md)
 - [ServiceCdrOutputShort](docs/ServiceCdrOutputShort.md)
 - [ServiceChannelOutput](docs/ServiceChannelOutput.md)
 - [ServiceDeviceOutputShort](docs/ServiceDeviceOutputShort.md)
 - [ServiceDeviceStatusOutput](docs/ServiceDeviceStatusOutput.md)
 - [ServiceDocGroupGetAll](docs/ServiceDocGroupGetAll.md)
 - [ServiceDocGroupGetSingle](docs/ServiceDocGroupGetSingle.md)
 - [ServiceDocsAccountAPIKey](docs/ServiceDocsAccountAPIKey.md)
 - [ServiceDocsAccountGetAll](docs/ServiceDocsAccountGetAll.md)
 - [ServiceDocsAccountGetSingle](docs/ServiceDocsAccountGetSingle.md)
 - [ServiceDocsAccountLimit](docs/ServiceDocsAccountLimit.md)
 - [ServiceDocsAccountPhonenumberGetAll](docs/ServiceDocsAccountPhonenumberGetAll.md)
 - [ServiceDocsAccountProvisioning](docs/ServiceDocsAccountProvisioning.md)
 - [ServiceDocsAdminUserDelete](docs/ServiceDocsAdminUserDelete.md)
 - [ServiceDocsAdminUserGetAll](docs/ServiceDocsAdminUserGetAll.md)
 - [ServiceDocsAdminUserGetSingle](docs/ServiceDocsAdminUserGetSingle.md)
 - [ServiceDocsCallDailySummary](docs/ServiceDocsCallDailySummary.md)
 - [ServiceDocsCallDetail](docs/ServiceDocsCallDetail.md)
 - [ServiceDocsCallMonthlySummary](docs/ServiceDocsCallMonthlySummary.md)
 - [ServiceDocsCallQueueGetAll](docs/ServiceDocsCallQueueGetAll.md)
 - [ServiceDocsCallQueueGetRoles](docs/ServiceDocsCallQueueGetRoles.md)
 - [ServiceDocsCallQueueGetSingle](docs/ServiceDocsCallQueueGetSingle.md)
 - [ServiceDocsCallQueueGetSingleStatus](docs/ServiceDocsCallQueueGetSingleStatus.md)
 - [ServiceDocsCallQueueRecipientLoginLogoutOutput](docs/ServiceDocsCallQueueRecipientLoginLogoutOutput.md)
 - [ServiceDocsCallRecordingGetAll](docs/ServiceDocsCallRecordingGetAll.md)
 - [ServiceDocsCallRecordingGetSingle](docs/ServiceDocsCallRecordingGetSingle.md)
 - [ServiceDocsCallflowGetAll](docs/ServiceDocsCallflowGetAll.md)
 - [ServiceDocsCallflowGetSingle](docs/ServiceDocsCallflowGetSingle.md)
 - [ServiceDocsCallparkGet](docs/ServiceDocsCallparkGet.md)
 - [ServiceDocsCampaignImportOutput](docs/ServiceDocsCampaignImportOutput.md)
 - [ServiceDocsCampaignImportedGetAllOutput](docs/ServiceDocsCampaignImportedGetAllOutput.md)
 - [ServiceDocsCampaignPhoneNumberOutput](docs/ServiceDocsCampaignPhoneNumberOutput.md)
 - [ServiceDocsCampaignTagDetagPhonenumbersOutput](docs/ServiceDocsCampaignTagDetagPhonenumbersOutput.md)
 - [ServiceDocsCdrGetAll](docs/ServiceDocsCdrGetAll.md)
 - [ServiceDocsCdrGetSingle](docs/ServiceDocsCdrGetSingle.md)
 - [ServiceDocsChannelGetAll](docs/ServiceDocsChannelGetAll.md)
 - [ServiceDocsChannelGetSingle](docs/ServiceDocsChannelGetSingle.md)
 - [ServiceDocsDeviceGetAll](docs/ServiceDocsDeviceGetAll.md)
 - [ServiceDocsDeviceGetSingle](docs/ServiceDocsDeviceGetSingle.md)
 - [ServiceDocsDeviceReboot](docs/ServiceDocsDeviceReboot.md)
 - [ServiceDocsDeviceStatus](docs/ServiceDocsDeviceStatus.md)
 - [ServiceDocsE911ActiveLocationOutput](docs/ServiceDocsE911ActiveLocationOutput.md)
 - [ServiceDocsE911ActiveLocationURIApiOutput](docs/ServiceDocsE911ActiveLocationURIApiOutput.md)
 - [ServiceDocsE911AddLocationOutput](docs/ServiceDocsE911AddLocationOutput.md)
 - [ServiceDocsE911LocationsURIApiOutput](docs/ServiceDocsE911LocationsURIApiOutput.md)
 - [ServiceDocsE911RemoveLocationOutput](docs/ServiceDocsE911RemoveLocationOutput.md)
 - [ServiceDocsE911RemoveURIApiOutput](docs/ServiceDocsE911RemoveURIApiOutput.md)
 - [ServiceDocsE911URIsApiOutput](docs/ServiceDocsE911URIsApiOutput.md)
 - [ServiceDocsE911ValidateLocationOutput](docs/ServiceDocsE911ValidateLocationOutput.md)
 - [ServiceDocsEndpointList](docs/ServiceDocsEndpointList.md)
 - [ServiceDocsEventDailySummary](docs/ServiceDocsEventDailySummary.md)
 - [ServiceDocsEventDetail](docs/ServiceDocsEventDetail.md)
 - [ServiceDocsEventMonthlySummary](docs/ServiceDocsEventMonthlySummary.md)
 - [ServiceDocsFeatureDailySummary](docs/ServiceDocsFeatureDailySummary.md)
 - [ServiceDocsFeatureMonthlySummary](docs/ServiceDocsFeatureMonthlySummary.md)
 - [ServiceDocsGetQueueRecipients](docs/ServiceDocsGetQueueRecipients.md)
 - [ServiceDocsImpersonateUserGetSingle](docs/ServiceDocsImpersonateUserGetSingle.md)
 - [ServiceDocsMediaGetAll](docs/ServiceDocsMediaGetAll.md)
 - [ServiceDocsMediaGetSingle](docs/ServiceDocsMediaGetSingle.md)
 - [ServiceDocsMetaflowGet](docs/ServiceDocsMetaflowGet.md)
 - [ServiceDocsOrderPhonenumber](docs/ServiceDocsOrderPhonenumber.md)
 - [ServiceDocsPhonenumberAssignPayload](docs/ServiceDocsPhonenumberAssignPayload.md)
 - [ServiceDocsPhonenumberSearchGetAll](docs/ServiceDocsPhonenumberSearchGetAll.md)
 - [ServiceDocsPhonenumberUnassignPayload](docs/ServiceDocsPhonenumberUnassignPayload.md)
 - [ServiceDocsPingGet](docs/ServiceDocsPingGet.md)
 - [ServiceDocsPresenceGet](docs/ServiceDocsPresenceGet.md)
 - [ServiceDocsQueueMembershipOutput](docs/ServiceDocsQueueMembershipOutput.md)
 - [ServiceDocsStorageGet](docs/ServiceDocsStorageGet.md)
 - [ServiceDocsSystemStatusGetSingle](docs/ServiceDocsSystemStatusGetSingle.md)
 - [ServiceDocsTemporalRuleGetAll](docs/ServiceDocsTemporalRuleGetAll.md)
 - [ServiceDocsTemporalRuleGetSingle](docs/ServiceDocsTemporalRuleGetSingle.md)
 - [ServiceDocsTemporalRuleSetGetAll](docs/ServiceDocsTemporalRuleSetGetAll.md)
 - [ServiceDocsTemporalRuleSetGetSingle](docs/ServiceDocsTemporalRuleSetGetSingle.md)
 - [ServiceDocsUserGetAll](docs/ServiceDocsUserGetAll.md)
 - [ServiceDocsUserGetSingle](docs/ServiceDocsUserGetSingle.md)
 - [ServiceDocsVoicemailGetAll](docs/ServiceDocsVoicemailGetAll.md)
 - [ServiceDocsVoicemailGetSingle](docs/ServiceDocsVoicemailGetSingle.md)
 - [ServiceDocsVoicemailMessageGetAll](docs/ServiceDocsVoicemailMessageGetAll.md)
 - [ServiceDocsVoicemailMessageGetSingle](docs/ServiceDocsVoicemailMessageGetSingle.md)
 - [ServiceDocsWebhookDelete](docs/ServiceDocsWebhookDelete.md)
 - [ServiceDocsWebhookGetAll](docs/ServiceDocsWebhookGetAll.md)
 - [ServiceDocsWebhookGetSingle](docs/ServiceDocsWebhookGetSingle.md)
 - [ServiceE911ActiveLocationOutput](docs/ServiceE911ActiveLocationOutput.md)
 - [ServiceE911ActiveLocationStatus](docs/ServiceE911ActiveLocationStatus.md)
 - [ServiceE911AddLocationInput](docs/ServiceE911AddLocationInput.md)
 - [ServiceE911AddLocationOutput](docs/ServiceE911AddLocationOutput.md)
 - [ServiceE911LegacyDataOutput](docs/ServiceE911LegacyDataOutput.md)
 - [ServiceE911LocationInput](docs/ServiceE911LocationInput.md)
 - [ServiceE911LocationOutput](docs/ServiceE911LocationOutput.md)
 - [ServiceE911LocationURI](docs/ServiceE911LocationURI.md)
 - [ServiceE911LocationURILegacyData](docs/ServiceE911LocationURILegacyData.md)
 - [ServiceE911LocationURIStatus](docs/ServiceE911LocationURIStatus.md)
 - [ServiceE911RemoveLocationOutput](docs/ServiceE911RemoveLocationOutput.md)
 - [ServiceE911RemoveLocationStatus](docs/ServiceE911RemoveLocationStatus.md)
 - [ServiceE911StatusOutput](docs/ServiceE911StatusOutput.md)
 - [ServiceE911URIInput](docs/ServiceE911URIInput.md)
 - [ServiceE911ValidateLocationInput](docs/ServiceE911ValidateLocationInput.md)
 - [ServiceE911ValidateLocationOutput](docs/ServiceE911ValidateLocationOutput.md)
 - [ServiceEndpoint](docs/ServiceEndpoint.md)
 - [ServiceFeatureCode](docs/ServiceFeatureCode.md)
 - [ServiceGroupOutputFull](docs/ServiceGroupOutputFull.md)
 - [ServiceGroupOutputShort](docs/ServiceGroupOutputShort.md)
 - [ServiceImpersonateUserOutputFull](docs/ServiceImpersonateUserOutputFull.md)
 - [ServiceImpersonatedUserInfo](docs/ServiceImpersonatedUserInfo.md)
 - [ServiceMediaOutputFull](docs/ServiceMediaOutputFull.md)
 - [ServiceMediaOutputShort](docs/ServiceMediaOutputShort.md)
 - [ServiceMetaflowOutput](docs/ServiceMetaflowOutput.md)
 - [ServiceMetaflowPattern](docs/ServiceMetaflowPattern.md)
 - [ServiceParkingSlotData](docs/ServiceParkingSlotData.md)
 - [ServicePhoneNumberResult](docs/ServicePhoneNumberResult.md)
 - [ServicePhoneNumberSearchOutput](docs/ServicePhoneNumberSearchOutput.md)
 - [ServicePhonenumberOutput](docs/ServicePhonenumberOutput.md)
 - [ServicePingOutput](docs/ServicePingOutput.md)
 - [ServiceQueueRecipientOutput](docs/ServiceQueueRecipientOutput.md)
 - [ServiceQueueRecipientOutputRecipient](docs/ServiceQueueRecipientOutputRecipient.md)
 - [ServiceQueueRecipientOutputRecipientFeatures](docs/ServiceQueueRecipientOutputRecipientFeatures.md)
 - [ServiceRemoveURIApiOutput](docs/ServiceRemoveURIApiOutput.md)
 - [ServiceStorageOutput](docs/ServiceStorageOutput.md)
 - [ServiceStoragePlan](docs/ServiceStoragePlan.md)
 - [ServiceStoragePlanDatabase](docs/ServiceStoragePlanDatabase.md)
 - [ServiceStoragePlanDatabaseAttachment](docs/ServiceStoragePlanDatabaseAttachment.md)
 - [ServiceStoragePlanDatabaseDocument](docs/ServiceStoragePlanDatabaseDocument.md)
 - [ServiceStoragePlanDatabaseProperties](docs/ServiceStoragePlanDatabaseProperties.md)
 - [ServiceStoragePlanDatabaseTypes](docs/ServiceStoragePlanDatabaseTypes.md)
 - [ServiceSystemStatusCPAASService](docs/ServiceSystemStatusCPAASService.md)
 - [ServiceSystemStatusMessagingService](docs/ServiceSystemStatusMessagingService.md)
 - [ServiceSystemStatusOutput](docs/ServiceSystemStatusOutput.md)
 - [ServiceSystemStatusSupportService](docs/ServiceSystemStatusSupportService.md)
 - [ServiceSystemStatusVOIPService](docs/ServiceSystemStatusVOIPService.md)
 - [ServiceTTS](docs/ServiceTTS.md)
 - [ServiceTemporalRuleOutputFull](docs/ServiceTemporalRuleOutputFull.md)
 - [ServiceTemporalRuleOutputShort](docs/ServiceTemporalRuleOutputShort.md)
 - [ServiceTemporalRuleSetOutputFull](docs/ServiceTemporalRuleSetOutputFull.md)
 - [ServiceTemporalRuleSetOutputShort](docs/ServiceTemporalRuleSetOutputShort.md)
 - [ServiceUpdateRecordTypeForAccount](docs/ServiceUpdateRecordTypeForAccount.md)
 - [ServiceUserOutputShort](docs/ServiceUserOutputShort.md)
 - [ServiceVOIPAccountAddData](docs/ServiceVOIPAccountAddData.md)
 - [ServiceVOIPAccountEditData](docs/ServiceVOIPAccountEditData.md)
 - [ServiceVOIPAccountLimit2](docs/ServiceVOIPAccountLimit2.md)
 - [ServiceVOIPCallQueueAddEditData](docs/ServiceVOIPCallQueueAddEditData.md)
 - [ServiceVOIPCallQueueEnableMembershipData](docs/ServiceVOIPCallQueueEnableMembershipData.md)
 - [ServiceVOIPCallQueueRecipientLoginLogoutData](docs/ServiceVOIPCallQueueRecipientLoginLogoutData.md)
 - [ServiceVOIPCallQueueRecipientStatusData](docs/ServiceVOIPCallQueueRecipientStatusData.md)
 - [ServiceVOIPCallQueueRoleAssignData](docs/ServiceVOIPCallQueueRoleAssignData.md)
 - [ServiceVOIPChannelRunActionData](docs/ServiceVOIPChannelRunActionData.md)
 - [ServiceVOIPChannelRunMetaflowData](docs/ServiceVOIPChannelRunMetaflowData.md)
 - [ServiceVOIPDeviceAddEdit2](docs/ServiceVOIPDeviceAddEdit2.md)
 - [ServiceVOIPDeviceAddEdit3a](docs/ServiceVOIPDeviceAddEdit3a.md)
 - [ServiceVOIPDeviceAddEdit3c](docs/ServiceVOIPDeviceAddEdit3c.md)
 - [ServiceVOIPDeviceAddEdit3d](docs/ServiceVOIPDeviceAddEdit3d.md)
 - [ServiceVOIPDeviceAddEdit4](docs/ServiceVOIPDeviceAddEdit4.md)
 - [ServiceVOIPDeviceAddEdit5](docs/ServiceVOIPDeviceAddEdit5.md)
 - [ServiceVOIPDeviceAddEditLineKey](docs/ServiceVOIPDeviceAddEditLineKey.md)
 - [ServiceVOIPDeviceAddEditProvision](docs/ServiceVOIPDeviceAddEditProvision.md)
 - [ServiceVOIPGroupAddEdit2](docs/ServiceVOIPGroupAddEdit2.md)
 - [ServiceVOIPImpersonateUser](docs/ServiceVOIPImpersonateUser.md)
 - [ServiceVOIPMediaAddEditData](docs/ServiceVOIPMediaAddEditData.md)
 - [ServiceVOIPMetaflowAddData](docs/ServiceVOIPMetaflowAddData.md)
 - [ServiceVOIPPresenceSetResetEditData](docs/ServiceVOIPPresenceSetResetEditData.md)
 - [ServiceVOIPQueueMembershipAddData](docs/ServiceVOIPQueueMembershipAddData.md)
 - [ServiceVOIPStorageAddEditData](docs/ServiceVOIPStorageAddEditData.md)
 - [ServiceVOIPTemporalRuleAddEdit2](docs/ServiceVOIPTemporalRuleAddEdit2.md)
 - [ServiceVOIPTemporalRuleSetAddEditData](docs/ServiceVOIPTemporalRuleSetAddEditData.md)
 - [ServiceVOIPUserAdd2](docs/ServiceVOIPUserAdd2.md)
 - [ServiceVOIPVoicemailAddEditData](docs/ServiceVOIPVoicemailAddEditData.md)
 - [ServiceVOIPVoicemailMessageAddData](docs/ServiceVOIPVoicemailMessageAddData.md)
 - [ServiceVOIPVoicemailMessageChange](docs/ServiceVOIPVoicemailMessageChange.md)
 - [ServiceVoicemailMedia](docs/ServiceVoicemailMedia.md)
 - [ServiceVoicemailMessageOutput](docs/ServiceVoicemailMessageOutput.md)
 - [ServiceVoicemailOutputFull](docs/ServiceVoicemailOutputFull.md)
 - [ServiceVoicemailOutputShort](docs/ServiceVoicemailOutputShort.md)
 - [ServiceWebhookAdd](docs/ServiceWebhookAdd.md)
 - [ServiceWebhookDeleteOutput](docs/ServiceWebhookDeleteOutput.md)
 - [ServiceWebhookEdit](docs/ServiceWebhookEdit.md)


## Documentation For Authorization


## BearerAuth


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

