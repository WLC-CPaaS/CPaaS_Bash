#!/usr/bin/env bash

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! openapi-generator (https://openapi-generator.tech)
# ! FROM OPENAPI SPECIFICATION IN JSON.
# !
# ! Generator version: 7.11.0-SNAPSHOT
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#
# This is a Bash client for White Label Communications CPaas API Documentation.
#
# LICENSE:
# 
#
# CONTACT:
# support@whitelabelcomm.com
#
# MORE INFORMATION:
# 
#

# For improved pattern matching in case statements
shopt -s extglob

###############################################################################
#
# Make sure Bash is at least in version 4.3
#
###############################################################################
if ! ( (("${BASH_VERSION:0:1}" == "4")) && (("${BASH_VERSION:2:1}" >= "3")) ) \
  && ! (("${BASH_VERSION:0:1}" >= "5")); then
    echo ""
    echo "Sorry - your Bash version is ${BASH_VERSION}"
    echo ""
    echo "You need at least Bash 4.3 to run this script."
    echo ""
    exit 1
fi

###############################################################################
#
# Global variables
#
###############################################################################

##
# The filename of this script for help messages
script_name=$(basename "$0")

##
# Map for headers passed after operation as KEY:VALUE
declare -A header_arguments


##
# Map for operation parameters passed after operation as PARAMETER=VALUE
# These will be mapped to appropriate path or query parameters
# The values in operation_parameters are arrays, so that multiple values
# can be provided for the same parameter if allowed by API specification
declare -A operation_parameters

##
# Declare colors with autodetection if output is terminal
if [ -t 1 ]; then
    RED="$(tput setaf 1)"
    GREEN="$(tput setaf 2)"
    YELLOW="$(tput setaf 3)"
    BLUE="$(tput setaf 4)"
    MAGENTA="$(tput setaf 5)"
    CYAN="$(tput setaf 6)"
    WHITE="$(tput setaf 7)"
    BOLD="$(tput bold)"
    OFF="$(tput sgr0)"
else
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    MAGENTA=""
    CYAN=""
    WHITE=""
    BOLD=""
    OFF=""
fi

declare -a result_color_table=( "$WHITE" "$WHITE" "$GREEN" "$YELLOW" "$WHITE" "$MAGENTA" "$WHITE" )

##
# This array stores the minimum number of required occurrences for parameter
# 0 - optional
# 1 - required
declare -A operation_parameters_minimum_occurrences
operation_parameters_minimum_occurrences["v1AccountAccountidChildrenGet:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidChildrenGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1AccountAccountidChildrenGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1AccountAccountidDelete:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidDnsrecordGet:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidDnsrecordPost:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidDnsrecordPut:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidDnsrecordPut:::dnsrecord"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidGet:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidLimitGet:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidLimitPut:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidLimitPut:::limit"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidPost:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidPost:::account"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidProvisioningdetailsGet:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidProvisioningdetailsResetpwPut:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidPut:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidPut:::account"]=1
operation_parameters_minimum_occurrences["v1AccountGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1AccountGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1AccountPost:::account"]=1
operation_parameters_minimum_occurrences["v1MgmtUserGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1MgmtUserGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1MgmtUserGet:::sort"]=0
operation_parameters_minimum_occurrences["v1MgmtUserGet:::email"]=0
operation_parameters_minimum_occurrences["v1MgmtUserGet:::role"]=0
operation_parameters_minimum_occurrences["v1MgmtUserGet:::first_name"]=0
operation_parameters_minimum_occurrences["v1MgmtUserGet:::last_name"]=0
operation_parameters_minimum_occurrences["v1MgmtUserPost:::reqBody"]=1
operation_parameters_minimum_occurrences["v1MgmtUserUserIDDelete:::userID"]=1
operation_parameters_minimum_occurrences["v1MgmtUserUserIDGet:::userID"]=1
operation_parameters_minimum_occurrences["v1MgmtUserUserIDPut:::userID"]=1
operation_parameters_minimum_occurrences["v1MgmtUserUserIDPut:::reqBody"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDParkedcallGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCallqueueGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCallqueuePost:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCallqueuePost:::reqBody"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCallqueueQueueIDDelete:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCallqueueQueueIDDelete:::queueID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCallqueueQueueIDGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCallqueueQueueIDGet:::queueID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCallqueueQueueIDPut:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCallqueueQueueIDPut:::queueID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCallqueueQueueIDPut:::reqBody"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCallqueueQueueIDStatusGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCallqueueQueueIDStatusGet:::queueID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDQueuerolesGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDQueuerolesQueueIDPost:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDQueuerolesQueueIDPost:::queueID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDQueuerolesQueueIDPost:::reqBody"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDQueuemembershipPost:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDQueuemembershipPost:::reqBody"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDQueuemembershipRecipientIDDisablePost:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDQueuemembershipRecipientIDDisablePost:::recipientID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDQueuemembershipRecipientIDEnablePost:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDQueuemembershipRecipientIDEnablePost:::recipientID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDQueuemembershipRecipientIDEnablePost:::reqBody"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDLoginrecipientRecipientIDPost:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDLoginrecipientRecipientIDPost:::recipientID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDLoginrecipientRecipientIDPost:::reqBody"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDQueuerecipientGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDRecipientRecipientIDStatusPost:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDRecipientRecipientIDStatusPost:::recipientID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDRecipientRecipientIDStatusPost:::reqBody"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDRecordingGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDRecordingRecordingIDDelete:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDRecordingRecordingIDDelete:::recordingID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDRecordingRecordingIDGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDRecordingRecordingIDGet:::recordingID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDUserUserIDRecordingGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDUserUserIDRecordingGet:::userID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCallflowCallflowIDDelete:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCallflowCallflowIDDelete:::callflowID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCallflowCallflowIDGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCallflowCallflowIDGet:::callflowID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCallflowCallflowIDPut:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCallflowCallflowIDPut:::callflowID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCallflowCallflowIDPut:::reqBody"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCallflowGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCallflowGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1AccountAccountIDCallflowGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1AccountAccountIDCallflowPost:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCallflowPost:::request"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDChannelChannelIDGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDChannelChannelIDGet:::channelID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDChannelChannelIDPost:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDChannelChannelIDPost:::channelID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDChannelChannelIDPost:::reqBody"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDChannelChannelIDPut:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDChannelChannelIDPut:::channelID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDChannelChannelIDPut:::reqBody"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDChannelGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDDeviceDeviceIDChannelGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDDeviceDeviceIDChannelGet:::deviceID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDUserUserIDChannelGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDUserUserIDChannelGet:::userID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCdrCdrIDGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCdrCdrIDGet:::cdrID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCdrGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDCdrGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1AccountAccountIDCdrGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1AccountAccountIDCdrGet:::created_from"]=0
operation_parameters_minimum_occurrences["v1AccountAccountIDCdrGet:::created_to"]=0
operation_parameters_minimum_occurrences["v1DataCallDailySummaryGet:::account_id"]=0
operation_parameters_minimum_occurrences["v1DataCallDailySummaryGet:::call_type"]=0
operation_parameters_minimum_occurrences["v1DataCallDailySummaryGet:::end_date"]=0
operation_parameters_minimum_occurrences["v1DataCallDailySummaryGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1DataCallDailySummaryGet:::start_date"]=0
operation_parameters_minimum_occurrences["v1DataCallDailySummaryGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1DataCallDetailGet:::account"]=0
operation_parameters_minimum_occurrences["v1DataCallDetailGet:::call_type"]=0
operation_parameters_minimum_occurrences["v1DataCallDetailGet:::callee_name"]=0
operation_parameters_minimum_occurrences["v1DataCallDetailGet:::callee_number"]=0
operation_parameters_minimum_occurrences["v1DataCallDetailGet:::caller_name"]=0
operation_parameters_minimum_occurrences["v1DataCallDetailGet:::caller_number"]=0
operation_parameters_minimum_occurrences["v1DataCallDetailGet:::end_date"]=0
operation_parameters_minimum_occurrences["v1DataCallDetailGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1DataCallDetailGet:::start_date"]=0
operation_parameters_minimum_occurrences["v1DataCallDetailGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1DataCallMonthlySummaryGet:::account"]=0
operation_parameters_minimum_occurrences["v1DataCallMonthlySummaryGet:::call_type"]=0
operation_parameters_minimum_occurrences["v1DataCallMonthlySummaryGet:::end_month"]=0
operation_parameters_minimum_occurrences["v1DataCallMonthlySummaryGet:::end_year"]=0
operation_parameters_minimum_occurrences["v1DataCallMonthlySummaryGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1DataCallMonthlySummaryGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1DataCallMonthlySummaryGet:::start_month"]=0
operation_parameters_minimum_occurrences["v1DataCallMonthlySummaryGet:::start_year"]=0
operation_parameters_minimum_occurrences["v1DataEndpointListGet:::endpoint_name"]=0
operation_parameters_minimum_occurrences["v1DataEndpointListGet:::feature_name"]=0
operation_parameters_minimum_occurrences["v1DataEndpointListGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1DataEndpointListGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1DataEndpointListGet:::transaction_type"]=0
operation_parameters_minimum_occurrences["v1DataEndpointListGet:::version"]=0
operation_parameters_minimum_occurrences["v1DataEventDailySummaryGet:::account_id"]=0
operation_parameters_minimum_occurrences["v1DataEventDailySummaryGet:::component"]=0
operation_parameters_minimum_occurrences["v1DataEventDailySummaryGet:::end_date"]=0
operation_parameters_minimum_occurrences["v1DataEventDailySummaryGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1DataEventDailySummaryGet:::start_date"]=0
operation_parameters_minimum_occurrences["v1DataEventDailySummaryGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1DataEventDetailGet:::account_id"]=0
operation_parameters_minimum_occurrences["v1DataEventDetailGet:::component"]=0
operation_parameters_minimum_occurrences["v1DataEventDetailGet:::end_date_time"]=0
operation_parameters_minimum_occurrences["v1DataEventDetailGet:::event_name"]=0
operation_parameters_minimum_occurrences["v1DataEventDetailGet:::exec_status"]=0
operation_parameters_minimum_occurrences["v1DataEventDetailGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1DataEventDetailGet:::start_date_time"]=0
operation_parameters_minimum_occurrences["v1DataEventDetailGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1DataEventDetailGet:::username"]=0
operation_parameters_minimum_occurrences["v1DataEventMonthlySummaryGet:::account_id"]=0
operation_parameters_minimum_occurrences["v1DataEventMonthlySummaryGet:::component"]=0
operation_parameters_minimum_occurrences["v1DataEventMonthlySummaryGet:::end_month"]=0
operation_parameters_minimum_occurrences["v1DataEventMonthlySummaryGet:::end_year"]=0
operation_parameters_minimum_occurrences["v1DataEventMonthlySummaryGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1DataEventMonthlySummaryGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1DataEventMonthlySummaryGet:::start_month"]=0
operation_parameters_minimum_occurrences["v1DataEventMonthlySummaryGet:::start_year"]=0
operation_parameters_minimum_occurrences["v1DataFeatureDailySummaryGet:::end_date"]=0
operation_parameters_minimum_occurrences["v1DataFeatureDailySummaryGet:::feature_name"]=0
operation_parameters_minimum_occurrences["v1DataFeatureDailySummaryGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1DataFeatureDailySummaryGet:::start_date"]=0
operation_parameters_minimum_occurrences["v1DataFeatureDailySummaryGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1DataFeatureMonthlySummaryGet:::end_month"]=0
operation_parameters_minimum_occurrences["v1DataFeatureMonthlySummaryGet:::end_year"]=0
operation_parameters_minimum_occurrences["v1DataFeatureMonthlySummaryGet:::feature_name"]=0
operation_parameters_minimum_occurrences["v1DataFeatureMonthlySummaryGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1DataFeatureMonthlySummaryGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1DataFeatureMonthlySummaryGet:::start_month"]=0
operation_parameters_minimum_occurrences["v1DataFeatureMonthlySummaryGet:::start_year"]=0
operation_parameters_minimum_occurrences["v1AccountAccountidDeviceDeviceidDelete:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidDeviceDeviceidDelete:::deviceid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidDeviceDeviceidGet:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidDeviceDeviceidGet:::deviceid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidDeviceDeviceidPut:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidDeviceDeviceidPut:::deviceid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidDeviceDeviceidPut:::device"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidDeviceDeviceidRebootPost:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidDeviceDeviceidRebootPost:::deviceid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidDeviceGet:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidDeviceGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1AccountAccountidDeviceGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1AccountAccountidDevicePost:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidDevicePost:::device"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidDeviceStatusGet:::accountid"]=1
operation_parameters_minimum_occurrences["v1E911LocationLocationIDActivatePut:::locationID"]=1
operation_parameters_minimum_occurrences["v1E911LocationLocationIDDelete:::locationID"]=1
operation_parameters_minimum_occurrences["v1E911LocationValidatePut:::reqBody"]=1
operation_parameters_minimum_occurrences["v1E911PhoneNumberDelete:::phoneNumber"]=1
operation_parameters_minimum_occurrences["v1E911PhoneNumberLocationActiveGet:::phoneNumber"]=1
operation_parameters_minimum_occurrences["v1E911PhoneNumberLocationGet:::phoneNumber"]=1
operation_parameters_minimum_occurrences["v1E911Post:::reqBody"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDGroupGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDGroupGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1AccountAccountIDGroupGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1AccountAccountIDGroupGroupIDDelete:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDGroupGroupIDDelete:::groupID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDGroupGroupIDGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDGroupGroupIDGet:::groupID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDGroupGroupIDPut:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDGroupGroupIDPut:::groupID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDGroupGroupIDPut:::reqBody"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDGroupPost:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDGroupPost:::group"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDMediaMediaIDFileGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDMediaMediaIDFileGet:::mediaID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDMediaMediaIDFilePost:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDMediaMediaIDFilePost:::mediaID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDMediaMediaIDFilePost:::file"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidMediaGet:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidMediaGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1AccountAccountidMediaGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1AccountAccountidMediaMediaidDelete:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidMediaMediaidDelete:::mediaid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidMediaMediaidGet:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidMediaMediaidGet:::mediaid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidMediaPost:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidMediaPost:::media"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDMenuGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDMenuGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1AccountAccountIDMenuGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1AccountAccountIDMenuMenuIDDelete:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDMenuMenuIDDelete:::menuID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDMenuMenuIDGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDMenuMenuIDGet:::menuID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDMenuMenuIDPut:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDMenuMenuIDPut:::menuID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDMenuMenuIDPut:::reqBody"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDMenuPost:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDMenuPost:::menu"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDDeviceDeviceIDMetaflowDelete:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDDeviceDeviceIDMetaflowDelete:::deviceID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDDeviceDeviceIDMetaflowGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDDeviceDeviceIDMetaflowGet:::deviceID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDDeviceDeviceIDMetaflowPost:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDDeviceDeviceIDMetaflowPost:::deviceID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDDeviceDeviceIDMetaflowPost:::reqBody"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDMetaflowDelete:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDMetaflowGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDMetaflowPost:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDMetaflowPost:::metaflow"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDUserUserIDMetaflowDelete:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDUserUserIDMetaflowDelete:::userID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDUserUserIDMetaflowGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDUserUserIDMetaflowGet:::userID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDUserUserIDMetaflowPost:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDUserUserIDMetaflowPost:::userID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDUserUserIDMetaflowPost:::reqBody"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidPhonenumberGet:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidPhonenumberGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1AccountAccountidPhonenumberGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1AccountPhonenumberAssignPost:::payload"]=1
operation_parameters_minimum_occurrences["v1AccountPhonenumberDisconnectPost:::payload"]=1
operation_parameters_minimum_occurrences["v1AccountPhonenumberGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1AccountPhonenumberGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1AccountPhonenumberPost:::phonenumber"]=1
operation_parameters_minimum_occurrences["v1AccountPhonenumberUnassignPost:::payload"]=1
operation_parameters_minimum_occurrences["v1PhonenumberSearchGet:::area_code"]=1
operation_parameters_minimum_occurrences["v1PhonenumberSearchGet:::quantity"]=0
operation_parameters_minimum_occurrences["v1AccountAccountIDPresenceExtensionPut:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDPresenceExtensionPut:::extension"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDPresenceExtensionPut:::reqBody"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDPresenceGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDUserUserIDPresencePut:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDUserUserIDPresencePut:::userID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDUserUserIDPresencePut:::reqBody"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDProvisionFilenameGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDProvisionFilenameGet:::filename"]=1
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyFamilyGet:::brand"]=1
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyFamilyGet:::family"]=1
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyFamilyModelGet:::brand"]=1
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyFamilyModelGet:::family"]=1
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyFamilyModelGet:::model_name"]=0
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyFamilyModelGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyFamilyModelGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyFamilyModelGet:::status"]=0
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyFamilyModelModelGet:::brand"]=1
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyFamilyModelModelGet:::family"]=1
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyFamilyModelModelGet:::model"]=1
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyFamilyModelModelTemplateGet:::brand"]=1
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyFamilyModelModelTemplateGet:::family"]=1
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyFamilyModelModelTemplateGet:::model"]=1
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyFamilyModelModelTemplateGet:::firmware"]=0
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyFamilyModelModelTemplateGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyFamilyModelModelTemplateGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyFamilyModelModelTemplateGet:::status"]=0
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyFamilyModelModelTemplateGet:::template_name"]=0
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet:::brand"]=1
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet:::family"]=1
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet:::model"]=1
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet:::template"]=1
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyGet:::brand"]=1
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyGet:::family_name"]=0
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1ApBrandBrandFamilyGet:::status"]=0
operation_parameters_minimum_occurrences["v1ApBrandBrandGet:::brand"]=1
operation_parameters_minimum_occurrences["v1ApBrandGet:::brand_name"]=0
operation_parameters_minimum_occurrences["v1ApBrandGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1ApBrandGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1ApBrandGet:::status"]=0
operation_parameters_minimum_occurrences["v1ApConfigfileGeneratePost:::params"]=1
operation_parameters_minimum_occurrences["v1SmsAccountAccountIDCampaignCampaignIDImportGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1SmsAccountAccountIDCampaignCampaignIDImportGet:::campaignID"]=1
operation_parameters_minimum_occurrences["v1SmsAccountAccountIDCampaignCampaignIDImportPost:::accountID"]=1
operation_parameters_minimum_occurrences["v1SmsAccountAccountIDCampaignCampaignIDImportPost:::campaignID"]=1
operation_parameters_minimum_occurrences["v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet:::campaignID"]=1
operation_parameters_minimum_occurrences["v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet:::page_num"]=0
operation_parameters_minimum_occurrences["v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut:::accountID"]=1
operation_parameters_minimum_occurrences["v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut:::campaignID"]=1
operation_parameters_minimum_occurrences["v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut:::reqBody"]=1
operation_parameters_minimum_occurrences["v1SmsAccountAccountIDCampaignImportGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1SmsAccountAccountIDCampaignImportGet:::page_num"]=0
operation_parameters_minimum_occurrences["v1SmsAccountAccountIDCampaignImportGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1AccountAccountIDStorageDelete:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDStorageGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDStoragePost:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDStoragePost:::reqBody"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDStoragePut:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDStoragePut:::reqBody"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDTemporalruleGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDTemporalruleGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1AccountAccountIDTemporalruleGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1AccountAccountIDTemporalrulePost:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDTemporalrulePost:::temporalrule"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDTemporalruleTemporalRuleIDDelete:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDTemporalruleTemporalRuleIDDelete:::temporalRuleID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDTemporalruleTemporalRuleIDGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDTemporalruleTemporalRuleIDGet:::temporalRuleID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDTemporalruleTemporalRuleIDPut:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDTemporalruleTemporalRuleIDPut:::temporalRuleID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDTemporalruleTemporalRuleIDPut:::reqBody"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDTemporalrulesetGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDTemporalrulesetGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1AccountAccountIDTemporalrulesetGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1AccountAccountIDTemporalrulesetPost:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDTemporalrulesetPost:::temporalruleset"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDTemporalrulesetTemporalRuleSetIDDelete:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDTemporalrulesetTemporalRuleSetIDDelete:::temporalRuleSetID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDTemporalrulesetTemporalRuleSetIDGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDTemporalrulesetTemporalRuleSetIDGet:::temporalRuleSetID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut:::temporalRuleSetID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut:::reqBody"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidUserGet:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidUserGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1AccountAccountidUserGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1AccountAccountidUserPost:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidUserPost:::user"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidUserUseridDelete:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidUserUseridDelete:::userid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidUserUseridGet:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidUserUseridGet:::userid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidUserUseridPut:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidUserUseridPut:::userid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidUserUseridPut:::user"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidUserUseridUserauthPost:::accountid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidUserUseridUserauthPost:::userid"]=1
operation_parameters_minimum_occurrences["v1AccountAccountidUserUseridUserauthPost:::user"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailPost:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailPost:::voicemail"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDDelete:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDDelete:::voicemailID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDGet:::voicemailID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageGet:::voicemailID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageGet:::start_key"]=0
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete:::voicemailID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete:::messageID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet:::voicemailID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet:::messageID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut:::voicemailID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut:::messageID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut:::reqBody"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet:::voicemailID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet:::messageID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost:::voicemailID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost:::messageID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost:::file"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessagePost:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessagePost:::voicemailID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessagePost:::message"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDPut:::accountID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDPut:::voicemailID"]=1
operation_parameters_minimum_occurrences["v1AccountAccountIDVoicemailVoicemailIDPut:::reqBody"]=1
operation_parameters_minimum_occurrences["v1WebhookAccountAccountIDGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1WebhookAccountAccountIDGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1WebhookAccountAccountIDGet:::current_page"]=0
operation_parameters_minimum_occurrences["v1WebhookAccountAccountIDPost:::accountID"]=1
operation_parameters_minimum_occurrences["v1WebhookAccountAccountIDPost:::body"]=1
operation_parameters_minimum_occurrences["v1WebhookAccountAccountIDWebhookIDDelete:::accountID"]=1
operation_parameters_minimum_occurrences["v1WebhookAccountAccountIDWebhookIDDelete:::webhookID"]=1
operation_parameters_minimum_occurrences["v1WebhookAccountAccountIDWebhookIDGet:::accountID"]=1
operation_parameters_minimum_occurrences["v1WebhookAccountAccountIDWebhookIDGet:::webhookID"]=1
operation_parameters_minimum_occurrences["v1WebhookAccountAccountIDWebhookIDPut:::accountID"]=1
operation_parameters_minimum_occurrences["v1WebhookAccountAccountIDWebhookIDPut:::webhookID"]=1
operation_parameters_minimum_occurrences["v1WebhookAccountAccountIDWebhookIDPut:::body"]=1

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["v1AccountAccountidChildrenGet:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidChildrenGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidChildrenGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidDelete:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidDnsrecordGet:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidDnsrecordPost:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidDnsrecordPut:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidDnsrecordPut:::dnsrecord"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidGet:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidLimitGet:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidLimitPut:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidLimitPut:::limit"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidPost:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidPost:::account"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidProvisioningdetailsGet:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidProvisioningdetailsResetpwPut:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidPut:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidPut:::account"]=0
operation_parameters_maximum_occurrences["v1AccountGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1AccountGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1AccountPost:::account"]=0
operation_parameters_maximum_occurrences["v1MgmtUserGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1MgmtUserGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1MgmtUserGet:::sort"]=0
operation_parameters_maximum_occurrences["v1MgmtUserGet:::email"]=0
operation_parameters_maximum_occurrences["v1MgmtUserGet:::role"]=0
operation_parameters_maximum_occurrences["v1MgmtUserGet:::first_name"]=0
operation_parameters_maximum_occurrences["v1MgmtUserGet:::last_name"]=0
operation_parameters_maximum_occurrences["v1MgmtUserPost:::reqBody"]=0
operation_parameters_maximum_occurrences["v1MgmtUserUserIDDelete:::userID"]=0
operation_parameters_maximum_occurrences["v1MgmtUserUserIDGet:::userID"]=0
operation_parameters_maximum_occurrences["v1MgmtUserUserIDPut:::userID"]=0
operation_parameters_maximum_occurrences["v1MgmtUserUserIDPut:::reqBody"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDParkedcallGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCallqueueGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCallqueuePost:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCallqueuePost:::reqBody"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCallqueueQueueIDDelete:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCallqueueQueueIDDelete:::queueID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCallqueueQueueIDGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCallqueueQueueIDGet:::queueID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCallqueueQueueIDPut:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCallqueueQueueIDPut:::queueID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCallqueueQueueIDPut:::reqBody"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCallqueueQueueIDStatusGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCallqueueQueueIDStatusGet:::queueID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDQueuerolesGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDQueuerolesQueueIDPost:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDQueuerolesQueueIDPost:::queueID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDQueuerolesQueueIDPost:::reqBody"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDQueuemembershipPost:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDQueuemembershipPost:::reqBody"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDQueuemembershipRecipientIDDisablePost:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDQueuemembershipRecipientIDDisablePost:::recipientID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDQueuemembershipRecipientIDEnablePost:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDQueuemembershipRecipientIDEnablePost:::recipientID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDQueuemembershipRecipientIDEnablePost:::reqBody"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDLoginrecipientRecipientIDPost:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDLoginrecipientRecipientIDPost:::recipientID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDLoginrecipientRecipientIDPost:::reqBody"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDQueuerecipientGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDRecipientRecipientIDStatusPost:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDRecipientRecipientIDStatusPost:::recipientID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDRecipientRecipientIDStatusPost:::reqBody"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDRecordingGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDRecordingRecordingIDDelete:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDRecordingRecordingIDDelete:::recordingID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDRecordingRecordingIDGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDRecordingRecordingIDGet:::recordingID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDUserUserIDRecordingGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDUserUserIDRecordingGet:::userID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCallflowCallflowIDDelete:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCallflowCallflowIDDelete:::callflowID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCallflowCallflowIDGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCallflowCallflowIDGet:::callflowID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCallflowCallflowIDPut:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCallflowCallflowIDPut:::callflowID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCallflowCallflowIDPut:::reqBody"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCallflowGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCallflowGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCallflowGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCallflowPost:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCallflowPost:::request"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDChannelChannelIDGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDChannelChannelIDGet:::channelID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDChannelChannelIDPost:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDChannelChannelIDPost:::channelID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDChannelChannelIDPost:::reqBody"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDChannelChannelIDPut:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDChannelChannelIDPut:::channelID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDChannelChannelIDPut:::reqBody"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDChannelGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDDeviceDeviceIDChannelGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDDeviceDeviceIDChannelGet:::deviceID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDUserUserIDChannelGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDUserUserIDChannelGet:::userID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCdrCdrIDGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCdrCdrIDGet:::cdrID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCdrGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCdrGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCdrGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCdrGet:::created_from"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDCdrGet:::created_to"]=0
operation_parameters_maximum_occurrences["v1DataCallDailySummaryGet:::account_id"]=0
operation_parameters_maximum_occurrences["v1DataCallDailySummaryGet:::call_type"]=0
operation_parameters_maximum_occurrences["v1DataCallDailySummaryGet:::end_date"]=0
operation_parameters_maximum_occurrences["v1DataCallDailySummaryGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1DataCallDailySummaryGet:::start_date"]=0
operation_parameters_maximum_occurrences["v1DataCallDailySummaryGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1DataCallDetailGet:::account"]=0
operation_parameters_maximum_occurrences["v1DataCallDetailGet:::call_type"]=0
operation_parameters_maximum_occurrences["v1DataCallDetailGet:::callee_name"]=0
operation_parameters_maximum_occurrences["v1DataCallDetailGet:::callee_number"]=0
operation_parameters_maximum_occurrences["v1DataCallDetailGet:::caller_name"]=0
operation_parameters_maximum_occurrences["v1DataCallDetailGet:::caller_number"]=0
operation_parameters_maximum_occurrences["v1DataCallDetailGet:::end_date"]=0
operation_parameters_maximum_occurrences["v1DataCallDetailGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1DataCallDetailGet:::start_date"]=0
operation_parameters_maximum_occurrences["v1DataCallDetailGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1DataCallMonthlySummaryGet:::account"]=0
operation_parameters_maximum_occurrences["v1DataCallMonthlySummaryGet:::call_type"]=0
operation_parameters_maximum_occurrences["v1DataCallMonthlySummaryGet:::end_month"]=0
operation_parameters_maximum_occurrences["v1DataCallMonthlySummaryGet:::end_year"]=0
operation_parameters_maximum_occurrences["v1DataCallMonthlySummaryGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1DataCallMonthlySummaryGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1DataCallMonthlySummaryGet:::start_month"]=0
operation_parameters_maximum_occurrences["v1DataCallMonthlySummaryGet:::start_year"]=0
operation_parameters_maximum_occurrences["v1DataEndpointListGet:::endpoint_name"]=0
operation_parameters_maximum_occurrences["v1DataEndpointListGet:::feature_name"]=0
operation_parameters_maximum_occurrences["v1DataEndpointListGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1DataEndpointListGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1DataEndpointListGet:::transaction_type"]=0
operation_parameters_maximum_occurrences["v1DataEndpointListGet:::version"]=0
operation_parameters_maximum_occurrences["v1DataEventDailySummaryGet:::account_id"]=0
operation_parameters_maximum_occurrences["v1DataEventDailySummaryGet:::component"]=0
operation_parameters_maximum_occurrences["v1DataEventDailySummaryGet:::end_date"]=0
operation_parameters_maximum_occurrences["v1DataEventDailySummaryGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1DataEventDailySummaryGet:::start_date"]=0
operation_parameters_maximum_occurrences["v1DataEventDailySummaryGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1DataEventDetailGet:::account_id"]=0
operation_parameters_maximum_occurrences["v1DataEventDetailGet:::component"]=0
operation_parameters_maximum_occurrences["v1DataEventDetailGet:::end_date_time"]=0
operation_parameters_maximum_occurrences["v1DataEventDetailGet:::event_name"]=0
operation_parameters_maximum_occurrences["v1DataEventDetailGet:::exec_status"]=0
operation_parameters_maximum_occurrences["v1DataEventDetailGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1DataEventDetailGet:::start_date_time"]=0
operation_parameters_maximum_occurrences["v1DataEventDetailGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1DataEventDetailGet:::username"]=0
operation_parameters_maximum_occurrences["v1DataEventMonthlySummaryGet:::account_id"]=0
operation_parameters_maximum_occurrences["v1DataEventMonthlySummaryGet:::component"]=0
operation_parameters_maximum_occurrences["v1DataEventMonthlySummaryGet:::end_month"]=0
operation_parameters_maximum_occurrences["v1DataEventMonthlySummaryGet:::end_year"]=0
operation_parameters_maximum_occurrences["v1DataEventMonthlySummaryGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1DataEventMonthlySummaryGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1DataEventMonthlySummaryGet:::start_month"]=0
operation_parameters_maximum_occurrences["v1DataEventMonthlySummaryGet:::start_year"]=0
operation_parameters_maximum_occurrences["v1DataFeatureDailySummaryGet:::end_date"]=0
operation_parameters_maximum_occurrences["v1DataFeatureDailySummaryGet:::feature_name"]=0
operation_parameters_maximum_occurrences["v1DataFeatureDailySummaryGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1DataFeatureDailySummaryGet:::start_date"]=0
operation_parameters_maximum_occurrences["v1DataFeatureDailySummaryGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1DataFeatureMonthlySummaryGet:::end_month"]=0
operation_parameters_maximum_occurrences["v1DataFeatureMonthlySummaryGet:::end_year"]=0
operation_parameters_maximum_occurrences["v1DataFeatureMonthlySummaryGet:::feature_name"]=0
operation_parameters_maximum_occurrences["v1DataFeatureMonthlySummaryGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1DataFeatureMonthlySummaryGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1DataFeatureMonthlySummaryGet:::start_month"]=0
operation_parameters_maximum_occurrences["v1DataFeatureMonthlySummaryGet:::start_year"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidDeviceDeviceidDelete:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidDeviceDeviceidDelete:::deviceid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidDeviceDeviceidGet:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidDeviceDeviceidGet:::deviceid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidDeviceDeviceidPut:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidDeviceDeviceidPut:::deviceid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidDeviceDeviceidPut:::device"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidDeviceDeviceidRebootPost:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidDeviceDeviceidRebootPost:::deviceid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidDeviceGet:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidDeviceGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidDeviceGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidDevicePost:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidDevicePost:::device"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidDeviceStatusGet:::accountid"]=0
operation_parameters_maximum_occurrences["v1E911LocationLocationIDActivatePut:::locationID"]=0
operation_parameters_maximum_occurrences["v1E911LocationLocationIDDelete:::locationID"]=0
operation_parameters_maximum_occurrences["v1E911LocationValidatePut:::reqBody"]=0
operation_parameters_maximum_occurrences["v1E911PhoneNumberDelete:::phoneNumber"]=0
operation_parameters_maximum_occurrences["v1E911PhoneNumberLocationActiveGet:::phoneNumber"]=0
operation_parameters_maximum_occurrences["v1E911PhoneNumberLocationGet:::phoneNumber"]=0
operation_parameters_maximum_occurrences["v1E911Post:::reqBody"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDGroupGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDGroupGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDGroupGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDGroupGroupIDDelete:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDGroupGroupIDDelete:::groupID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDGroupGroupIDGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDGroupGroupIDGet:::groupID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDGroupGroupIDPut:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDGroupGroupIDPut:::groupID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDGroupGroupIDPut:::reqBody"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDGroupPost:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDGroupPost:::group"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDMediaMediaIDFileGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDMediaMediaIDFileGet:::mediaID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDMediaMediaIDFilePost:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDMediaMediaIDFilePost:::mediaID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDMediaMediaIDFilePost:::file"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidMediaGet:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidMediaGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidMediaGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidMediaMediaidDelete:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidMediaMediaidDelete:::mediaid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidMediaMediaidGet:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidMediaMediaidGet:::mediaid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidMediaPost:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidMediaPost:::media"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDMenuGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDMenuGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDMenuGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDMenuMenuIDDelete:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDMenuMenuIDDelete:::menuID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDMenuMenuIDGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDMenuMenuIDGet:::menuID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDMenuMenuIDPut:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDMenuMenuIDPut:::menuID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDMenuMenuIDPut:::reqBody"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDMenuPost:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDMenuPost:::menu"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDDeviceDeviceIDMetaflowDelete:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDDeviceDeviceIDMetaflowDelete:::deviceID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDDeviceDeviceIDMetaflowGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDDeviceDeviceIDMetaflowGet:::deviceID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDDeviceDeviceIDMetaflowPost:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDDeviceDeviceIDMetaflowPost:::deviceID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDDeviceDeviceIDMetaflowPost:::reqBody"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDMetaflowDelete:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDMetaflowGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDMetaflowPost:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDMetaflowPost:::metaflow"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDUserUserIDMetaflowDelete:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDUserUserIDMetaflowDelete:::userID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDUserUserIDMetaflowGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDUserUserIDMetaflowGet:::userID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDUserUserIDMetaflowPost:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDUserUserIDMetaflowPost:::userID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDUserUserIDMetaflowPost:::reqBody"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidPhonenumberGet:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidPhonenumberGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidPhonenumberGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1AccountPhonenumberAssignPost:::payload"]=0
operation_parameters_maximum_occurrences["v1AccountPhonenumberDisconnectPost:::payload"]=0
operation_parameters_maximum_occurrences["v1AccountPhonenumberGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1AccountPhonenumberGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1AccountPhonenumberPost:::phonenumber"]=0
operation_parameters_maximum_occurrences["v1AccountPhonenumberUnassignPost:::payload"]=0
operation_parameters_maximum_occurrences["v1PhonenumberSearchGet:::area_code"]=0
operation_parameters_maximum_occurrences["v1PhonenumberSearchGet:::quantity"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDPresenceExtensionPut:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDPresenceExtensionPut:::extension"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDPresenceExtensionPut:::reqBody"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDPresenceGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDUserUserIDPresencePut:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDUserUserIDPresencePut:::userID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDUserUserIDPresencePut:::reqBody"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDProvisionFilenameGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDProvisionFilenameGet:::filename"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyFamilyGet:::brand"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyFamilyGet:::family"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyFamilyModelGet:::brand"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyFamilyModelGet:::family"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyFamilyModelGet:::model_name"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyFamilyModelGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyFamilyModelGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyFamilyModelGet:::status"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyFamilyModelModelGet:::brand"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyFamilyModelModelGet:::family"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyFamilyModelModelGet:::model"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyFamilyModelModelTemplateGet:::brand"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyFamilyModelModelTemplateGet:::family"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyFamilyModelModelTemplateGet:::model"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyFamilyModelModelTemplateGet:::firmware"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyFamilyModelModelTemplateGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyFamilyModelModelTemplateGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyFamilyModelModelTemplateGet:::status"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyFamilyModelModelTemplateGet:::template_name"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet:::brand"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet:::family"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet:::model"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet:::template"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyGet:::brand"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyGet:::family_name"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandFamilyGet:::status"]=0
operation_parameters_maximum_occurrences["v1ApBrandBrandGet:::brand"]=0
operation_parameters_maximum_occurrences["v1ApBrandGet:::brand_name"]=0
operation_parameters_maximum_occurrences["v1ApBrandGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1ApBrandGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1ApBrandGet:::status"]=0
operation_parameters_maximum_occurrences["v1ApConfigfileGeneratePost:::params"]=0
operation_parameters_maximum_occurrences["v1SmsAccountAccountIDCampaignCampaignIDImportGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1SmsAccountAccountIDCampaignCampaignIDImportGet:::campaignID"]=0
operation_parameters_maximum_occurrences["v1SmsAccountAccountIDCampaignCampaignIDImportPost:::accountID"]=0
operation_parameters_maximum_occurrences["v1SmsAccountAccountIDCampaignCampaignIDImportPost:::campaignID"]=0
operation_parameters_maximum_occurrences["v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet:::campaignID"]=0
operation_parameters_maximum_occurrences["v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet:::page_num"]=0
operation_parameters_maximum_occurrences["v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut:::accountID"]=0
operation_parameters_maximum_occurrences["v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut:::campaignID"]=0
operation_parameters_maximum_occurrences["v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut:::reqBody"]=0
operation_parameters_maximum_occurrences["v1SmsAccountAccountIDCampaignImportGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1SmsAccountAccountIDCampaignImportGet:::page_num"]=0
operation_parameters_maximum_occurrences["v1SmsAccountAccountIDCampaignImportGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDStorageDelete:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDStorageGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDStoragePost:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDStoragePost:::reqBody"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDStoragePut:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDStoragePut:::reqBody"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDTemporalruleGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDTemporalruleGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDTemporalruleGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDTemporalrulePost:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDTemporalrulePost:::temporalrule"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDTemporalruleTemporalRuleIDDelete:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDTemporalruleTemporalRuleIDDelete:::temporalRuleID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDTemporalruleTemporalRuleIDGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDTemporalruleTemporalRuleIDGet:::temporalRuleID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDTemporalruleTemporalRuleIDPut:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDTemporalruleTemporalRuleIDPut:::temporalRuleID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDTemporalruleTemporalRuleIDPut:::reqBody"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDTemporalrulesetGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDTemporalrulesetGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDTemporalrulesetGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDTemporalrulesetPost:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDTemporalrulesetPost:::temporalruleset"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDTemporalrulesetTemporalRuleSetIDDelete:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDTemporalrulesetTemporalRuleSetIDDelete:::temporalRuleSetID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDTemporalrulesetTemporalRuleSetIDGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDTemporalrulesetTemporalRuleSetIDGet:::temporalRuleSetID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut:::temporalRuleSetID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut:::reqBody"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidUserGet:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidUserGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidUserGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidUserPost:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidUserPost:::user"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidUserUseridDelete:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidUserUseridDelete:::userid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidUserUseridGet:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidUserUseridGet:::userid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidUserUseridPut:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidUserUseridPut:::userid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidUserUseridPut:::user"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidUserUseridUserauthPost:::accountid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidUserUseridUserauthPost:::userid"]=0
operation_parameters_maximum_occurrences["v1AccountAccountidUserUseridUserauthPost:::user"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailPost:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailPost:::voicemail"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDDelete:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDDelete:::voicemailID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDGet:::voicemailID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageGet:::voicemailID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageGet:::start_key"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete:::voicemailID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete:::messageID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet:::voicemailID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet:::messageID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut:::voicemailID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut:::messageID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut:::reqBody"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet:::voicemailID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet:::messageID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost:::voicemailID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost:::messageID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost:::file"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessagePost:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessagePost:::voicemailID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDMessagePost:::message"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDPut:::accountID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDPut:::voicemailID"]=0
operation_parameters_maximum_occurrences["v1AccountAccountIDVoicemailVoicemailIDPut:::reqBody"]=0
operation_parameters_maximum_occurrences["v1WebhookAccountAccountIDGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1WebhookAccountAccountIDGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1WebhookAccountAccountIDGet:::current_page"]=0
operation_parameters_maximum_occurrences["v1WebhookAccountAccountIDPost:::accountID"]=0
operation_parameters_maximum_occurrences["v1WebhookAccountAccountIDPost:::body"]=0
operation_parameters_maximum_occurrences["v1WebhookAccountAccountIDWebhookIDDelete:::accountID"]=0
operation_parameters_maximum_occurrences["v1WebhookAccountAccountIDWebhookIDDelete:::webhookID"]=0
operation_parameters_maximum_occurrences["v1WebhookAccountAccountIDWebhookIDGet:::accountID"]=0
operation_parameters_maximum_occurrences["v1WebhookAccountAccountIDWebhookIDGet:::webhookID"]=0
operation_parameters_maximum_occurrences["v1WebhookAccountAccountIDWebhookIDPut:::accountID"]=0
operation_parameters_maximum_occurrences["v1WebhookAccountAccountIDWebhookIDPut:::webhookID"]=0
operation_parameters_maximum_occurrences["v1WebhookAccountAccountIDWebhookIDPut:::body"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["v1AccountAccountidChildrenGet:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidChildrenGet:::start_key"]=""
operation_parameters_collection_type["v1AccountAccountidChildrenGet:::page_size"]=""
operation_parameters_collection_type["v1AccountAccountidDelete:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidDnsrecordGet:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidDnsrecordPost:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidDnsrecordPut:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidDnsrecordPut:::dnsrecord"]=""
operation_parameters_collection_type["v1AccountAccountidGet:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidLimitGet:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidLimitPut:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidLimitPut:::limit"]=""
operation_parameters_collection_type["v1AccountAccountidPost:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidPost:::account"]=""
operation_parameters_collection_type["v1AccountAccountidProvisioningdetailsGet:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidProvisioningdetailsResetpwPut:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidPut:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidPut:::account"]=""
operation_parameters_collection_type["v1AccountGet:::start_key"]=""
operation_parameters_collection_type["v1AccountGet:::page_size"]=""
operation_parameters_collection_type["v1AccountPost:::account"]=""
operation_parameters_collection_type["v1MgmtUserGet:::page_size"]=""
operation_parameters_collection_type["v1MgmtUserGet:::start_key"]=""
operation_parameters_collection_type["v1MgmtUserGet:::sort"]=""
operation_parameters_collection_type["v1MgmtUserGet:::email"]=""
operation_parameters_collection_type["v1MgmtUserGet:::role"]=""
operation_parameters_collection_type["v1MgmtUserGet:::first_name"]=""
operation_parameters_collection_type["v1MgmtUserGet:::last_name"]=""
operation_parameters_collection_type["v1MgmtUserPost:::reqBody"]=""
operation_parameters_collection_type["v1MgmtUserUserIDDelete:::userID"]=""
operation_parameters_collection_type["v1MgmtUserUserIDGet:::userID"]=""
operation_parameters_collection_type["v1MgmtUserUserIDPut:::userID"]=""
operation_parameters_collection_type["v1MgmtUserUserIDPut:::reqBody"]=""
operation_parameters_collection_type["v1AccountAccountIDParkedcallGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDCallqueueGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDCallqueuePost:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDCallqueuePost:::reqBody"]=""
operation_parameters_collection_type["v1AccountAccountIDCallqueueQueueIDDelete:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDCallqueueQueueIDDelete:::queueID"]=""
operation_parameters_collection_type["v1AccountAccountIDCallqueueQueueIDGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDCallqueueQueueIDGet:::queueID"]=""
operation_parameters_collection_type["v1AccountAccountIDCallqueueQueueIDPut:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDCallqueueQueueIDPut:::queueID"]=""
operation_parameters_collection_type["v1AccountAccountIDCallqueueQueueIDPut:::reqBody"]=""
operation_parameters_collection_type["v1AccountAccountIDCallqueueQueueIDStatusGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDCallqueueQueueIDStatusGet:::queueID"]=""
operation_parameters_collection_type["v1AccountAccountIDQueuerolesGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDQueuerolesQueueIDPost:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDQueuerolesQueueIDPost:::queueID"]=""
operation_parameters_collection_type["v1AccountAccountIDQueuerolesQueueIDPost:::reqBody"]=""
operation_parameters_collection_type["v1AccountAccountIDQueuemembershipPost:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDQueuemembershipPost:::reqBody"]=""
operation_parameters_collection_type["v1AccountAccountIDQueuemembershipRecipientIDDisablePost:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDQueuemembershipRecipientIDDisablePost:::recipientID"]=""
operation_parameters_collection_type["v1AccountAccountIDQueuemembershipRecipientIDEnablePost:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDQueuemembershipRecipientIDEnablePost:::recipientID"]=""
operation_parameters_collection_type["v1AccountAccountIDQueuemembershipRecipientIDEnablePost:::reqBody"]=""
operation_parameters_collection_type["v1AccountAccountIDLoginrecipientRecipientIDPost:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDLoginrecipientRecipientIDPost:::recipientID"]=""
operation_parameters_collection_type["v1AccountAccountIDLoginrecipientRecipientIDPost:::reqBody"]=""
operation_parameters_collection_type["v1AccountAccountIDQueuerecipientGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDRecipientRecipientIDStatusPost:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDRecipientRecipientIDStatusPost:::recipientID"]=""
operation_parameters_collection_type["v1AccountAccountIDRecipientRecipientIDStatusPost:::reqBody"]=""
operation_parameters_collection_type["v1AccountAccountIDRecordingGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDRecordingRecordingIDDelete:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDRecordingRecordingIDDelete:::recordingID"]=""
operation_parameters_collection_type["v1AccountAccountIDRecordingRecordingIDGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDRecordingRecordingIDGet:::recordingID"]=""
operation_parameters_collection_type["v1AccountAccountIDUserUserIDRecordingGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDUserUserIDRecordingGet:::userID"]=""
operation_parameters_collection_type["v1AccountAccountIDCallflowCallflowIDDelete:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDCallflowCallflowIDDelete:::callflowID"]=""
operation_parameters_collection_type["v1AccountAccountIDCallflowCallflowIDGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDCallflowCallflowIDGet:::callflowID"]=""
operation_parameters_collection_type["v1AccountAccountIDCallflowCallflowIDPut:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDCallflowCallflowIDPut:::callflowID"]=""
operation_parameters_collection_type["v1AccountAccountIDCallflowCallflowIDPut:::reqBody"]=""
operation_parameters_collection_type["v1AccountAccountIDCallflowGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDCallflowGet:::start_key"]=""
operation_parameters_collection_type["v1AccountAccountIDCallflowGet:::page_size"]=""
operation_parameters_collection_type["v1AccountAccountIDCallflowPost:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDCallflowPost:::request"]=""
operation_parameters_collection_type["v1AccountAccountIDChannelChannelIDGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDChannelChannelIDGet:::channelID"]=""
operation_parameters_collection_type["v1AccountAccountIDChannelChannelIDPost:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDChannelChannelIDPost:::channelID"]=""
operation_parameters_collection_type["v1AccountAccountIDChannelChannelIDPost:::reqBody"]=""
operation_parameters_collection_type["v1AccountAccountIDChannelChannelIDPut:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDChannelChannelIDPut:::channelID"]=""
operation_parameters_collection_type["v1AccountAccountIDChannelChannelIDPut:::reqBody"]=""
operation_parameters_collection_type["v1AccountAccountIDChannelGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDDeviceDeviceIDChannelGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDDeviceDeviceIDChannelGet:::deviceID"]=""
operation_parameters_collection_type["v1AccountAccountIDUserUserIDChannelGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDUserUserIDChannelGet:::userID"]=""
operation_parameters_collection_type["v1AccountAccountIDCdrCdrIDGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDCdrCdrIDGet:::cdrID"]=""
operation_parameters_collection_type["v1AccountAccountIDCdrGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDCdrGet:::page_size"]=""
operation_parameters_collection_type["v1AccountAccountIDCdrGet:::start_key"]=""
operation_parameters_collection_type["v1AccountAccountIDCdrGet:::created_from"]=""
operation_parameters_collection_type["v1AccountAccountIDCdrGet:::created_to"]=""
operation_parameters_collection_type["v1DataCallDailySummaryGet:::account_id"]=""
operation_parameters_collection_type["v1DataCallDailySummaryGet:::call_type"]=""
operation_parameters_collection_type["v1DataCallDailySummaryGet:::end_date"]=""
operation_parameters_collection_type["v1DataCallDailySummaryGet:::page_size"]=""
operation_parameters_collection_type["v1DataCallDailySummaryGet:::start_date"]=""
operation_parameters_collection_type["v1DataCallDailySummaryGet:::start_key"]=""
operation_parameters_collection_type["v1DataCallDetailGet:::account"]=""
operation_parameters_collection_type["v1DataCallDetailGet:::call_type"]=""
operation_parameters_collection_type["v1DataCallDetailGet:::callee_name"]=""
operation_parameters_collection_type["v1DataCallDetailGet:::callee_number"]=""
operation_parameters_collection_type["v1DataCallDetailGet:::caller_name"]=""
operation_parameters_collection_type["v1DataCallDetailGet:::caller_number"]=""
operation_parameters_collection_type["v1DataCallDetailGet:::end_date"]=""
operation_parameters_collection_type["v1DataCallDetailGet:::page_size"]=""
operation_parameters_collection_type["v1DataCallDetailGet:::start_date"]=""
operation_parameters_collection_type["v1DataCallDetailGet:::start_key"]=""
operation_parameters_collection_type["v1DataCallMonthlySummaryGet:::account"]=""
operation_parameters_collection_type["v1DataCallMonthlySummaryGet:::call_type"]=""
operation_parameters_collection_type["v1DataCallMonthlySummaryGet:::end_month"]=""
operation_parameters_collection_type["v1DataCallMonthlySummaryGet:::end_year"]=""
operation_parameters_collection_type["v1DataCallMonthlySummaryGet:::page_size"]=""
operation_parameters_collection_type["v1DataCallMonthlySummaryGet:::start_key"]=""
operation_parameters_collection_type["v1DataCallMonthlySummaryGet:::start_month"]=""
operation_parameters_collection_type["v1DataCallMonthlySummaryGet:::start_year"]=""
operation_parameters_collection_type["v1DataEndpointListGet:::endpoint_name"]=""
operation_parameters_collection_type["v1DataEndpointListGet:::feature_name"]=""
operation_parameters_collection_type["v1DataEndpointListGet:::page_size"]=""
operation_parameters_collection_type["v1DataEndpointListGet:::start_key"]=""
operation_parameters_collection_type["v1DataEndpointListGet:::transaction_type"]=""
operation_parameters_collection_type["v1DataEndpointListGet:::version"]=""
operation_parameters_collection_type["v1DataEventDailySummaryGet:::account_id"]=""
operation_parameters_collection_type["v1DataEventDailySummaryGet:::component"]=""
operation_parameters_collection_type["v1DataEventDailySummaryGet:::end_date"]=""
operation_parameters_collection_type["v1DataEventDailySummaryGet:::page_size"]=""
operation_parameters_collection_type["v1DataEventDailySummaryGet:::start_date"]=""
operation_parameters_collection_type["v1DataEventDailySummaryGet:::start_key"]=""
operation_parameters_collection_type["v1DataEventDetailGet:::account_id"]=""
operation_parameters_collection_type["v1DataEventDetailGet:::component"]=""
operation_parameters_collection_type["v1DataEventDetailGet:::end_date_time"]=""
operation_parameters_collection_type["v1DataEventDetailGet:::event_name"]=""
operation_parameters_collection_type["v1DataEventDetailGet:::exec_status"]=""
operation_parameters_collection_type["v1DataEventDetailGet:::page_size"]=""
operation_parameters_collection_type["v1DataEventDetailGet:::start_date_time"]=""
operation_parameters_collection_type["v1DataEventDetailGet:::start_key"]=""
operation_parameters_collection_type["v1DataEventDetailGet:::username"]=""
operation_parameters_collection_type["v1DataEventMonthlySummaryGet:::account_id"]=""
operation_parameters_collection_type["v1DataEventMonthlySummaryGet:::component"]=""
operation_parameters_collection_type["v1DataEventMonthlySummaryGet:::end_month"]=""
operation_parameters_collection_type["v1DataEventMonthlySummaryGet:::end_year"]=""
operation_parameters_collection_type["v1DataEventMonthlySummaryGet:::page_size"]=""
operation_parameters_collection_type["v1DataEventMonthlySummaryGet:::start_key"]=""
operation_parameters_collection_type["v1DataEventMonthlySummaryGet:::start_month"]=""
operation_parameters_collection_type["v1DataEventMonthlySummaryGet:::start_year"]=""
operation_parameters_collection_type["v1DataFeatureDailySummaryGet:::end_date"]=""
operation_parameters_collection_type["v1DataFeatureDailySummaryGet:::feature_name"]=""
operation_parameters_collection_type["v1DataFeatureDailySummaryGet:::page_size"]=""
operation_parameters_collection_type["v1DataFeatureDailySummaryGet:::start_date"]=""
operation_parameters_collection_type["v1DataFeatureDailySummaryGet:::start_key"]=""
operation_parameters_collection_type["v1DataFeatureMonthlySummaryGet:::end_month"]=""
operation_parameters_collection_type["v1DataFeatureMonthlySummaryGet:::end_year"]=""
operation_parameters_collection_type["v1DataFeatureMonthlySummaryGet:::feature_name"]=""
operation_parameters_collection_type["v1DataFeatureMonthlySummaryGet:::page_size"]=""
operation_parameters_collection_type["v1DataFeatureMonthlySummaryGet:::start_key"]=""
operation_parameters_collection_type["v1DataFeatureMonthlySummaryGet:::start_month"]=""
operation_parameters_collection_type["v1DataFeatureMonthlySummaryGet:::start_year"]=""
operation_parameters_collection_type["v1AccountAccountidDeviceDeviceidDelete:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidDeviceDeviceidDelete:::deviceid"]=""
operation_parameters_collection_type["v1AccountAccountidDeviceDeviceidGet:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidDeviceDeviceidGet:::deviceid"]=""
operation_parameters_collection_type["v1AccountAccountidDeviceDeviceidPut:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidDeviceDeviceidPut:::deviceid"]=""
operation_parameters_collection_type["v1AccountAccountidDeviceDeviceidPut:::device"]=""
operation_parameters_collection_type["v1AccountAccountidDeviceDeviceidRebootPost:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidDeviceDeviceidRebootPost:::deviceid"]=""
operation_parameters_collection_type["v1AccountAccountidDeviceGet:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidDeviceGet:::start_key"]=""
operation_parameters_collection_type["v1AccountAccountidDeviceGet:::page_size"]=""
operation_parameters_collection_type["v1AccountAccountidDevicePost:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidDevicePost:::device"]=""
operation_parameters_collection_type["v1AccountAccountidDeviceStatusGet:::accountid"]=""
operation_parameters_collection_type["v1E911LocationLocationIDActivatePut:::locationID"]=""
operation_parameters_collection_type["v1E911LocationLocationIDDelete:::locationID"]=""
operation_parameters_collection_type["v1E911LocationValidatePut:::reqBody"]=""
operation_parameters_collection_type["v1E911PhoneNumberDelete:::phoneNumber"]=""
operation_parameters_collection_type["v1E911PhoneNumberLocationActiveGet:::phoneNumber"]=""
operation_parameters_collection_type["v1E911PhoneNumberLocationGet:::phoneNumber"]=""
operation_parameters_collection_type["v1E911Post:::reqBody"]=""
operation_parameters_collection_type["v1AccountAccountIDGroupGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDGroupGet:::start_key"]=""
operation_parameters_collection_type["v1AccountAccountIDGroupGet:::page_size"]=""
operation_parameters_collection_type["v1AccountAccountIDGroupGroupIDDelete:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDGroupGroupIDDelete:::groupID"]=""
operation_parameters_collection_type["v1AccountAccountIDGroupGroupIDGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDGroupGroupIDGet:::groupID"]=""
operation_parameters_collection_type["v1AccountAccountIDGroupGroupIDPut:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDGroupGroupIDPut:::groupID"]=""
operation_parameters_collection_type["v1AccountAccountIDGroupGroupIDPut:::reqBody"]=""
operation_parameters_collection_type["v1AccountAccountIDGroupPost:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDGroupPost:::group"]=""
operation_parameters_collection_type["v1AccountAccountIDMediaMediaIDFileGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDMediaMediaIDFileGet:::mediaID"]=""
operation_parameters_collection_type["v1AccountAccountIDMediaMediaIDFilePost:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDMediaMediaIDFilePost:::mediaID"]=""
operation_parameters_collection_type["v1AccountAccountIDMediaMediaIDFilePost:::file"]=""
operation_parameters_collection_type["v1AccountAccountidMediaGet:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidMediaGet:::start_key"]=""
operation_parameters_collection_type["v1AccountAccountidMediaGet:::page_size"]=""
operation_parameters_collection_type["v1AccountAccountidMediaMediaidDelete:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidMediaMediaidDelete:::mediaid"]=""
operation_parameters_collection_type["v1AccountAccountidMediaMediaidGet:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidMediaMediaidGet:::mediaid"]=""
operation_parameters_collection_type["v1AccountAccountidMediaPost:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidMediaPost:::media"]=""
operation_parameters_collection_type["v1AccountAccountIDMenuGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDMenuGet:::start_key"]=""
operation_parameters_collection_type["v1AccountAccountIDMenuGet:::page_size"]=""
operation_parameters_collection_type["v1AccountAccountIDMenuMenuIDDelete:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDMenuMenuIDDelete:::menuID"]=""
operation_parameters_collection_type["v1AccountAccountIDMenuMenuIDGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDMenuMenuIDGet:::menuID"]=""
operation_parameters_collection_type["v1AccountAccountIDMenuMenuIDPut:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDMenuMenuIDPut:::menuID"]=""
operation_parameters_collection_type["v1AccountAccountIDMenuMenuIDPut:::reqBody"]=""
operation_parameters_collection_type["v1AccountAccountIDMenuPost:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDMenuPost:::menu"]=""
operation_parameters_collection_type["v1AccountAccountIDDeviceDeviceIDMetaflowDelete:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDDeviceDeviceIDMetaflowDelete:::deviceID"]=""
operation_parameters_collection_type["v1AccountAccountIDDeviceDeviceIDMetaflowGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDDeviceDeviceIDMetaflowGet:::deviceID"]=""
operation_parameters_collection_type["v1AccountAccountIDDeviceDeviceIDMetaflowPost:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDDeviceDeviceIDMetaflowPost:::deviceID"]=""
operation_parameters_collection_type["v1AccountAccountIDDeviceDeviceIDMetaflowPost:::reqBody"]=""
operation_parameters_collection_type["v1AccountAccountIDMetaflowDelete:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDMetaflowGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDMetaflowPost:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDMetaflowPost:::metaflow"]=""
operation_parameters_collection_type["v1AccountAccountIDUserUserIDMetaflowDelete:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDUserUserIDMetaflowDelete:::userID"]=""
operation_parameters_collection_type["v1AccountAccountIDUserUserIDMetaflowGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDUserUserIDMetaflowGet:::userID"]=""
operation_parameters_collection_type["v1AccountAccountIDUserUserIDMetaflowPost:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDUserUserIDMetaflowPost:::userID"]=""
operation_parameters_collection_type["v1AccountAccountIDUserUserIDMetaflowPost:::reqBody"]=""
operation_parameters_collection_type["v1AccountAccountidPhonenumberGet:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidPhonenumberGet:::start_key"]=""
operation_parameters_collection_type["v1AccountAccountidPhonenumberGet:::page_size"]=""
operation_parameters_collection_type["v1AccountPhonenumberAssignPost:::payload"]=""
operation_parameters_collection_type["v1AccountPhonenumberDisconnectPost:::payload"]=""
operation_parameters_collection_type["v1AccountPhonenumberGet:::start_key"]=""
operation_parameters_collection_type["v1AccountPhonenumberGet:::page_size"]=""
operation_parameters_collection_type["v1AccountPhonenumberPost:::phonenumber"]=
operation_parameters_collection_type["v1AccountPhonenumberUnassignPost:::payload"]=""
operation_parameters_collection_type["v1PhonenumberSearchGet:::area_code"]=""
operation_parameters_collection_type["v1PhonenumberSearchGet:::quantity"]=""
operation_parameters_collection_type["v1AccountAccountIDPresenceExtensionPut:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDPresenceExtensionPut:::extension"]=""
operation_parameters_collection_type["v1AccountAccountIDPresenceExtensionPut:::reqBody"]=""
operation_parameters_collection_type["v1AccountAccountIDPresenceGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDUserUserIDPresencePut:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDUserUserIDPresencePut:::userID"]=""
operation_parameters_collection_type["v1AccountAccountIDUserUserIDPresencePut:::reqBody"]=""
operation_parameters_collection_type["v1AccountAccountIDProvisionFilenameGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDProvisionFilenameGet:::filename"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyFamilyGet:::brand"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyFamilyGet:::family"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyFamilyModelGet:::brand"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyFamilyModelGet:::family"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyFamilyModelGet:::model_name"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyFamilyModelGet:::page_size"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyFamilyModelGet:::start_key"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyFamilyModelGet:::status"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyFamilyModelModelGet:::brand"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyFamilyModelModelGet:::family"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyFamilyModelModelGet:::model"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyFamilyModelModelTemplateGet:::brand"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyFamilyModelModelTemplateGet:::family"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyFamilyModelModelTemplateGet:::model"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyFamilyModelModelTemplateGet:::firmware"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyFamilyModelModelTemplateGet:::page_size"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyFamilyModelModelTemplateGet:::start_key"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyFamilyModelModelTemplateGet:::status"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyFamilyModelModelTemplateGet:::template_name"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet:::brand"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet:::family"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet:::model"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet:::template"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyGet:::brand"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyGet:::family_name"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyGet:::page_size"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyGet:::start_key"]=""
operation_parameters_collection_type["v1ApBrandBrandFamilyGet:::status"]=""
operation_parameters_collection_type["v1ApBrandBrandGet:::brand"]=""
operation_parameters_collection_type["v1ApBrandGet:::brand_name"]=""
operation_parameters_collection_type["v1ApBrandGet:::page_size"]=""
operation_parameters_collection_type["v1ApBrandGet:::start_key"]=""
operation_parameters_collection_type["v1ApBrandGet:::status"]=""
operation_parameters_collection_type["v1ApConfigfileGeneratePost:::params"]=""
operation_parameters_collection_type["v1SmsAccountAccountIDCampaignCampaignIDImportGet:::accountID"]=""
operation_parameters_collection_type["v1SmsAccountAccountIDCampaignCampaignIDImportGet:::campaignID"]=""
operation_parameters_collection_type["v1SmsAccountAccountIDCampaignCampaignIDImportPost:::accountID"]=""
operation_parameters_collection_type["v1SmsAccountAccountIDCampaignCampaignIDImportPost:::campaignID"]=""
operation_parameters_collection_type["v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet:::accountID"]=""
operation_parameters_collection_type["v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet:::campaignID"]=""
operation_parameters_collection_type["v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet:::page_num"]=""
operation_parameters_collection_type["v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet:::page_size"]=""
operation_parameters_collection_type["v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut:::accountID"]=""
operation_parameters_collection_type["v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut:::campaignID"]=""
operation_parameters_collection_type["v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut:::reqBody"]=""
operation_parameters_collection_type["v1SmsAccountAccountIDCampaignImportGet:::accountID"]=""
operation_parameters_collection_type["v1SmsAccountAccountIDCampaignImportGet:::page_num"]=""
operation_parameters_collection_type["v1SmsAccountAccountIDCampaignImportGet:::page_size"]=""
operation_parameters_collection_type["v1AccountAccountIDStorageDelete:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDStorageGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDStoragePost:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDStoragePost:::reqBody"]=""
operation_parameters_collection_type["v1AccountAccountIDStoragePut:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDStoragePut:::reqBody"]=""
operation_parameters_collection_type["v1AccountAccountIDTemporalruleGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDTemporalruleGet:::start_key"]=""
operation_parameters_collection_type["v1AccountAccountIDTemporalruleGet:::page_size"]=""
operation_parameters_collection_type["v1AccountAccountIDTemporalrulePost:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDTemporalrulePost:::temporalrule"]=""
operation_parameters_collection_type["v1AccountAccountIDTemporalruleTemporalRuleIDDelete:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDTemporalruleTemporalRuleIDDelete:::temporalRuleID"]=""
operation_parameters_collection_type["v1AccountAccountIDTemporalruleTemporalRuleIDGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDTemporalruleTemporalRuleIDGet:::temporalRuleID"]=""
operation_parameters_collection_type["v1AccountAccountIDTemporalruleTemporalRuleIDPut:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDTemporalruleTemporalRuleIDPut:::temporalRuleID"]=""
operation_parameters_collection_type["v1AccountAccountIDTemporalruleTemporalRuleIDPut:::reqBody"]=""
operation_parameters_collection_type["v1AccountAccountIDTemporalrulesetGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDTemporalrulesetGet:::start_key"]=""
operation_parameters_collection_type["v1AccountAccountIDTemporalrulesetGet:::page_size"]=""
operation_parameters_collection_type["v1AccountAccountIDTemporalrulesetPost:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDTemporalrulesetPost:::temporalruleset"]=""
operation_parameters_collection_type["v1AccountAccountIDTemporalrulesetTemporalRuleSetIDDelete:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDTemporalrulesetTemporalRuleSetIDDelete:::temporalRuleSetID"]=""
operation_parameters_collection_type["v1AccountAccountIDTemporalrulesetTemporalRuleSetIDGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDTemporalrulesetTemporalRuleSetIDGet:::temporalRuleSetID"]=""
operation_parameters_collection_type["v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut:::temporalRuleSetID"]=""
operation_parameters_collection_type["v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut:::reqBody"]=""
operation_parameters_collection_type["v1AccountAccountidUserGet:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidUserGet:::start_key"]=""
operation_parameters_collection_type["v1AccountAccountidUserGet:::page_size"]=""
operation_parameters_collection_type["v1AccountAccountidUserPost:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidUserPost:::user"]=""
operation_parameters_collection_type["v1AccountAccountidUserUseridDelete:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidUserUseridDelete:::userid"]=""
operation_parameters_collection_type["v1AccountAccountidUserUseridGet:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidUserUseridGet:::userid"]=""
operation_parameters_collection_type["v1AccountAccountidUserUseridPut:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidUserUseridPut:::userid"]=""
operation_parameters_collection_type["v1AccountAccountidUserUseridPut:::user"]=""
operation_parameters_collection_type["v1AccountAccountidUserUseridUserauthPost:::accountid"]=""
operation_parameters_collection_type["v1AccountAccountidUserUseridUserauthPost:::userid"]=""
operation_parameters_collection_type["v1AccountAccountidUserUseridUserauthPost:::user"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailGet:::start_key"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailGet:::page_size"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailPost:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailPost:::voicemail"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDDelete:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDDelete:::voicemailID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDGet:::voicemailID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDMessageGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDMessageGet:::voicemailID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDMessageGet:::start_key"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDMessageGet:::page_size"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete:::voicemailID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete:::messageID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet:::voicemailID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet:::messageID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut:::voicemailID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut:::messageID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut:::reqBody"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet:::voicemailID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet:::messageID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost:::voicemailID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost:::messageID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost:::file"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDMessagePost:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDMessagePost:::voicemailID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDMessagePost:::message"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDPut:::accountID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDPut:::voicemailID"]=""
operation_parameters_collection_type["v1AccountAccountIDVoicemailVoicemailIDPut:::reqBody"]=""
operation_parameters_collection_type["v1WebhookAccountAccountIDGet:::accountID"]=""
operation_parameters_collection_type["v1WebhookAccountAccountIDGet:::page_size"]=""
operation_parameters_collection_type["v1WebhookAccountAccountIDGet:::current_page"]=""
operation_parameters_collection_type["v1WebhookAccountAccountIDPost:::accountID"]=""
operation_parameters_collection_type["v1WebhookAccountAccountIDPost:::body"]=""
operation_parameters_collection_type["v1WebhookAccountAccountIDWebhookIDDelete:::accountID"]=""
operation_parameters_collection_type["v1WebhookAccountAccountIDWebhookIDDelete:::webhookID"]=""
operation_parameters_collection_type["v1WebhookAccountAccountIDWebhookIDGet:::accountID"]=""
operation_parameters_collection_type["v1WebhookAccountAccountIDWebhookIDGet:::webhookID"]=""
operation_parameters_collection_type["v1WebhookAccountAccountIDWebhookIDPut:::accountID"]=""
operation_parameters_collection_type["v1WebhookAccountAccountIDWebhookIDPut:::webhookID"]=""
operation_parameters_collection_type["v1WebhookAccountAccountIDWebhookIDPut:::body"]=""


##
# Map for body parameters passed after operation as
# PARAMETER==STRING_VALUE or PARAMETER:=NUMERIC_VALUE
# These will be mapped to top level json keys ( { "PARAMETER": "VALUE" })
declare -A body_parameters

##
# These arguments will be directly passed to cURL
curl_arguments=""

##
# The host for making the request
host=""

##
# The user credentials for basic authentication
basic_auth_credential=""

##
# The user API key
apikey_auth_credential=""

##
# If true, the script will only output the actual cURL command that would be
# used
print_curl=false

##
# The operation ID passed on the command line
operation=""

##
# The provided Accept header value
header_accept=""

##
# The provided Content-type header value
header_content_type=""

##
# If there is any body content on the stdin pass it to the body of the request
body_content_temp_file=""

##
# If this variable is set to true, the request will be performed even
# if parameters for required query, header or body values are not provided
# (path parameters are still required).
force=false

##
# Declare some mime types abbreviations for easier content-type and accepts
# headers specification
declare -A mime_type_abbreviations
# text/*
mime_type_abbreviations["text"]="text/plain"
mime_type_abbreviations["html"]="text/html"
mime_type_abbreviations["md"]="text/x-markdown"
mime_type_abbreviations["csv"]="text/csv"
mime_type_abbreviations["css"]="text/css"
mime_type_abbreviations["rtf"]="text/rtf"
# application/*
mime_type_abbreviations["json"]="application/json"
mime_type_abbreviations["xml"]="application/xml"
mime_type_abbreviations["yaml"]="application/yaml"
mime_type_abbreviations["js"]="application/javascript"
mime_type_abbreviations["bin"]="application/octet-stream"
mime_type_abbreviations["rdf"]="application/rdf+xml"
# image/*
mime_type_abbreviations["jpg"]="image/jpeg"
mime_type_abbreviations["png"]="image/png"
mime_type_abbreviations["gif"]="image/gif"
mime_type_abbreviations["bmp"]="image/bmp"
mime_type_abbreviations["tiff"]="image/tiff"


##############################################################################
#
# Escape special URL characters
# Based on table at http://www.w3schools.com/tags/ref_urlencode.asp
#
##############################################################################
url_escape() {
    local raw_url="$1"

    value=$(sed -e 's/ /%20/g' \
       -e 's/!/%21/g' \
       -e 's/"/%22/g' \
       -e 's/#/%23/g' \
       -e 's/\&/%26/g' \
       -e 's/'\''/%28/g' \
       -e 's/(/%28/g' \
       -e 's/)/%29/g' \
       -e 's/:/%3A/g' \
       -e 's/\\t/%09/g' \
       -e 's/?/%3F/g' <<<"$raw_url");

    echo "$value"
}

##############################################################################
#
# Lookup the mime type abbreviation in the mime_type_abbreviations array.
# If not present assume the user provided a valid mime type
#
##############################################################################
lookup_mime_type() {
    local mime_type="$1"

    if [[ ${mime_type_abbreviations[$mime_type]} ]]; then
        echo "${mime_type_abbreviations[$mime_type]}"
    else
        echo "$mime_type"
    fi
}

##############################################################################
#
# Converts an associative array into a list of cURL header
# arguments (-H "KEY: VALUE")
#
##############################################################################
header_arguments_to_curl() {
    local headers_curl=""
    local api_key_header=""
    local api_key_header_in_cli=""
    api_key_header="Authorization"

    for key in "${!header_arguments[@]}"; do
        headers_curl+="-H \"${key}: ${header_arguments[${key}]}\" "
        if [[ "${key}XX" == "${api_key_header}XX" ]]; then
            api_key_header_in_cli="YES"
        fi
    done
    #
    # If the api_key was not provided in the header, try one from the
    # environment variable
    #
    if [[ -z $api_key_header_in_cli && -n $apikey_auth_credential ]]; then
        headers_curl+="-H \"${api_key_header}: ${apikey_auth_credential}\""
    fi
    headers_curl+=" "

    echo "${headers_curl}"
}

##############################################################################
#
# Converts an associative array into a simple JSON with keys as top
# level object attributes
#
# \todo Add conversion of more complex attributes using paths
#
##############################################################################
body_parameters_to_json() {
    if [[ $RAW_BODY == "1" ]]; then
        echo "-d '${body_parameters["RAW_BODY"]}'"
    else
        local body_json="-d '{"
        local count=0
        for key in "${!body_parameters[@]}"; do
            if [[ $((count++)) -gt 0 ]]; then
                body_json+=", "
            fi
            body_json+="\"${key}\": ${body_parameters[${key}]}"
        done
        body_json+="}'"

        if [[ "${#body_parameters[@]}" -eq 0 ]]; then
            echo ""
        else
            echo "${body_json}"
        fi
    fi
}

##############################################################################
#
# Converts an associative array into form urlencoded string
#
##############################################################################
body_parameters_to_form_urlencoded() {
    local body_form_urlencoded="-d '"
    local count=0
    for key in "${!body_parameters[@]}"; do
        if [[ $((count++)) -gt 0 ]]; then
            body_form_urlencoded+="&"
        fi
        body_form_urlencoded+="${key}=${body_parameters[${key}]}"
    done
    body_form_urlencoded+="'"

    if [[ "${#body_parameters[@]}" -eq 0 ]]; then
        echo ""
    else
        echo "${body_form_urlencoded}"
    fi
}

##############################################################################
#
# Helper method for showing error because for example echo in
# build_request_path() is evaluated as part of command line not printed on
# output. Anyway better idea for resource clean up ;-).
#
##############################################################################
ERROR_MSG=""
function finish {
    if [[ -n "$ERROR_MSG" ]]; then
        echo >&2 "${OFF}${RED}$ERROR_MSG"
        echo >&2 "${OFF}Check usage: '${script_name} --help'"
    fi
}
trap finish EXIT


##############################################################################
#
# Validate and build request path including query parameters
#
##############################################################################
build_request_path() {
    local path_template=$1
    local -n path_params=$2
    local -n query_params=$3


    #
    # Check input parameters count against minimum and maximum required
    #
    if [[ "$force" = false ]]; then
        local was_error=""
        for qparam in "${query_params[@]}" "${path_params[@]}"; do
            local parameter_values
            mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")

            #
            # Check if the number of provided values is not less than minimum required
            #
            if [[ ${#parameter_values[@]} -lt ${operation_parameters_minimum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too few values provided for '${qparam}' parameter."
                was_error=true
            fi

            #
            # Check if the number of provided values is not more than maximum
            #
            if [[ ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} -gt 0 \
                  && ${#parameter_values[@]} -gt ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too many values provided for '${qparam}' parameter"
                was_error=true
            fi
        done
        if [[ -n "$was_error" ]]; then
            exit 1
        fi
    fi

    # First replace all path parameters in the path
    for pparam in "${path_params[@]}"; do
        local path_regex="(.*)(\\{$pparam\\})(.*)"
        if [[ $path_template =~ $path_regex ]]; then
            path_template=${BASH_REMATCH[1]}${operation_parameters[$pparam]}${BASH_REMATCH[3]}
        fi
    done

    local query_request_part=""

    for qparam in "${query_params[@]}"; do
        if [[ "${operation_parameters[$qparam]}" == "" ]]; then
            continue
        fi

        # Get the array of parameter values
        local parameter_value=""
        local parameter_values
        mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")



        #
        # Append parameters without specific cardinality
        #
        local collection_type="${operation_parameters_collection_type["${operation}:::${qparam}"]}"
        if [[ "${collection_type}" == "" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'multi' collections i.e. param=value1&param=value2&...
        #
        elif [[ "${collection_type}" == "multi" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'csv' collections i.e. param=value1,value2,...
        #
        elif [[ "${collection_type}" == "csv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=","
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'ssv' collections i.e. param="value1 value2 ..."
        #
        elif [[ "${collection_type}" == "ssv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=" "
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'tsv' collections i.e. param="value1\tvalue2\t..."
        #
        elif [[ "${collection_type}" == "tsv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="\\t"
                fi
                parameter_value+="${qvalue}"
            done
        else
            echo "Unsupported collection format \"${collection_type}\""
            exit 1
        fi

        if [[ -n "${parameter_value}" ]]; then
            if [[ -n "${query_request_part}" ]]; then
                query_request_part+="&"
            fi
            query_request_part+="${parameter_value}"
        fi

    done


    # Now append query parameters - if any
    if [[ -n "${query_request_part}" ]]; then
        path_template+="?${query_request_part}"
    fi

    echo "$path_template"
}



###############################################################################
#
# Print main help message
#
###############################################################################
print_help() {
cat <<EOF

${BOLD}${WHITE}White Label Communications CPaas API Documentation command line client (API version 1.1)${OFF}

${BOLD}${WHITE}Usage${OFF}

  ${GREEN}${script_name}${OFF} [-h|--help] [-V|--version] [--about] [${RED}<curl-options>${OFF}]
           [-ac|--accept ${GREEN}<mime-type>${OFF}] [-ct,--content-type ${GREEN}<mime-type>${OFF}]
           [--host ${CYAN}<url>${OFF}] [--dry-run] [-nc|--no-colors] ${YELLOW}<operation>${OFF} [-h|--help]
           [${BLUE}<headers>${OFF}] [${MAGENTA}<parameters>${OFF}] [${MAGENTA}<body-parameters>${OFF}]

  - ${CYAN}<url>${OFF} - endpoint of the REST service without basepath

  - ${RED}<curl-options>${OFF} - any valid cURL options can be passed before ${YELLOW}<operation>${OFF}
  - ${GREEN}<mime-type>${OFF} - either full mime-type or one of supported abbreviations:
                   (text, html, md, csv, css, rtf, json, xml, yaml, js, bin,
                    rdf, jpg, png, gif, bmp, tiff)
  - ${BLUE}<headers>${OFF} - HTTP headers can be passed in the form ${YELLOW}HEADER${OFF}:${BLUE}VALUE${OFF}
  - ${MAGENTA}<parameters>${OFF} - REST operation parameters can be passed in the following
                   forms:
                   * ${YELLOW}KEY${OFF}=${BLUE}VALUE${OFF} - path or query parameters
  - ${MAGENTA}<body-parameters>${OFF} - simple JSON body content (first level only) can be build
                        using the following arguments:
                        * ${YELLOW}KEY${OFF}==${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": "${BLUE}VALUE${OFF}", ... }'
                        * ${YELLOW}KEY${OFF}:=${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": ${BLUE}VALUE${OFF}, ... }'

EOF
    echo -e "${BOLD}${WHITE}Authentication methods${OFF}"
    echo -e ""
    echo -e "  - ${BLUE}Api-key${OFF} - add '${RED}Authorization:<api-key>${OFF}' after ${YELLOW}<operation>${OFF}"
    
    echo ""
    echo -e "${BOLD}${WHITE}Operations (grouped by tags)${OFF}"
    echo ""
    echo -e "${BOLD}${WHITE}[account]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1AccountAccountidChildrenGet${OFF};Get Sub Account List (AUTH)
  ${CYAN}v1AccountAccountidDelete${OFF};Delete Account (AUTH)
  ${CYAN}v1AccountAccountidDnsrecordGet${OFF};Get Account DNS Record (AUTH)
  ${CYAN}v1AccountAccountidDnsrecordPost${OFF};Create Account DNS Record (AUTH)
  ${CYAN}v1AccountAccountidDnsrecordPut${OFF};Convert Account DNS Record (AUTH)
  ${CYAN}v1AccountAccountidGet${OFF};Get Account Details (AUTH)
  ${CYAN}v1AccountAccountidLimitGet${OFF};Get Account Limits (AUTH)
  ${CYAN}v1AccountAccountidLimitPut${OFF};Set Account Limits (AUTH)
  ${CYAN}v1AccountAccountidPost${OFF};Create Sub Account (AUTH)
  ${CYAN}v1AccountAccountidProvisioningdetailsGet${OFF};Get Account Provisioning Details (AUTH)
  ${CYAN}v1AccountAccountidProvisioningdetailsResetpwPut${OFF};Reset the provisioning details password. (AUTH)
  ${CYAN}v1AccountAccountidPut${OFF};Update Account (AUTH)
  ${CYAN}v1AccountApikeyGet${OFF}; (AUTH)
  ${CYAN}v1AccountGet${OFF};Get Account List (AUTH)
  ${CYAN}v1AccountPost${OFF};Create Account (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[cPaaSManagement]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1MgmtUserGet${OFF};Get All CPaaS Users (AUTH)
  ${CYAN}v1MgmtUserPost${OFF};Invite CPaaS User (AUTH)
  ${CYAN}v1MgmtUserUserIDDelete${OFF};Delete CPaaS User (AUTH)
  ${CYAN}v1MgmtUserUserIDGet${OFF};Get CPaaS User Details (AUTH)
  ${CYAN}v1MgmtUserUserIDPut${OFF};Update CPaaS User Role (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[callPark]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1AccountAccountIDParkedcallGet${OFF};Get Call Park List (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[callQueueManagement]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1AccountAccountIDCallqueueGet${OFF};Get Call Queues (AUTH)
  ${CYAN}v1AccountAccountIDCallqueuePost${OFF};Create Call Queue (AUTH)
  ${CYAN}v1AccountAccountIDCallqueueQueueIDDelete${OFF};Delete Call Queue (AUTH)
  ${CYAN}v1AccountAccountIDCallqueueQueueIDGet${OFF};Get Call Queue Details (AUTH)
  ${CYAN}v1AccountAccountIDCallqueueQueueIDPut${OFF};Update Call Queue (AUTH)
  ${CYAN}v1AccountAccountIDCallqueueQueueIDStatusGet${OFF};Get Call Queue Status (AUTH)
  ${CYAN}v1AccountAccountIDQueuerolesGet${OFF};Get Queue Roles of Account (AUTH)
  ${CYAN}v1AccountAccountIDQueuerolesQueueIDPost${OFF};Assign Queue Role to Call Queue (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[callQueueMembership]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1AccountAccountIDQueuemembershipPost${OFF};Grant Queue Membership to User (AUTH)
  ${CYAN}v1AccountAccountIDQueuemembershipRecipientIDDisablePost${OFF};Disable Queue Membership (AUTH)
  ${CYAN}v1AccountAccountIDQueuemembershipRecipientIDEnablePost${OFF};Enable Queue Membership (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[callQueueRecipient]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1AccountAccountIDLoginrecipientRecipientIDPost${OFF};Login as Recipient (AUTH)
  ${CYAN}v1AccountAccountIDQueuerecipientGet${OFF};Change Recipient Status (AUTH)
  ${CYAN}v1AccountAccountIDRecipientRecipientIDStatusPost${OFF};Get Recipient List (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[callRecording]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1AccountAccountIDRecordingGet${OFF};Get Account Call Recording (AUTH)
  ${CYAN}v1AccountAccountIDRecordingRecordingIDDelete${OFF};Delete Call Recording (AUTH)
  ${CYAN}v1AccountAccountIDRecordingRecordingIDGet${OFF};Get Call Recording Details (AUTH)
  ${CYAN}v1AccountAccountIDUserUserIDRecordingGet${OFF};Get User Call Recording (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[callflow]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1AccountAccountIDCallflowCallflowIDDelete${OFF};Delete Call Group (AUTH)
  ${CYAN}v1AccountAccountIDCallflowCallflowIDGet${OFF};Get Call Group Details (AUTH)
  ${CYAN}v1AccountAccountIDCallflowCallflowIDPut${OFF};Update Call Group (AUTH)
  ${CYAN}v1AccountAccountIDCallflowGet${OFF};Get Callflow List (AUTH)
  ${CYAN}v1AccountAccountIDCallflowPost${OFF};Create Call Group (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[channel]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1AccountAccountIDChannelChannelIDGet${OFF};Get Channel Details (AUTH)
  ${CYAN}v1AccountAccountIDChannelChannelIDPost${OFF};Associate Action to Channel (AUTH)
  ${CYAN}v1AccountAccountIDChannelChannelIDPut${OFF};Associate Metaflow to Channel (AUTH)
  ${CYAN}v1AccountAccountIDChannelGet${OFF};Get Account Channel List (AUTH)
  ${CYAN}v1AccountAccountIDDeviceDeviceIDChannelGet${OFF};Get Device Channel List (AUTH)
  ${CYAN}v1AccountAccountIDUserUserIDChannelGet${OFF};Get User Channel List (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[data]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1AccountAccountIDCdrCdrIDGet${OFF};Get CDR Details (AUTH)
  ${CYAN}v1AccountAccountIDCdrGet${OFF};Get CDR List (AUTH)
  ${CYAN}v1DataCallDailySummaryGet${OFF};Get Call Daily Summary List (AUTH)
  ${CYAN}v1DataCallDetailGet${OFF};Get Call Detail List (AUTH)
  ${CYAN}v1DataCallMonthlySummaryGet${OFF};Get Call Detail List (AUTH)
  ${CYAN}v1DataEndpointListGet${OFF};Get Endpoint List (AUTH)
  ${CYAN}v1DataEventDailySummaryGet${OFF};Get Event Daily Summary List (AUTH)
  ${CYAN}v1DataEventDetailGet${OFF};Get Event Details (AUTH)
  ${CYAN}v1DataEventMonthlySummaryGet${OFF};Get Event Monthly Summary List (AUTH)
  ${CYAN}v1DataFeatureDailySummaryGet${OFF};Get Feature Daily Summary List (AUTH)
  ${CYAN}v1DataFeatureMonthlySummaryGet${OFF};Get Feature Monthly Summary List (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[device]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1AccountAccountidDeviceDeviceidDelete${OFF};Delete Device (AUTH)
  ${CYAN}v1AccountAccountidDeviceDeviceidGet${OFF};Get Device Details (AUTH)
  ${CYAN}v1AccountAccountidDeviceDeviceidPut${OFF};Update Device (AUTH)
  ${CYAN}v1AccountAccountidDeviceDeviceidRebootPost${OFF};Reboot Device (AUTH)
  ${CYAN}v1AccountAccountidDeviceGet${OFF};Get Device List (AUTH)
  ${CYAN}v1AccountAccountidDevicePost${OFF};Create Device (AUTH)
  ${CYAN}v1AccountAccountidDeviceStatusGet${OFF};Get Device Status (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[e911]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1E911Get${OFF};Get E911 List
  ${CYAN}v1E911LocationLocationIDActivatePut${OFF};Activate E911 Location
  ${CYAN}v1E911LocationLocationIDDelete${OFF};Delete E911 Location
  ${CYAN}v1E911LocationValidatePut${OFF};Validate a Location
  ${CYAN}v1E911PhoneNumberDelete${OFF};Delete E911 Phone Number
  ${CYAN}v1E911PhoneNumberLocationActiveGet${OFF};Get Actvie Location for a Phone Number
  ${CYAN}v1E911PhoneNumberLocationGet${OFF};Get Location List for Phone Number
  ${CYAN}v1E911Post${OFF};Create an E911 Location
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[group]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1AccountAccountIDGroupGet${OFF};Get Group List (AUTH)
  ${CYAN}v1AccountAccountIDGroupGroupIDDelete${OFF};Delete Group (AUTH)
  ${CYAN}v1AccountAccountIDGroupGroupIDGet${OFF};Get Group Details (AUTH)
  ${CYAN}v1AccountAccountIDGroupGroupIDPut${OFF};Update Group (AUTH)
  ${CYAN}v1AccountAccountIDGroupPost${OFF};Create Group (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[media]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1AccountAccountIDMediaMediaIDFileGet${OFF};Get Media File (AUTH)
  ${CYAN}v1AccountAccountIDMediaMediaIDFilePost${OFF};Add Media File (AUTH)
  ${CYAN}v1AccountAccountidMediaGet${OFF};Get Media List (AUTH)
  ${CYAN}v1AccountAccountidMediaMediaidDelete${OFF};Delete Media (AUTH)
  ${CYAN}v1AccountAccountidMediaMediaidGet${OFF};Get Media Details (AUTH)
  ${CYAN}v1AccountAccountidMediaPost${OFF};Create Media (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[menu]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1AccountAccountIDMenuGet${OFF};Get Menu List (AUTH)
  ${CYAN}v1AccountAccountIDMenuMenuIDDelete${OFF};Delete Menu (AUTH)
  ${CYAN}v1AccountAccountIDMenuMenuIDGet${OFF};Get Menu Details (AUTH)
  ${CYAN}v1AccountAccountIDMenuMenuIDPut${OFF};Update Menu (AUTH)
  ${CYAN}v1AccountAccountIDMenuPost${OFF};Create Menu (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[metaflow]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1AccountAccountIDDeviceDeviceIDMetaflowDelete${OFF};Delete Device Metaflow (AUTH)
  ${CYAN}v1AccountAccountIDDeviceDeviceIDMetaflowGet${OFF};Get Device Metaflow List (AUTH)
  ${CYAN}v1AccountAccountIDDeviceDeviceIDMetaflowPost${OFF};Create Device Metaflow (AUTH)
  ${CYAN}v1AccountAccountIDMetaflowDelete${OFF};Delete Account Metaflow (AUTH)
  ${CYAN}v1AccountAccountIDMetaflowGet${OFF};Get Account Metaflow List (AUTH)
  ${CYAN}v1AccountAccountIDMetaflowPost${OFF};Create Account Metaflow (AUTH)
  ${CYAN}v1AccountAccountIDUserUserIDMetaflowDelete${OFF};Delete User Metaflow (AUTH)
  ${CYAN}v1AccountAccountIDUserUserIDMetaflowGet${OFF};Get User Metaflow List (AUTH)
  ${CYAN}v1AccountAccountIDUserUserIDMetaflowPost${OFF};Create User Metaflow (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[phoneNumber]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1AccountAccountidPhonenumberGet${OFF};Get Assigned Numbers List (AUTH)
  ${CYAN}v1AccountPhonenumberAssignPost${OFF};Assign Number (AUTH)
  ${CYAN}v1AccountPhonenumberDisconnectPost${OFF};Disconnect Number (AUTH)
  ${CYAN}v1AccountPhonenumberGet${OFF};Get Unassigned Numbers List (AUTH)
  ${CYAN}v1AccountPhonenumberPost${OFF};Purchase Number (AUTH)
  ${CYAN}v1AccountPhonenumberUnassignPost${OFF};Unassign Number (AUTH)
  ${CYAN}v1PhonenumberSearchGet${OFF};Search New Numbers (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[presence]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1AccountAccountIDPresenceExtensionPut${OFF};Set/Reset Presence for Extension (AUTH)
  ${CYAN}v1AccountAccountIDPresenceGet${OFF};Get Presence Details (AUTH)
  ${CYAN}v1AccountAccountIDUserUserIDPresencePut${OFF};Set/Reset Presence for User (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[provisioning]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1AccountAccountIDProvisionFilenameGet${OFF};Get Config File Details
  ${CYAN}v1ApBrandBrandFamilyFamilyGet${OFF};Get Family Details (AUTH)
  ${CYAN}v1ApBrandBrandFamilyFamilyModelGet${OFF};Get Model List (AUTH)
  ${CYAN}v1ApBrandBrandFamilyFamilyModelModelGet${OFF};Get Model Details (AUTH)
  ${CYAN}v1ApBrandBrandFamilyFamilyModelModelTemplateGet${OFF};Get Template List (AUTH)
  ${CYAN}v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet${OFF};Get Template Details (AUTH)
  ${CYAN}v1ApBrandBrandFamilyGet${OFF};Get Family List (AUTH)
  ${CYAN}v1ApBrandBrandGet${OFF};Get Brand Details (AUTH)
  ${CYAN}v1ApBrandGet${OFF};Get Brand List (AUTH)
  ${CYAN}v1ApConfigfileGeneratePost${OFF};Generate Config File (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[sMS]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1SmsAccountAccountIDCampaignCampaignIDImportGet${OFF}; (AUTH)
  ${CYAN}v1SmsAccountAccountIDCampaignCampaignIDImportPost${OFF}; (AUTH)
  ${CYAN}v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet${OFF}; (AUTH)
  ${CYAN}v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut${OFF}; (AUTH)
  ${CYAN}v1SmsAccountAccountIDCampaignImportGet${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[storage]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1AccountAccountIDStorageDelete${OFF};Delete Storage (AUTH)
  ${CYAN}v1AccountAccountIDStorageGet${OFF};Get Storage Details (AUTH)
  ${CYAN}v1AccountAccountIDStoragePost${OFF};Create Storage (AUTH)
  ${CYAN}v1AccountAccountIDStoragePut${OFF};Update Storage (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[systemStatus]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1ApPingGet${OFF};Provisioning Ping (AUTH)
  ${CYAN}v1PingGet${OFF};Ping Backend (AUTH)
  ${CYAN}v1PingseccognitoGet${OFF};Ping Cognito (AUTH)
  ${CYAN}v1SystemStatusGet${OFF};Get System Status (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[temporalRule]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1AccountAccountIDTemporalruleGet${OFF};Get Temporal Rule List (AUTH)
  ${CYAN}v1AccountAccountIDTemporalrulePost${OFF};Create Temporal Rule (AUTH)
  ${CYAN}v1AccountAccountIDTemporalruleTemporalRuleIDDelete${OFF};Delete Temporal Rule (AUTH)
  ${CYAN}v1AccountAccountIDTemporalruleTemporalRuleIDGet${OFF};Get Temporal Rule Details (AUTH)
  ${CYAN}v1AccountAccountIDTemporalruleTemporalRuleIDPut${OFF};Update Temporal Rule (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[temporalRuleSet]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1AccountAccountIDTemporalrulesetGet${OFF};Get Temporal Rule Set List (AUTH)
  ${CYAN}v1AccountAccountIDTemporalrulesetPost${OFF};Create Temporal Rule Set (AUTH)
  ${CYAN}v1AccountAccountIDTemporalrulesetTemporalRuleSetIDDelete${OFF};Delete Temporal Rule Set (AUTH)
  ${CYAN}v1AccountAccountIDTemporalrulesetTemporalRuleSetIDGet${OFF};Get Temporal Rule Set Details (AUTH)
  ${CYAN}v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut${OFF};Update Temporal Rule Set (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[voIPUser]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1AccountAccountidUserGet${OFF};Get User List (AUTH)
  ${CYAN}v1AccountAccountidUserPost${OFF};Create User (AUTH)
  ${CYAN}v1AccountAccountidUserUseridDelete${OFF};Delete User (AUTH)
  ${CYAN}v1AccountAccountidUserUseridGet${OFF};Get User Details (AUTH)
  ${CYAN}v1AccountAccountidUserUseridPut${OFF};Update User (AUTH)
  ${CYAN}v1AccountAccountidUserUseridUserauthPost${OFF};Impersonate a User (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[voicemail]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1AccountAccountIDVoicemailGet${OFF};Get Voicemail Box List (AUTH)
  ${CYAN}v1AccountAccountIDVoicemailPost${OFF};Create Voicemail Box (AUTH)
  ${CYAN}v1AccountAccountIDVoicemailVoicemailIDDelete${OFF};Delete Voicemail Box (AUTH)
  ${CYAN}v1AccountAccountIDVoicemailVoicemailIDGet${OFF};Get Voicemail Box Details (AUTH)
  ${CYAN}v1AccountAccountIDVoicemailVoicemailIDMessageGet${OFF};Get Voicemail Message List (AUTH)
  ${CYAN}v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete${OFF};Delete Voicemail Message (AUTH)
  ${CYAN}v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet${OFF};Get Voicemail Message Details (AUTH)
  ${CYAN}v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut${OFF};Update Voicemail Message (AUTH)
  ${CYAN}v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet${OFF};Get Voicemail Message File (AUTH)
  ${CYAN}v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost${OFF};Add Voicemail Message File (AUTH)
  ${CYAN}v1AccountAccountIDVoicemailVoicemailIDMessagePost${OFF};Create Voicemail Message (AUTH)
  ${CYAN}v1AccountAccountIDVoicemailVoicemailIDPut${OFF};Update Voicemail Box (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[webhook]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1WebhookAccountAccountIDGet${OFF};Get Webhook List (AUTH)
  ${CYAN}v1WebhookAccountAccountIDPost${OFF};Create Webhook (AUTH)
  ${CYAN}v1WebhookAccountAccountIDWebhookIDDelete${OFF};Delete Webhook (AUTH)
  ${CYAN}v1WebhookAccountAccountIDWebhookIDGet${OFF};Get Webhook Details (AUTH)
  ${CYAN}v1WebhookAccountAccountIDWebhookIDPut${OFF};Update Webhook (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}Options${OFF}"
    echo -e "  -h,--help\\t\\t\\t\\tPrint this help"
    echo -e "  -V,--version\\t\\t\\t\\tPrint API version"
    echo -e "  --about\\t\\t\\t\\tPrint the information about service"
    echo -e "  --host ${CYAN}<url>${OFF}\\t\\t\\t\\tSpecify the host URL "
echo -e "              \\t\\t\\t\\t(e.g. 'https://api.beta.cpaaslabs.net')"

    echo -e "  --force\\t\\t\\t\\tForce command invocation in spite of missing"
    echo -e "         \\t\\t\\t\\trequired parameters or wrong content type"
    echo -e "  --dry-run\\t\\t\\t\\tPrint out the cURL command without"
    echo -e "           \\t\\t\\t\\texecuting it"
    echo -e "  -nc,--no-colors\\t\\t\\tEnforce print without colors, otherwise autodetected"
    echo -e "  -ac,--accept ${YELLOW}<mime-type>${OFF}\\t\\tSet the 'Accept' header in the request"
    echo -e "  -ct,--content-type ${YELLOW}<mime-type>${OFF}\\tSet the 'Content-type' header in "
    echo -e "                                \\tthe request"
    echo ""
}


##############################################################################
#
# Print REST service description
#
##############################################################################
print_about() {
    echo ""
    echo -e "${BOLD}${WHITE}White Label Communications CPaas API Documentation command line client (API version 1.1)${OFF}"
    echo ""
    echo -e "License: "
    echo -e "Contact: support@whitelabelcomm.com"
    echo ""
read -r -d '' appdescription <<EOF

A CPaaS platform API
EOF
echo "$appdescription" | paste -sd' ' | fold -sw 80
}


##############################################################################
#
# Print REST api version
#
##############################################################################
print_version() {
    echo ""
    echo -e "${BOLD}White Label Communications CPaas API Documentation command line client (API version 1.1)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for v1AccountAccountidChildrenGet operation
#
##############################################################################
print_v1AccountAccountidChildrenGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidChildrenGet - Get Sub Account List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Conveniently access the list of children accounts." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - start_key for pagination that was returned as next_start_key from your previous call${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - number of records to return, range 1 to 50${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidDelete operation
#
##############################################################################
print_v1AccountAccountidDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidDelete - Delete Account${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Delete an account within your organization." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidDnsrecordGet operation
#
##############################################################################
print_v1AccountAccountidDnsrecordGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidDnsrecordGet - Get Account DNS Record${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get the DNS record of an account from the Route 53 entry." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidDnsrecordPost operation
#
##############################################################################
print_v1AccountAccountidDnsrecordPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidDnsrecordPost - Create Account DNS Record${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Create the DNS record of an account with the help realm in the Route 53 entry." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidDnsrecordPut operation
#
##############################################################################
print_v1AccountAccountidDnsrecordPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidDnsrecordPut - Convert Account DNS Record${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Toggle the realm DNS record between srv and cname." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - record type fields with value SRV, CNAME" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidGet operation
#
##############################################################################
print_v1AccountAccountidGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidGet - Get Account Details${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint will not allow for modifying or making updates, it will only allow users to view/retrieve details." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidLimitGet operation
#
##############################################################################
print_v1AccountAccountidLimitGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidLimitGet - Get Account Limits${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Check the maximum number of inbound, outbound, and two-way trunks." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidLimitPut operation
#
##############################################################################
print_v1AccountAccountidLimitPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidLimitPut - Set Account Limits${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Apply parameters to restrict access to inbound, outbound, and two-way trunks." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - account fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidPost operation
#
##############################################################################
print_v1AccountAccountidPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidPost - Create Sub Account${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Establish a sub account to enable an administrator within your organization to create accounts." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - account fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidProvisioningdetailsGet operation
#
##############################################################################
print_v1AccountAccountidProvisioningdetailsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidProvisioningdetailsGet - Get Account Provisioning Details${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get the provisioning details of an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidProvisioningdetailsResetpwPut operation
#
##############################################################################
print_v1AccountAccountidProvisioningdetailsResetpwPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidProvisioningdetailsResetpwPut - Reset the provisioning details password.${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Reset the existing provisioning details password and set it to a new one." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidPut operation
#
##############################################################################
print_v1AccountAccountidPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidPut - Update Account${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Modify pertinent account data." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - account fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountApikeyGet operation
#
##############################################################################
print_v1AccountApikeyGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountApikeyGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Authenticate an application or user request to get the client ID and client secret for a CPaaS account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountGet operation
#
##############################################################################
print_v1AccountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountGet - Get Account List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve a list of all CPaaS accounts that exist within your organization." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - start_key for pagination that was returned as next_start_key from your previous call${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - number of records to return, range 1 to 50${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountPost operation
#
##############################################################################
print_v1AccountPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountPost - Create Account${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Create an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - account fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1MgmtUserGet operation
#
##############################################################################
print_v1MgmtUserGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1MgmtUserGet - Get All CPaaS Users${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve a list of all CPaaS users in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - number of records to return, range 1 to 100${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - unique to fetch next records${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sort${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - sorting the records by email(default)/role/first_name/last_name, _A is for ascending and _D is for descending, eg: sort=role_A,email_D${YELLOW} Specify as: sort=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}email${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Email${YELLOW} Specify as: email=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}role${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - User Role${YELLOW} Specify as: role=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}first_name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - First Name${YELLOW} Specify as: first_name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}last_name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Last Name${YELLOW} Specify as: last_name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1MgmtUserPost operation
#
##############################################################################
print_v1MgmtUserPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1MgmtUserPost - Invite CPaaS User${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Link a new CPaaS user to an existing client account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1MgmtUserUserIDDelete operation
#
##############################################################################
print_v1MgmtUserUserIDDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1MgmtUserUserIDDelete - Delete CPaaS User${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Delete a CPaaS user from the associated account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}userID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - User ID, numeric ${YELLOW}Specify as: userID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1MgmtUserUserIDGet operation
#
##############################################################################
print_v1MgmtUserUserIDGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1MgmtUserUserIDGet - Get CPaaS User Details${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "View details about each CPaaS user in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}userID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - User ID, numeric ${YELLOW}Specify as: userID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1MgmtUserUserIDPut operation
#
##############################################################################
print_v1MgmtUserUserIDPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1MgmtUserUserIDPut - Update CPaaS User Role${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Update a CPaaS user's role within a client's account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}userID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - User ID, numeric ${YELLOW}Specify as: userID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDParkedcallGet operation
#
##############################################################################
print_v1AccountAccountIDParkedcallGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDParkedcallGet - Get Call Park List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve a list of calls parked on hold in a numbered slot." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDCallqueueGet operation
#
##############################################################################
print_v1AccountAccountIDCallqueueGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDCallqueueGet - Get Call Queues${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve call queue details for an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDCallqueuePost operation
#
##############################################################################
print_v1AccountAccountIDCallqueuePost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDCallqueuePost - Create Call Queue${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Set up a call queue in an account for specific inbound calls." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDCallqueueQueueIDDelete operation
#
##############################################################################
print_v1AccountAccountIDCallqueueQueueIDDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDCallqueueQueueIDDelete - Delete Call Queue${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Remove the call queue from an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}queueID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Queue ID, 32 alpha numeric ${YELLOW}Specify as: queueID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDCallqueueQueueIDGet operation
#
##############################################################################
print_v1AccountAccountIDCallqueueQueueIDGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDCallqueueQueueIDGet - Get Call Queue Details${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Capture metadata about a specific queue, such as queue_type and agent_wrapup_time." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}queueID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Queue ID, 32 alpha numeric ${YELLOW}Specify as: queueID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDCallqueueQueueIDPut operation
#
##############################################################################
print_v1AccountAccountIDCallqueueQueueIDPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDCallqueueQueueIDPut - Update Call Queue${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Update the metadata mentioned above." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}queueID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Queue ID, 32 alpha numeric ${YELLOW}Specify as: queueID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDCallqueueQueueIDStatusGet operation
#
##############################################################################
print_v1AccountAccountIDCallqueueQueueIDStatusGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDCallqueueQueueIDStatusGet - Get Call Queue Status${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Access the status of a call queue in an account, such as the number of available agents (recipients), estimated wait time, and number of active sessions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}queueID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Queue ID, 32 alpha numeric ${YELLOW}Specify as: queueID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDQueuerolesGet operation
#
##############################################################################
print_v1AccountAccountIDQueuerolesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDQueuerolesGet - Get Queue Roles of Account${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Obtain data about each queue role in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDQueuerolesQueueIDPost operation
#
##############################################################################
print_v1AccountAccountIDQueuerolesQueueIDPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDQueuerolesQueueIDPost - Assign Queue Role to Call Queue${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Assign roles to members in a call queue." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}queueID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Queue ID, 32 alpha numeric ${YELLOW}Specify as: queueID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDQueuemembershipPost operation
#
##############################################################################
print_v1AccountAccountIDQueuemembershipPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDQueuemembershipPost - Grant Queue Membership to User${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Allow users to create queue memberships for recipients." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDQueuemembershipRecipientIDDisablePost operation
#
##############################################################################
print_v1AccountAccountIDQueuemembershipRecipientIDDisablePost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDQueuemembershipRecipientIDDisablePost - Disable Queue Membership${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Deactivate queue membership for a recipient." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}recipientID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Recipient ID, 32 alpha numeric ${YELLOW}Specify as: recipientID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDQueuemembershipRecipientIDEnablePost operation
#
##############################################################################
print_v1AccountAccountIDQueuemembershipRecipientIDEnablePost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDQueuemembershipRecipientIDEnablePost - Enable Queue Membership${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Activate queue membership for a recipient." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}recipientID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Recipient ID, 32 alpha numeric ${YELLOW}Specify as: recipientID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDLoginrecipientRecipientIDPost operation
#
##############################################################################
print_v1AccountAccountIDLoginrecipientRecipientIDPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDLoginrecipientRecipientIDPost - Login as Recipient${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Agents must log in to receive calls. Depending on their membership, they can log in to one or more queues. (If an agent is a member of more than one queue, they will receive calls from all the queues they are a part of.)" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}recipientID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Recipient ID, 32 alpha numeric ${YELLOW}Specify as: recipientID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDQueuerecipientGet operation
#
##############################################################################
print_v1AccountAccountIDQueuerecipientGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDQueuerecipientGet - Change Recipient Status${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get a list of all recipients in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDRecipientRecipientIDStatusPost operation
#
##############################################################################
print_v1AccountAccountIDRecipientRecipientIDStatusPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDRecipientRecipientIDStatusPost - Get Recipient List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Change the status of a recipient to ready, away, etc." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}recipientID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Recipient ID, 32 alpha numeric ${YELLOW}Specify as: recipientID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDRecordingGet operation
#
##############################################################################
print_v1AccountAccountIDRecordingGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDRecordingGet - Get Account Call Recording${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Obtain a list of the call recordings within an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDRecordingRecordingIDDelete operation
#
##############################################################################
print_v1AccountAccountIDRecordingRecordingIDDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDRecordingRecordingIDDelete - Delete Call Recording${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Delete a single call recording from an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}recordingID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Recording ID, 39 (yyyymm-<32 id>) ${YELLOW}Specify as: recordingID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDRecordingRecordingIDGet operation
#
##############################################################################
print_v1AccountAccountIDRecordingRecordingIDGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDRecordingRecordingIDGet - Get Call Recording Details${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Access details for each recorded call in an account (e.g., duration, names and numbers of call participants, etc.)." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}recordingID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Recording ID, 39 (yyyymm-<32 id>) ${YELLOW}Specify as: recordingID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDUserUserIDRecordingGet operation
#
##############################################################################
print_v1AccountAccountIDUserUserIDRecordingGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDUserUserIDRecordingGet - Get User Call Recording${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve a list of call recordings for a user within an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}userID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - User ID, 32 alpha numeric ${YELLOW}Specify as: userID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDCallflowCallflowIDDelete operation
#
##############################################################################
print_v1AccountAccountIDCallflowCallflowIDDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDCallflowCallflowIDDelete - Delete Call Group${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Delete a callflow in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}callflowID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - callflow ID, 32 alpha numeric ${YELLOW}Specify as: callflowID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDCallflowCallflowIDGet operation
#
##############################################################################
print_v1AccountAccountIDCallflowCallflowIDGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDCallflowCallflowIDGet - Get Call Group Details${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get the details for a single callflow in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}callflowID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Callflow ID, 32 alpha numeric ${YELLOW}Specify as: callflowID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDCallflowCallflowIDPut operation
#
##############################################################################
print_v1AccountAccountIDCallflowCallflowIDPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDCallflowCallflowIDPut - Update Call Group${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Update the details for a single callflow in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}callflowID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Callflow ID, 32 alpha numeric ${YELLOW}Specify as: callflowID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDCallflowGet operation
#
##############################################################################
print_v1AccountAccountIDCallflowGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDCallflowGet - Get Callflow List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Permit a user to view the callflow details in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - start_key for pagination that was returned as next_start_key from your previous call${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - number of records to return, range 1 to 50${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDCallflowPost operation
#
##############################################################################
print_v1AccountAccountIDCallflowPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDCallflowPost - Create Call Group${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Create instructions for routing a call to a user or system." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha-numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - Call flow configuration" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDChannelChannelIDGet operation
#
##############################################################################
print_v1AccountAccountIDChannelChannelIDGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDChannelChannelIDGet - Get Channel Details${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Access details about each channel in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}channelID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Channel ID ${YELLOW}Specify as: channelID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDChannelChannelIDPost operation
#
##############################################################################
print_v1AccountAccountIDChannelChannelIDPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDChannelChannelIDPost - Associate Action to Channel${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Link an action, such as transfer or hangup to a channel." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}channelID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Channel ID ${YELLOW}Specify as: channelID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDChannelChannelIDPut operation
#
##############################################################################
print_v1AccountAccountIDChannelChannelIDPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDChannelChannelIDPut - Associate Metaflow to Channel${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Link a metaflow to an active channel." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}channelID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Channel ID ${YELLOW}Specify as: channelID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDChannelGet operation
#
##############################################################################
print_v1AccountAccountIDChannelGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDChannelGet - Get Account Channel List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get a list of active channels for an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDDeviceDeviceIDChannelGet operation
#
##############################################################################
print_v1AccountAccountIDDeviceDeviceIDChannelGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDDeviceDeviceIDChannelGet - Get Device Channel List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get the list of active channels for a device." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}deviceID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Device ID, 32 alpha numeric ${YELLOW}Specify as: deviceID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDUserUserIDChannelGet operation
#
##############################################################################
print_v1AccountAccountIDUserUserIDChannelGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDUserUserIDChannelGet - Get User Channel List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get the list of active channels for a user." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}userID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - User ID, 32 alpha numeric ${YELLOW}Specify as: userID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDCdrCdrIDGet operation
#
##############################################################################
print_v1AccountAccountIDCdrCdrIDGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDCdrCdrIDGet - Get CDR Details${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve the details of a single CDR record from an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}cdrID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDR ID, string ${YELLOW}Specify as: cdrID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDCdrGet operation
#
##############################################################################
print_v1AccountAccountIDCdrGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDCdrGet - Get CDR List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve a list of CDRs in a specific account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Page size (Maximum number of results to display per page)${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Start key (Starting offset for displaying results)${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}created_from${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - For displaying records which are created on or after this timestamp (Supported timestamp formats: iso 8601, unix time in seconds or milliseconds or microseconds or nanoseconds)${YELLOW} Specify as: created_from=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}created_to${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - For displaying records which are created on or before this timestamp (Supported timestamp formats: iso 8601, unix time in seconds or milliseconds or microseconds or nanoseconds)${YELLOW} Specify as: created_to=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1DataCallDailySummaryGet operation
#
##############################################################################
print_v1DataCallDailySummaryGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1DataCallDailySummaryGet - Get Call Daily Summary List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve a daily summary of calls, including the account ID that made or received a call, the call type, the month and year, the duration, and other relevant information." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}account_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: account_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}call_type${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: call_type=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}end_date${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: end_date=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_date${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: start_date=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1DataCallDetailGet operation
#
##############################################################################
print_v1DataCallDetailGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1DataCallDetailGet - Get Call Detail List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve specific details about a call (e.g., caller, recipient, date, time, duration, etc.)." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}account${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: account=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}call_type${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: call_type=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}callee_name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: callee_name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}callee_number${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: callee_number=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}caller_name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: caller_name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}caller_number${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: caller_number=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}end_date${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: end_date=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_date${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: start_date=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1DataCallMonthlySummaryGet operation
#
##############################################################################
print_v1DataCallMonthlySummaryGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1DataCallMonthlySummaryGet - Get Call Detail List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve a monthly summary of calls, including which accounts made or received calls, the call type, and other relevant information." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}account${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: account=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}call_type${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: call_type=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}end_month${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: end_month=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}end_year${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: end_year=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_month${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: start_month=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_year${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: start_year=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1DataEndpointListGet operation
#
##############################################################################
print_v1DataEndpointListGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1DataEndpointListGet - Get Endpoint List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Access the endpoint list for each CPaaS API." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}endpoint_name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endpoint_name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}feature_name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: feature_name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}transaction_type${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: transaction_type=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1DataEventDailySummaryGet operation
#
##############################################################################
print_v1DataEventDailySummaryGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1DataEventDailySummaryGet - Get Event Daily Summary List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Obtain a daily summary of events in a CPaaS account (e.g., setting/resetting the presence status for a user or extension)." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}account_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: account_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}component${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: component=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}end_date${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: end_date=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_date${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: start_date=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1DataEventDetailGet operation
#
##############################################################################
print_v1DataEventDetailGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1DataEventDetailGet - Get Event Details${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Obtain specific details about an event (e.g., an E911 notification, a deleted account, or a created user)." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}account_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: account_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}component${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: component=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}end_date_time${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: end_date_time=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}event_name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: event_name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}exec_status${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: exec_status=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_date_time${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: start_date_time=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}username${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: username=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1DataEventMonthlySummaryGet operation
#
##############################################################################
print_v1DataEventMonthlySummaryGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1DataEventMonthlySummaryGet - Get Event Monthly Summary List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Obtain a monthly summary of events in a CPaaS account (e.g., adding media files or assigning phone numbers)." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}account_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: account_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}component${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: component=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}end_month${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: end_month=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}end_year${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: end_year=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_month${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: start_month=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_year${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: start_year=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1DataFeatureDailySummaryGet operation
#
##############################################################################
print_v1DataFeatureDailySummaryGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1DataFeatureDailySummaryGet - Get Feature Daily Summary List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve a daily summary about a feature, including usage, which accounts execute the steps, and other relevant information." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}end_date${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: end_date=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}feature_name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: feature_name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_date${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: start_date=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1DataFeatureMonthlySummaryGet operation
#
##############################################################################
print_v1DataFeatureMonthlySummaryGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1DataFeatureMonthlySummaryGet - Get Feature Monthly Summary List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve a monthly summary about a feature’s usage, new users, updates, and other relevant information." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}end_month${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: end_month=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}end_year${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: end_year=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}feature_name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: feature_name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_month${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: start_month=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_year${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: start_year=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidDeviceDeviceidDelete operation
#
##############################################################################
print_v1AccountAccountidDeviceDeviceidDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidDeviceDeviceidDelete - Delete Device${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Remove one device from a CPaaS account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}deviceid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Device ID, 32 alpha numeric ${YELLOW}Specify as: deviceid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidDeviceDeviceidGet operation
#
##############################################################################
print_v1AccountAccountidDeviceDeviceidGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidDeviceDeviceidGet - Get Device Details${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Permit a user to view specific device details." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}deviceid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Device ID, 32 alpha numeric ${YELLOW}Specify as: deviceid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidDeviceDeviceidPut operation
#
##############################################################################
print_v1AccountAccountidDeviceDeviceidPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidDeviceDeviceidPut - Update Device${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Edit specifics about the device, such as the device type, name, and owner." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}deviceid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Device ID, 32 alpha numeric ${YELLOW}Specify as: deviceid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - device fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidDeviceDeviceidRebootPost operation
#
##############################################################################
print_v1AccountAccountidDeviceDeviceidRebootPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidDeviceDeviceidRebootPost - Reboot Device${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Reboot a device in an account to mitigate malware and improve device performance." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}deviceid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Device ID, 32 alpha numeric ${YELLOW}Specify as: deviceid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidDeviceGet operation
#
##############################################################################
print_v1AccountAccountidDeviceGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidDeviceGet - Get Device List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Obtain a list of all devices associated with an account such as fax machines, cell phones, and soft phones." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - start_key for pagination that was returned as next_start_key from your previous call${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - number of records to return, range 1 to 50${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidDevicePost operation
#
##############################################################################
print_v1AccountAccountidDevicePost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidDevicePost - Create Device${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Connect a new device to an account to enhance communication methods." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - device fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidDeviceStatusGet operation
#
##############################################################################
print_v1AccountAccountidDeviceStatusGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidDeviceStatusGet - Get Device Status${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve a device’s status (e.g., registered or not registered) in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1E911Get operation
#
##############################################################################
print_v1E911Get_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1E911Get - Get E911 List${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Obtain e911 URIs associated with the provided account ID." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful response with e911 URIs${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Authorization failed or root account not allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal server error, including environment credential issues, HTTP request failures, or XML unmarshaling errors${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1E911LocationLocationIDActivatePut operation
#
##############################################################################
print_v1E911LocationLocationIDActivatePut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1E911LocationLocationIDActivatePut - Activate E911 Location${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Edit the provision location." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}locationID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Location ID ${YELLOW}Specify as: locationID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful response with location activate status${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Authorization failed or root account not allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal server error, including environment credential issues, HTTP request failures, or XML unmarshaling errors${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1E911LocationLocationIDDelete operation
#
##############################################################################
print_v1E911LocationLocationIDDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1E911LocationLocationIDDelete - Delete E911 Location${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Remove the location." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}locationID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Location ID ${YELLOW}Specify as: locationID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful response with location remove status${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Authorization failed or root account not allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal server error, including environment credential issues, HTTP request failures, or XML unmarshaling errors${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1E911LocationValidatePut operation
#
##############################################################################
print_v1E911LocationValidatePut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1E911LocationValidatePut - Validate a Location${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Validate the location details." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - location details" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful response with location details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Authorization failed or root account not allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal server error, including environment credential issues, HTTP request failures, or XML unmarshaling errors${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1E911PhoneNumberDelete operation
#
##############################################################################
print_v1E911PhoneNumberDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1E911PhoneNumberDelete - Delete E911 Phone Number${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Delete the e911 URI connected with the account URI." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}phoneNumber${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Phone Number ${YELLOW}Specify as: phoneNumber=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Authorization failed or root account not allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal server error, including environment credential issues, HTTP request failures, or XML unmarshaling errors${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1E911PhoneNumberLocationActiveGet operation
#
##############################################################################
print_v1E911PhoneNumberLocationActiveGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1E911PhoneNumberLocationActiveGet - Get Actvie Location for a Phone Number${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get the e911 location connected with the URI." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}phoneNumber${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Phone Number ${YELLOW}Specify as: phoneNumber=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful response with e911 Active Location URI${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Authorization failed or root account not allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal server error, including environment credential issues, HTTP request failures, or XML unmarshaling errors${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1E911PhoneNumberLocationGet operation
#
##############################################################################
print_v1E911PhoneNumberLocationGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1E911PhoneNumberLocationGet - Get Location List for Phone Number${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Access a list of the e911 locations associated with the provided URI." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}phoneNumber${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Phone Number ${YELLOW}Specify as: phoneNumber=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful response with e911 Locations URI${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Authorization failed or root account not allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal server error, including environment credential issues, HTTP request failures, or XML unmarshaling errors${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1E911Post operation
#
##############################################################################
print_v1E911Post_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1E911Post - Create an E911 Location${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Enter new location details." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - location details" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful response with location details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Authorization failed or root account not allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal server error, including environment credential issues, HTTP request failures, or XML unmarshaling errors${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDGroupGet operation
#
##############################################################################
print_v1AccountAccountIDGroupGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDGroupGet - Get Group List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get a list of groups associated with an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - start_key for pagination that was returned as next_start_key from your previous call${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - number of records to return, range 1 to 50${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDGroupGroupIDDelete operation
#
##############################################################################
print_v1AccountAccountIDGroupGroupIDDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDGroupGroupIDDelete - Delete Group${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Delete a call group in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groupID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - group ID, 32 alpha numeric ${YELLOW}Specify as: groupID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDGroupGroupIDGet operation
#
##############################################################################
print_v1AccountAccountIDGroupGroupIDGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDGroupGroupIDGet - Get Group Details${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Access details about a single group within an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groupID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Group ID, 32 alpha numeric ${YELLOW}Specify as: groupID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDGroupGroupIDPut operation
#
##############################################################################
print_v1AccountAccountIDGroupGroupIDPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDGroupGroupIDPut - Update Group${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Modify the name, settings and other information for a group within an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groupID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Group ID, 32 alpha numeric ${YELLOW}Specify as: groupID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDGroupPost operation
#
##############################################################################
print_v1AccountAccountIDGroupPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDGroupPost - Create Group${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Provide an additional resource by adding a group list to an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - group fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDMediaMediaIDFileGet operation
#
##############################################################################
print_v1AccountAccountIDMediaMediaIDFileGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDMediaMediaIDFileGet - Get Media File${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gather data about the media objects in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mediaID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Media ID, 32 alpha numeric ${YELLOW}Specify as: mediaID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDMediaMediaIDFilePost operation
#
##############################################################################
print_v1AccountAccountIDMediaMediaIDFilePost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDMediaMediaIDFilePost - Add Media File${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Include a media file that is connected to a media object in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mediaID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Media ID, 32 alpha numeric ${YELLOW}Specify as: mediaID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidMediaGet operation
#
##############################################################################
print_v1AccountAccountidMediaGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidMediaGet - Get Media List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "View all media files for an account in your organization." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - start_key for pagination that was returned as next_start_key from your previous call${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - number of records to return, range 1 to 50${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidMediaMediaidDelete operation
#
##############################################################################
print_v1AccountAccountidMediaMediaidDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidMediaMediaidDelete - Delete Media${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Remove a media file that is no longer in use from an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mediaid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Device ID, 32 alpha numeric ${YELLOW}Specify as: mediaid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidMediaMediaidGet operation
#
##############################################################################
print_v1AccountAccountidMediaMediaidGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidMediaMediaidGet - Get Media Details${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Permit users to view an account's specific media information." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mediaid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Media ID, 32 alpha numeric ${YELLOW}Specify as: mediaid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidMediaPost operation
#
##############################################################################
print_v1AccountAccountidMediaPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidMediaPost - Create Media${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Generate a media object to allow users to upload a media file in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - Media creation or update payload" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDMenuGet operation
#
##############################################################################
print_v1AccountAccountIDMenuGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDMenuGet - Get Menu List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Users can access data about all menus in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - start_key for pagination that was returned as next_start_key from your previous call${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - number of records to return, range 1 to 50${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDMenuMenuIDDelete operation
#
##############################################################################
print_v1AccountAccountIDMenuMenuIDDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDMenuMenuIDDelete - Delete Menu${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Delete a menu from an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}menuID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Menu ID, 32 alpha numeric ${YELLOW}Specify as: menuID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDMenuMenuIDGet operation
#
##############################################################################
print_v1AccountAccountIDMenuMenuIDGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDMenuMenuIDGet - Get Menu Details${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get details about a menu in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}menuID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Menu ID, 32 alpha numeric ${YELLOW}Specify as: menuID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDMenuMenuIDPut operation
#
##############################################################################
print_v1AccountAccountIDMenuMenuIDPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDMenuMenuIDPut - Update Menu${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Edit an account menu." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}menuID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Menu ID, 32 alpha numeric ${YELLOW}Specify as: menuID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDMenuPost operation
#
##############################################################################
print_v1AccountAccountIDMenuPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDMenuPost - Create Menu${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Create a new menu for an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alphanumeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - Menu data" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDDeviceDeviceIDMetaflowDelete operation
#
##############################################################################
print_v1AccountAccountIDDeviceDeviceIDMetaflowDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDDeviceDeviceIDMetaflowDelete - Delete Device Metaflow${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Delete all metaflows associated with a device." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}deviceID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Device ID, 32 alpha numeric ${YELLOW}Specify as: deviceID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDDeviceDeviceIDMetaflowGet operation
#
##############################################################################
print_v1AccountAccountIDDeviceDeviceIDMetaflowGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDDeviceDeviceIDMetaflowGet - Get Device Metaflow List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get the list of metaflows for a device." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}deviceID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Device ID, 32 alpha numeric ${YELLOW}Specify as: deviceID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDDeviceDeviceIDMetaflowPost operation
#
##############################################################################
print_v1AccountAccountIDDeviceDeviceIDMetaflowPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDDeviceDeviceIDMetaflowPost - Create Device Metaflow${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Create a metaflow or multiple metaflows for a device." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}deviceID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Device ID, 32 alpha numeric ${YELLOW}Specify as: deviceID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDMetaflowDelete operation
#
##############################################################################
print_v1AccountAccountIDMetaflowDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDMetaflowDelete - Delete Account Metaflow${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Remove all metaflows from an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDMetaflowGet operation
#
##############################################################################
print_v1AccountAccountIDMetaflowGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDMetaflowGet - Get Account Metaflow List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get an account's metaflow list." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDMetaflowPost operation
#
##############################################################################
print_v1AccountAccountIDMetaflowPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDMetaflowPost - Create Account Metaflow${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Generate a metaflow for an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - Metaflow fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDUserUserIDMetaflowDelete operation
#
##############################################################################
print_v1AccountAccountIDUserUserIDMetaflowDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDUserUserIDMetaflowDelete - Delete User Metaflow${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Delete all metaflows associated with a user." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}userID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - user ID, 32 alpha numeric ${YELLOW}Specify as: userID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDUserUserIDMetaflowGet operation
#
##############################################################################
print_v1AccountAccountIDUserUserIDMetaflowGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDUserUserIDMetaflowGet - Get User Metaflow List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get the list of metaflows for a user." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}userID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - user ID, 32 alpha numeric ${YELLOW}Specify as: userID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDUserUserIDMetaflowPost operation
#
##############################################################################
print_v1AccountAccountIDUserUserIDMetaflowPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDUserUserIDMetaflowPost - Create User Metaflow${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Add a metaflow or multiple metaflows for a user in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}userID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - user ID, 32 alpha numeric ${YELLOW}Specify as: userID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidPhonenumberGet operation
#
##############################################################################
print_v1AccountAccountidPhonenumberGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidPhonenumberGet - Get Assigned Numbers List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Access all phone numbers assigned to a CPaaS account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Start key for pagination, obtained from previous responses${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Number of records to return per page (range: 1 to 50)${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountPhonenumberAssignPost operation
#
##############################################################################
print_v1AccountPhonenumberAssignPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountPhonenumberAssignPost - Assign Number${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Assign a purchased phone number to an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - assignment payload" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountPhonenumberDisconnectPost operation
#
##############################################################################
print_v1AccountPhonenumberDisconnectPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountPhonenumberDisconnectPost - Disconnect Number${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Disconnecting a phone number from a CPaaS account relinquishes ownership of the number back to the carrier." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - disconnect payload" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountPhonenumberGet operation
#
##############################################################################
print_v1AccountPhonenumberGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountPhonenumberGet - Get Unassigned Numbers List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Obtain all phone numbers that have not been assigned to a CPaaS account within your organization." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Start key for pagination, obtained from previous responses${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Number of records to return per page (range: 1 to 50)${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountPhonenumberPost operation
#
##############################################################################
print_v1AccountPhonenumberPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountPhonenumberPost - Purchase Number${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Purchase or activate a phone number for CPaaS accounts within your business." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - phonenumber fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountPhonenumberUnassignPost operation
#
##############################################################################
print_v1AccountPhonenumberUnassignPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountPhonenumberUnassignPost - Unassign Number${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Remove a phone number from an account and place it back on the list of unassigned phone numbers." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - unassign payload" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1PhonenumberSearchGet operation
#
##############################################################################
print_v1PhonenumberSearchGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1PhonenumberSearchGet - Search New Numbers${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Conduct a search for available phone numbers for purchase within an area code." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}area_code${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Area code (exactly 3 numeric characters) example: 610 or 484${YELLOW} Specify as: area_code=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}quantity${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Number of records to return (range: 1 to 100, defaults to 100 if not provided)${YELLOW} Specify as: quantity=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDPresenceExtensionPut operation
#
##############################################################################
print_v1AccountAccountIDPresenceExtensionPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDPresenceExtensionPut - Set/Reset Presence for Extension${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Set or reset the presence status of an extension." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}extension${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Extension ${YELLOW}Specify as: extension=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDPresenceGet operation
#
##############################################################################
print_v1AccountAccountIDPresenceGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDPresenceGet - Get Presence Details${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve details of presence subscriptions in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDUserUserIDPresencePut operation
#
##############################################################################
print_v1AccountAccountIDUserUserIDPresencePut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDUserUserIDPresencePut - Set/Reset Presence for User${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Set or reset the presence status of a user within an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}userID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - User ID, 32 alpha numeric ${YELLOW}Specify as: userID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDProvisionFilenameGet operation
#
##############################################################################
print_v1AccountAccountIDProvisionFilenameGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDProvisionFilenameGet - Get Config File Details${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve the configuration details (e.g., settings and parameters) for a device." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filename${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Name of config file ${YELLOW}Specify as: filename=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1ApBrandBrandFamilyFamilyGet operation
#
##############################################################################
print_v1ApBrandBrandFamilyFamilyGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1ApBrandBrandFamilyFamilyGet - Get Family Details${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve a family's details by the randomly generated ID." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}brand${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - brand ${YELLOW}Specify as: brand=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}family${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - family ${YELLOW}Specify as: family=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1ApBrandBrandFamilyFamilyModelGet operation
#
##############################################################################
print_v1ApBrandBrandFamilyFamilyModelGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1ApBrandBrandFamilyFamilyModelGet - Get Model List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve a list of all models within a family for a brand (e.g., Yealink and Polycom)." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}brand${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - brand ${YELLOW}Specify as: brand=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}family${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - family ${YELLOW}Specify as: family=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}model_name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: model_name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}status${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: status=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1ApBrandBrandFamilyFamilyModelModelGet operation
#
##############################################################################
print_v1ApBrandBrandFamilyFamilyModelModelGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1ApBrandBrandFamilyFamilyModelModelGet - Get Model Details${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve a model's details by the randomly generated ID." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}brand${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - brand ${YELLOW}Specify as: brand=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}family${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - family ${YELLOW}Specify as: family=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - model ${YELLOW}Specify as: model=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1ApBrandBrandFamilyFamilyModelModelTemplateGet operation
#
##############################################################################
print_v1ApBrandBrandFamilyFamilyModelModelTemplateGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1ApBrandBrandFamilyFamilyModelModelTemplateGet - Get Template List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve a list of all templates for a model within a brand (e.g., Yealink and Polycom)." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}brand${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - brand ${YELLOW}Specify as: brand=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}family${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - family ${YELLOW}Specify as: family=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - model ${YELLOW}Specify as: model=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}firmware${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: firmware=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}status${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: status=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}template_name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: template_name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet operation
#
##############################################################################
print_v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet - Get Template Details${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve details about a template for a model by the randomly generated ID." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}brand${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - brand ${YELLOW}Specify as: brand=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}family${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - family ${YELLOW}Specify as: family=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - model ${YELLOW}Specify as: model=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}template${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - template ${YELLOW}Specify as: template=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1ApBrandBrandFamilyGet operation
#
##############################################################################
print_v1ApBrandBrandFamilyGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1ApBrandBrandFamilyGet - Get Family List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve a list of all families for a brand (e.g., Yealink and Polycom)." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}brand${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - brand ${YELLOW}Specify as: brand=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}family_name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: family_name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}status${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: status=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1ApBrandBrandGet operation
#
##############################################################################
print_v1ApBrandBrandGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1ApBrandBrandGet - Get Brand Details${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve a brand's details by the randomly generated ID." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}brand${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - brand id to retrieve a brand ${YELLOW}Specify as: brand=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1ApBrandGet operation
#
##############################################################################
print_v1ApBrandGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1ApBrandGet - Get Brand List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve a list of all brands (e.g., Yealink and Polycom) by client." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}brand_name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: brand_name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}status${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: status=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1ApConfigfileGeneratePost operation
#
##############################################################################
print_v1ApConfigfileGeneratePost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1ApConfigfileGeneratePost - Generate Config File${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Generate a configuration file that includes a list of parameters passed to the specified template_id in the request payload, with populated values returned in the response." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - body params to generate config file" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1SmsAccountAccountIDCampaignCampaignIDImportGet operation
#
##############################################################################
print_v1SmsAccountAccountIDCampaignCampaignIDImportGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1SmsAccountAccountIDCampaignCampaignIDImportGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get details about a single imported campaign in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}campaignID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Campaign ID ${YELLOW}Specify as: campaignID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1SmsAccountAccountIDCampaignCampaignIDImportPost operation
#
##############################################################################
print_v1SmsAccountAccountIDCampaignCampaignIDImportPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1SmsAccountAccountIDCampaignCampaignIDImportPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Import campaign" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}campaignID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Campaign ID ${YELLOW}Specify as: campaignID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet operation
#
##############################################################################
print_v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get telephone numbers associated with a campaign." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}campaignID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Campaign ID ${YELLOW}Specify as: campaignID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_num${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Page number${YELLOW} Specify as: page_num=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Page size${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut operation
#
##############################################################################
print_v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Associate or dissociate telephone numbers with a campaign." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}campaignID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Campaign ID, 32 alpha numeric ${YELLOW}Specify as: campaignID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1SmsAccountAccountIDCampaignImportGet operation
#
##############################################################################
print_v1SmsAccountAccountIDCampaignImportGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1SmsAccountAccountIDCampaignImportGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get a list of all imported campaigns in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_num${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Page number${YELLOW} Specify as: page_num=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Page size${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDStorageDelete operation
#
##############################################################################
print_v1AccountAccountIDStorageDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDStorageDelete - Delete Storage${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Delete items that are stored in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDStorageGet operation
#
##############################################################################
print_v1AccountAccountIDStorageGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDStorageGet - Get Storage Details${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve storage details for an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDStoragePost operation
#
##############################################################################
print_v1AccountAccountIDStoragePost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDStoragePost - Create Storage${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Create storage in an account for voicemails, call recordings, faxes, etc." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDStoragePut operation
#
##############################################################################
print_v1AccountAccountIDStoragePut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDStoragePut - Update Storage${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Modify the names of metadata to make it easier to locate (e.g., change the name of voicemail_storage to voicemail_and_callrecordings_storage, etc.)." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1ApPingGet operation
#
##############################################################################
print_v1ApPingGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1ApPingGet - Provisioning Ping${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Ping the provisioning service." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1PingGet operation
#
##############################################################################
print_v1PingGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1PingGet - Ping Backend${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get the ping message." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1PingseccognitoGet operation
#
##############################################################################
print_v1PingseccognitoGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1PingseccognitoGet - Ping Cognito${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get a secure ping message." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1SystemStatusGet operation
#
##############################################################################
print_v1SystemStatusGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1SystemStatusGet - Get System Status${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get the system status." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDTemporalruleGet operation
#
##############################################################################
print_v1AccountAccountIDTemporalruleGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDTemporalruleGet - Get Temporal Rule List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Access all temporal rules for an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - start_key for pagination that was returned as next_start_key from your previous call${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - number of records to return, range 1 to 50${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDTemporalrulePost operation
#
##############################################################################
print_v1AccountAccountIDTemporalrulePost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDTemporalrulePost - Create Temporal Rule${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Create temporal rules for an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alphanumeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDTemporalruleTemporalRuleIDDelete operation
#
##############################################################################
print_v1AccountAccountIDTemporalruleTemporalRuleIDDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDTemporalruleTemporalRuleIDDelete - Delete Temporal Rule${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Remove a temporal rule from an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}temporalRuleID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - temporal rule ID, 32 alpha numeric ${YELLOW}Specify as: temporalRuleID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDTemporalruleTemporalRuleIDGet operation
#
##############################################################################
print_v1AccountAccountIDTemporalruleTemporalRuleIDGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDTemporalruleTemporalRuleIDGet - Get Temporal Rule Details${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "View details about individual time rules." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}temporalRuleID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Temporal Rule ID, 32 alpha numeric ${YELLOW}Specify as: temporalRuleID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDTemporalruleTemporalRuleIDPut operation
#
##############################################################################
print_v1AccountAccountIDTemporalruleTemporalRuleIDPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDTemporalruleTemporalRuleIDPut - Update Temporal Rule${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Edit the existing temporal rules in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}temporalRuleID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Temporal Rule ID, 32 alpha numeric ${YELLOW}Specify as: temporalRuleID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDTemporalrulesetGet operation
#
##############################################################################
print_v1AccountAccountIDTemporalrulesetGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDTemporalrulesetGet - Get Temporal Rule Set List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Access the temporal rule set list in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - start_key for pagination that was returned as next_start_key from your previous call${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - number of records to return, range 1 to 50${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDTemporalrulesetPost operation
#
##############################################################################
print_v1AccountAccountIDTemporalrulesetPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDTemporalrulesetPost - Create Temporal Rule Set${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Develop a new temporal rule set for an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alphanumeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDTemporalrulesetTemporalRuleSetIDDelete operation
#
##############################################################################
print_v1AccountAccountIDTemporalrulesetTemporalRuleSetIDDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDTemporalrulesetTemporalRuleSetIDDelete - Delete Temporal Rule Set${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Delete the temporal rule set from an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}temporalRuleSetID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - temporal rule set ID, 32 alpha numeric ${YELLOW}Specify as: temporalRuleSetID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDTemporalrulesetTemporalRuleSetIDGet operation
#
##############################################################################
print_v1AccountAccountIDTemporalrulesetTemporalRuleSetIDGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDTemporalrulesetTemporalRuleSetIDGet - Get Temporal Rule Set Details${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Acquire details about a temporal rule set in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}temporalRuleSetID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Temporal Ruleset ID, 32 alpha numeric ${YELLOW}Specify as: temporalRuleSetID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut operation
#
##############################################################################
print_v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut - Update Temporal Rule Set${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Efficiently adjust the temporal rule set in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}temporalRuleSetID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Temporal Ruleset ID, 32 alpha numeric ${YELLOW}Specify as: temporalRuleSetID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidUserGet operation
#
##############################################################################
print_v1AccountAccountidUserGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidUserGet - Get User List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get a list of all VoIP users that includes first and last names, email addresses, extensions, and account statuses." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - start_key for pagination that was returned as next_start_key from your previous call${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - number of records to return, range 1 to 50${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidUserPost operation
#
##############################################################################
print_v1AccountAccountidUserPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidUserPost - Create User${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Add new users to the account. When a user is added, the system generates their unique 32 alpha numeric ID." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - user fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidUserUseridDelete operation
#
##############################################################################
print_v1AccountAccountidUserUseridDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidUserUseridDelete - Delete User${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Delete VoIP user access to maintain the security of your accounts." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}userid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - User ID, 32 alpha numeric ${YELLOW}Specify as: userid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidUserUseridGet operation
#
##############################################################################
print_v1AccountAccountidUserUseridGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidUserUseridGet - Get User Details${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "View specific user details." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}userid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - User ID, 32 alpha numeric ${YELLOW}Specify as: userid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidUserUseridPut operation
#
##############################################################################
print_v1AccountAccountidUserUseridPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidUserUseridPut - Update User${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Keep user information current. Modify the first and last name, extension, and other pertinent information." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}userid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - User ID, 32 alpha numeric ${YELLOW}Specify as: userid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - user fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountidUserUseridUserauthPost operation
#
##############################################################################
print_v1AccountAccountidUserUseridUserauthPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountidUserUseridUserauthPost - Impersonate a User${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve a token for making presence calls." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}userid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - User ID, 32 alpha numeric ${YELLOW}Specify as: userid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - Payload for impersonate a user" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDVoicemailGet operation
#
##############################################################################
print_v1AccountAccountIDVoicemailGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDVoicemailGet - Get Voicemail Box List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "List all voicemail boxes in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - start_key for pagination that was returned as next_start_key from your previous call${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - number of records to return, range 1 to 50${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDVoicemailPost operation
#
##############################################################################
print_v1AccountAccountIDVoicemailPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDVoicemailPost - Create Voicemail Box${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Create a voicemail box for receiving and storing voicemail messages." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - account ID, 32 alphanumeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - voicemail payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDVoicemailVoicemailIDDelete operation
#
##############################################################################
print_v1AccountAccountIDVoicemailVoicemailIDDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDVoicemailVoicemailIDDelete - Delete Voicemail Box${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Delete a voicemail box in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}voicemailID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Voicemail ID, 32 alpha numeric ${YELLOW}Specify as: voicemailID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDVoicemailVoicemailIDGet operation
#
##############################################################################
print_v1AccountAccountIDVoicemailVoicemailIDGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDVoicemailVoicemailIDGet - Get Voicemail Box Details${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get information about a single voicemail box." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}voicemailID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Voicemail ID, 32 alpha numeric ${YELLOW}Specify as: voicemailID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDVoicemailVoicemailIDMessageGet operation
#
##############################################################################
print_v1AccountAccountIDVoicemailVoicemailIDMessageGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDVoicemailVoicemailIDMessageGet - Get Voicemail Message List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get a list of voicemail messages from an account's voicemail box." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}voicemailID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - voicemail ID, 32 alpha numeric ${YELLOW}Specify as: voicemailID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start_key${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - start_key for pagination that was returned as next_start_key from your previous call${YELLOW} Specify as: start_key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - number of records to return, range 1 to 50${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete operation
#
##############################################################################
print_v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete - Delete Voicemail Message${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Delete a voicemail message from a voicemail box in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}voicemailID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Voicemail ID, 32 alpha numeric ${YELLOW}Specify as: voicemailID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}messageID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - message ID, 32 alpha numeric ${YELLOW}Specify as: messageID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet operation
#
##############################################################################
print_v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet - Get Voicemail Message Details${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve the container details of an individual voicemail message. This includes a reference to the audio file, but not the message itself." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}voicemailID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Voicemail ID, 32 alpha numeric ${YELLOW}Specify as: voicemailID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}messageID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Message ID, 39 (yyyymm-<32 id>) ${YELLOW}Specify as: messageID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut operation
#
##############################################################################
print_v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut - Update Voicemail Message${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Copy or move a voicemail message to a different folder in the same voicemail box or move the message to a separate voicemail box." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}voicemailID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Voicemail ID, 32 alpha numeric ${YELLOW}Specify as: voicemailID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}messageID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Message ID, 39 (yyyymm-<32 id>) ${YELLOW}Specify as: messageID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet operation
#
##############################################################################
print_v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet - Get Voicemail Message File${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get the original audio content of a specific voicemail message identified by its unique ID within an account's voicemail box.
URL Param \"voicemailID\" is a unique 32-character alphanumeric identifier assigned by the system, which refers to a specific voicemail box.
URL Param \"messageID\" is a unique 32-character alphanumeric identifier assigned by the system, which refers to a specific message within a voicemail box." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, unique 32-character alphanumeric identifier ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}voicemailID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Voicemail Box ID, unique 32-character alphanumeric identifier ${YELLOW}Specify as: voicemailID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}messageID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Message ID, unique 32-character alphanumeric identifier ${YELLOW}Specify as: messageID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost operation
#
##############################################################################
print_v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost - Add Voicemail Message File${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Associate an audio recording file with the voicemail to fully complete the message." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alphanumeric characters ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}voicemailID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Voicemail ID, 32 alphanumeric characters ${YELLOW}Specify as: voicemailID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}messageID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Message ID, 32 alphanumeric characters ${YELLOW}Specify as: messageID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDVoicemailVoicemailIDMessagePost operation
#
##############################################################################
print_v1AccountAccountIDVoicemailVoicemailIDMessagePost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDVoicemailVoicemailIDMessagePost - Create Voicemail Message${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Create the container information for a recorded voicemail message in a voicemail box." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - account ID, 32 alphanumeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}voicemailID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - voicemail ID, 32 alphanumeric ${YELLOW}Specify as: voicemailID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - voicemail message payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AccountAccountIDVoicemailVoicemailIDPut operation
#
##############################################################################
print_v1AccountAccountIDVoicemailVoicemailIDPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AccountAccountIDVoicemailVoicemailIDPut - Update Voicemail Box${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Update the settings in an individual voicemail box, such as the owner, PIN, etc." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID, 32 alpha numeric ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}voicemailID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Voicemail ID, 32 alpha numeric ${YELLOW}Specify as: voicemailID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - payload fields" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1WebhookAccountAccountIDGet operation
#
##############################################################################
print_v1WebhookAccountAccountIDGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1WebhookAccountAccountIDGet - Get Webhook List${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve the webhook list in an account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - number of records to return, range 1 to 50${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}current_page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Current Page${YELLOW} Specify as: current_page=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1WebhookAccountAccountIDPost operation
#
##############################################################################
print_v1WebhookAccountAccountIDPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1WebhookAccountAccountIDPost - Create Webhook${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Create a webhook for a specific account ID." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[]${OFF} ${RED}(required)${OFF}${OFF} - Webhook data" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1WebhookAccountAccountIDWebhookIDDelete operation
#
##############################################################################
print_v1WebhookAccountAccountIDWebhookIDDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1WebhookAccountAccountIDWebhookIDDelete - Delete Webhook${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Remove a webhook identified by its ID for a particular account ID." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}webhookID${OFF} ${BLUE}[integer]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Webhook ID ${YELLOW}Specify as: webhookID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1WebhookAccountAccountIDWebhookIDGet operation
#
##############################################################################
print_v1WebhookAccountAccountIDWebhookIDGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1WebhookAccountAccountIDWebhookIDGet - Get Webhook Details${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Access details about a single webhook ID for an individual account ID." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}webhookID${OFF} ${BLUE}[integer]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Webhook ID ${YELLOW}Specify as: webhookID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1WebhookAccountAccountIDWebhookIDPut operation
#
##############################################################################
print_v1WebhookAccountAccountIDWebhookIDPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1WebhookAccountAccountIDWebhookIDPut - Update Webhook${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Update a webhook identified by its ID for a distinct account ID." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accountID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Account ID ${YELLOW}Specify as: accountID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}webhookID${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Webhook ID ${YELLOW}Specify as: webhookID=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[]${OFF} ${RED}(required)${OFF}${OFF} - Updated webhook data" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}


##############################################################################
#
# Call v1AccountAccountidChildrenGet operation
#
##############################################################################
call_v1AccountAccountidChildrenGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(start_key page_size  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/children" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountidDelete operation
#
##############################################################################
call_v1AccountAccountidDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountidDnsrecordGet operation
#
##############################################################################
call_v1AccountAccountidDnsrecordGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/dnsrecord" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountidDnsrecordPost operation
#
##############################################################################
call_v1AccountAccountidDnsrecordPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/dnsrecord" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountidDnsrecordPut operation
#
##############################################################################
call_v1AccountAccountidDnsrecordPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/dnsrecord" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountidGet operation
#
##############################################################################
call_v1AccountAccountidGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountidLimitGet operation
#
##############################################################################
call_v1AccountAccountidLimitGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/limit" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountidLimitPut operation
#
##############################################################################
call_v1AccountAccountidLimitPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/limit" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountidPost operation
#
##############################################################################
call_v1AccountAccountidPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountidProvisioningdetailsGet operation
#
##############################################################################
call_v1AccountAccountidProvisioningdetailsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/provisioningdetails" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountidProvisioningdetailsResetpwPut operation
#
##############################################################################
call_v1AccountAccountidProvisioningdetailsResetpwPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/provisioningdetails/resetpw" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountidPut operation
#
##############################################################################
call_v1AccountAccountidPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountApikeyGet operation
#
##############################################################################
call_v1AccountApikeyGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/apikey" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountGet operation
#
##############################################################################
call_v1AccountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(start_key page_size  )
    local path

    if ! path=$(build_request_path "/v1/account" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountPost operation
#
##############################################################################
call_v1AccountPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1MgmtUserGet operation
#
##############################################################################
call_v1MgmtUserGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page_size start_key sort email role first_name last_name  )
    local path

    if ! path=$(build_request_path "/v1/mgmt/user" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1MgmtUserPost operation
#
##############################################################################
call_v1MgmtUserPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/mgmt/user" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1MgmtUserUserIDDelete operation
#
##############################################################################
call_v1MgmtUserUserIDDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(userID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/mgmt/user/{userID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1MgmtUserUserIDGet operation
#
##############################################################################
call_v1MgmtUserUserIDGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(userID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/mgmt/user/{userID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1MgmtUserUserIDPut operation
#
##############################################################################
call_v1MgmtUserUserIDPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(userID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/mgmt/user/{userID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDParkedcallGet operation
#
##############################################################################
call_v1AccountAccountIDParkedcallGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/parkedcall" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDCallqueueGet operation
#
##############################################################################
call_v1AccountAccountIDCallqueueGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/callqueue" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDCallqueuePost operation
#
##############################################################################
call_v1AccountAccountIDCallqueuePost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/callqueue" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDCallqueueQueueIDDelete operation
#
##############################################################################
call_v1AccountAccountIDCallqueueQueueIDDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID queueID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/callqueue/{queueID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDCallqueueQueueIDGet operation
#
##############################################################################
call_v1AccountAccountIDCallqueueQueueIDGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID queueID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/callqueue/{queueID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDCallqueueQueueIDPut operation
#
##############################################################################
call_v1AccountAccountIDCallqueueQueueIDPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID queueID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/callqueue/{queueID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDCallqueueQueueIDStatusGet operation
#
##############################################################################
call_v1AccountAccountIDCallqueueQueueIDStatusGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID queueID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/callqueue/{queueID}/status" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDQueuerolesGet operation
#
##############################################################################
call_v1AccountAccountIDQueuerolesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/queueroles" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDQueuerolesQueueIDPost operation
#
##############################################################################
call_v1AccountAccountIDQueuerolesQueueIDPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID queueID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/queueroles/{queueID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDQueuemembershipPost operation
#
##############################################################################
call_v1AccountAccountIDQueuemembershipPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/queuemembership" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDQueuemembershipRecipientIDDisablePost operation
#
##############################################################################
call_v1AccountAccountIDQueuemembershipRecipientIDDisablePost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID recipientID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/queuemembership/{recipientID}/disable" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDQueuemembershipRecipientIDEnablePost operation
#
##############################################################################
call_v1AccountAccountIDQueuemembershipRecipientIDEnablePost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID recipientID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/queuemembership/{recipientID}/enable" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDLoginrecipientRecipientIDPost operation
#
##############################################################################
call_v1AccountAccountIDLoginrecipientRecipientIDPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID recipientID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/loginrecipient/{recipientID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDQueuerecipientGet operation
#
##############################################################################
call_v1AccountAccountIDQueuerecipientGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/queuerecipient" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDRecipientRecipientIDStatusPost operation
#
##############################################################################
call_v1AccountAccountIDRecipientRecipientIDStatusPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID recipientID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/recipient/{recipientID}/status" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDRecordingGet operation
#
##############################################################################
call_v1AccountAccountIDRecordingGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/recording" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDRecordingRecordingIDDelete operation
#
##############################################################################
call_v1AccountAccountIDRecordingRecordingIDDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID recordingID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/recording/{recordingID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDRecordingRecordingIDGet operation
#
##############################################################################
call_v1AccountAccountIDRecordingRecordingIDGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID recordingID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/recording/{recordingID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDUserUserIDRecordingGet operation
#
##############################################################################
call_v1AccountAccountIDUserUserIDRecordingGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID userID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/user/{userID}/recording" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDCallflowCallflowIDDelete operation
#
##############################################################################
call_v1AccountAccountIDCallflowCallflowIDDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID callflowID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/callflow/{callflowID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDCallflowCallflowIDGet operation
#
##############################################################################
call_v1AccountAccountIDCallflowCallflowIDGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID callflowID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/callflow/{callflowID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDCallflowCallflowIDPut operation
#
##############################################################################
call_v1AccountAccountIDCallflowCallflowIDPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID callflowID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/callflow/{callflowID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDCallflowGet operation
#
##############################################################################
call_v1AccountAccountIDCallflowGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(start_key page_size  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/callflow" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDCallflowPost operation
#
##############################################################################
call_v1AccountAccountIDCallflowPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/callflow" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDChannelChannelIDGet operation
#
##############################################################################
call_v1AccountAccountIDChannelChannelIDGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID channelID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/channel/{channelID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDChannelChannelIDPost operation
#
##############################################################################
call_v1AccountAccountIDChannelChannelIDPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID channelID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/channel/{channelID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDChannelChannelIDPut operation
#
##############################################################################
call_v1AccountAccountIDChannelChannelIDPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID channelID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/channel/{channelID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDChannelGet operation
#
##############################################################################
call_v1AccountAccountIDChannelGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/channel" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDDeviceDeviceIDChannelGet operation
#
##############################################################################
call_v1AccountAccountIDDeviceDeviceIDChannelGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID deviceID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/device/{deviceID}/channel" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDUserUserIDChannelGet operation
#
##############################################################################
call_v1AccountAccountIDUserUserIDChannelGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID userID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/user/{userID}/channel" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDCdrCdrIDGet operation
#
##############################################################################
call_v1AccountAccountIDCdrCdrIDGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID cdrID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/cdr/{cdrID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDCdrGet operation
#
##############################################################################
call_v1AccountAccountIDCdrGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page_size start_key created_from created_to  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/cdr" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1DataCallDailySummaryGet operation
#
##############################################################################
call_v1DataCallDailySummaryGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(account_id call_type end_date page_size start_date start_key  )
    local path

    if ! path=$(build_request_path "/v1/data/call_daily_summary" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1DataCallDetailGet operation
#
##############################################################################
call_v1DataCallDetailGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(account call_type callee_name callee_number caller_name caller_number end_date page_size start_date start_key  )
    local path

    if ! path=$(build_request_path "/v1/data/call_detail" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1DataCallMonthlySummaryGet operation
#
##############################################################################
call_v1DataCallMonthlySummaryGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(account call_type end_month end_year page_size start_key start_month start_year  )
    local path

    if ! path=$(build_request_path "/v1/data/call_monthly_summary" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1DataEndpointListGet operation
#
##############################################################################
call_v1DataEndpointListGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(endpoint_name feature_name page_size start_key transaction_type version  )
    local path

    if ! path=$(build_request_path "/v1/data/endpoint_list" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1DataEventDailySummaryGet operation
#
##############################################################################
call_v1DataEventDailySummaryGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(account_id component end_date page_size start_date start_key  )
    local path

    if ! path=$(build_request_path "/v1/data/event_daily_summary" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1DataEventDetailGet operation
#
##############################################################################
call_v1DataEventDetailGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(account_id component end_date_time event_name exec_status page_size start_date_time start_key username  )
    local path

    if ! path=$(build_request_path "/v1/data/event_detail" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1DataEventMonthlySummaryGet operation
#
##############################################################################
call_v1DataEventMonthlySummaryGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(account_id component end_month end_year page_size start_key start_month start_year  )
    local path

    if ! path=$(build_request_path "/v1/data/event_monthly_summary" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1DataFeatureDailySummaryGet operation
#
##############################################################################
call_v1DataFeatureDailySummaryGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(end_date feature_name page_size start_date start_key  )
    local path

    if ! path=$(build_request_path "/v1/data/feature_daily_summary" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1DataFeatureMonthlySummaryGet operation
#
##############################################################################
call_v1DataFeatureMonthlySummaryGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(end_month end_year feature_name page_size start_key start_month start_year  )
    local path

    if ! path=$(build_request_path "/v1/data/feature_monthly_summary" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountidDeviceDeviceidDelete operation
#
##############################################################################
call_v1AccountAccountidDeviceDeviceidDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid deviceid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/device/{deviceid}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountidDeviceDeviceidGet operation
#
##############################################################################
call_v1AccountAccountidDeviceDeviceidGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid deviceid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/device/{deviceid}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountidDeviceDeviceidPut operation
#
##############################################################################
call_v1AccountAccountidDeviceDeviceidPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid deviceid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/device/{deviceid}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountidDeviceDeviceidRebootPost operation
#
##############################################################################
call_v1AccountAccountidDeviceDeviceidRebootPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid deviceid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/device/{deviceid}/reboot" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountidDeviceGet operation
#
##############################################################################
call_v1AccountAccountidDeviceGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(start_key page_size  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/device" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountidDevicePost operation
#
##############################################################################
call_v1AccountAccountidDevicePost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/device" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountidDeviceStatusGet operation
#
##############################################################################
call_v1AccountAccountidDeviceStatusGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/device/status" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1E911Get operation
#
##############################################################################
call_v1E911Get() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/v1/e911" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1E911LocationLocationIDActivatePut operation
#
##############################################################################
call_v1E911LocationLocationIDActivatePut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(locationID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/v1/e911/location/{locationID}/activate" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1E911LocationLocationIDDelete operation
#
##############################################################################
call_v1E911LocationLocationIDDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(locationID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/v1/e911/location/{locationID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1E911LocationValidatePut operation
#
##############################################################################
call_v1E911LocationValidatePut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/v1/e911/location/validate" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1E911PhoneNumberDelete operation
#
##############################################################################
call_v1E911PhoneNumberDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(phoneNumber)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/v1/e911/{phoneNumber}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1E911PhoneNumberLocationActiveGet operation
#
##############################################################################
call_v1E911PhoneNumberLocationActiveGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(phoneNumber)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/v1/e911/{phoneNumber}/location/active" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1E911PhoneNumberLocationGet operation
#
##############################################################################
call_v1E911PhoneNumberLocationGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(phoneNumber)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/v1/e911/{phoneNumber}/location" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1E911Post operation
#
##############################################################################
call_v1E911Post() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/v1/e911" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDGroupGet operation
#
##############################################################################
call_v1AccountAccountIDGroupGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(start_key page_size  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/group" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDGroupGroupIDDelete operation
#
##############################################################################
call_v1AccountAccountIDGroupGroupIDDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID groupID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/group/{groupID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDGroupGroupIDGet operation
#
##############################################################################
call_v1AccountAccountIDGroupGroupIDGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID groupID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/group/{groupID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDGroupGroupIDPut operation
#
##############################################################################
call_v1AccountAccountIDGroupGroupIDPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID groupID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/group/{groupID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDGroupPost operation
#
##############################################################################
call_v1AccountAccountIDGroupPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/group" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDMediaMediaIDFileGet operation
#
##############################################################################
call_v1AccountAccountIDMediaMediaIDFileGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID mediaID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/media/{mediaID}/file" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDMediaMediaIDFilePost operation
#
##############################################################################
call_v1AccountAccountIDMediaMediaIDFilePost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID mediaID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/media/{mediaID}/file" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    body_form_urlencoded=$(body_parameters_to_form_urlencoded)
    if [[ "$print_curl" = true ]]; then
        echo "curl ${body_form_urlencoded} ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${body_form_urlencoded} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountidMediaGet operation
#
##############################################################################
call_v1AccountAccountidMediaGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(start_key page_size  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/media" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountidMediaMediaidDelete operation
#
##############################################################################
call_v1AccountAccountidMediaMediaidDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid mediaid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/media/{mediaid}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountidMediaMediaidGet operation
#
##############################################################################
call_v1AccountAccountidMediaMediaidGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid mediaid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/media/{mediaid}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountidMediaPost operation
#
##############################################################################
call_v1AccountAccountidMediaPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/media" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDMenuGet operation
#
##############################################################################
call_v1AccountAccountIDMenuGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(start_key page_size  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/menu" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDMenuMenuIDDelete operation
#
##############################################################################
call_v1AccountAccountIDMenuMenuIDDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID menuID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/menu/{menuID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDMenuMenuIDGet operation
#
##############################################################################
call_v1AccountAccountIDMenuMenuIDGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID menuID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/menu/{menuID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDMenuMenuIDPut operation
#
##############################################################################
call_v1AccountAccountIDMenuMenuIDPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID menuID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/menu/{menuID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDMenuPost operation
#
##############################################################################
call_v1AccountAccountIDMenuPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/menu" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDDeviceDeviceIDMetaflowDelete operation
#
##############################################################################
call_v1AccountAccountIDDeviceDeviceIDMetaflowDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID deviceID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/device/{deviceID}/metaflow" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDDeviceDeviceIDMetaflowGet operation
#
##############################################################################
call_v1AccountAccountIDDeviceDeviceIDMetaflowGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID deviceID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/device/{deviceID}/metaflow" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDDeviceDeviceIDMetaflowPost operation
#
##############################################################################
call_v1AccountAccountIDDeviceDeviceIDMetaflowPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID deviceID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/device/{deviceID}/metaflow" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDMetaflowDelete operation
#
##############################################################################
call_v1AccountAccountIDMetaflowDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/metaflow" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDMetaflowGet operation
#
##############################################################################
call_v1AccountAccountIDMetaflowGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/metaflow" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDMetaflowPost operation
#
##############################################################################
call_v1AccountAccountIDMetaflowPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/metaflow" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDUserUserIDMetaflowDelete operation
#
##############################################################################
call_v1AccountAccountIDUserUserIDMetaflowDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID userID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/user/{userID}/metaflow" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDUserUserIDMetaflowGet operation
#
##############################################################################
call_v1AccountAccountIDUserUserIDMetaflowGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID userID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/user/{userID}/metaflow" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDUserUserIDMetaflowPost operation
#
##############################################################################
call_v1AccountAccountIDUserUserIDMetaflowPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID userID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/user/{userID}/metaflow" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountidPhonenumberGet operation
#
##############################################################################
call_v1AccountAccountidPhonenumberGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(start_key page_size  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/phonenumber" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountPhonenumberAssignPost operation
#
##############################################################################
call_v1AccountPhonenumberAssignPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/phonenumber/assign" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountPhonenumberDisconnectPost operation
#
##############################################################################
call_v1AccountPhonenumberDisconnectPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/phonenumber/disconnect" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountPhonenumberGet operation
#
##############################################################################
call_v1AccountPhonenumberGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(start_key page_size  )
    local path

    if ! path=$(build_request_path "/v1/account/phonenumber" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountPhonenumberPost operation
#
##############################################################################
call_v1AccountPhonenumberPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/phonenumber" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountPhonenumberUnassignPost operation
#
##############################################################################
call_v1AccountPhonenumberUnassignPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/phonenumber/unassign" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1PhonenumberSearchGet operation
#
##############################################################################
call_v1PhonenumberSearchGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(area_code quantity  )
    local path

    if ! path=$(build_request_path "/v1/phonenumber/search" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDPresenceExtensionPut operation
#
##############################################################################
call_v1AccountAccountIDPresenceExtensionPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID extension)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/presence/{extension}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDPresenceGet operation
#
##############################################################################
call_v1AccountAccountIDPresenceGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/presence" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDUserUserIDPresencePut operation
#
##############################################################################
call_v1AccountAccountIDUserUserIDPresencePut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID userID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/user/{userID}/presence" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDProvisionFilenameGet operation
#
##############################################################################
call_v1AccountAccountIDProvisionFilenameGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID filename)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/provision/{filename}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1ApBrandBrandFamilyFamilyGet operation
#
##############################################################################
call_v1ApBrandBrandFamilyFamilyGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(brand family)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/ap/brand/{brand}/family/{family}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1ApBrandBrandFamilyFamilyModelGet operation
#
##############################################################################
call_v1ApBrandBrandFamilyFamilyModelGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(brand family)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(model_name page_size start_key status  )
    local path

    if ! path=$(build_request_path "/v1/ap/brand/{brand}/family/{family}/model" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1ApBrandBrandFamilyFamilyModelModelGet operation
#
##############################################################################
call_v1ApBrandBrandFamilyFamilyModelModelGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(brand family model)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/ap/brand/{brand}/family/{family}/model/{model}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1ApBrandBrandFamilyFamilyModelModelTemplateGet operation
#
##############################################################################
call_v1ApBrandBrandFamilyFamilyModelModelTemplateGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(brand family model)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(firmware page_size start_key status template_name  )
    local path

    if ! path=$(build_request_path "/v1/ap/brand/{brand}/family/{family}/model/{model}/template" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet operation
#
##############################################################################
call_v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(brand family model template)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/ap/brand/{brand}/family/{family}/model/{model}/template/{template}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1ApBrandBrandFamilyGet operation
#
##############################################################################
call_v1ApBrandBrandFamilyGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(brand)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(family_name page_size start_key status  )
    local path

    if ! path=$(build_request_path "/v1/ap/brand/{brand}/family" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1ApBrandBrandGet operation
#
##############################################################################
call_v1ApBrandBrandGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(brand)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/ap/brand/{brand}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1ApBrandGet operation
#
##############################################################################
call_v1ApBrandGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(brand_name page_size start_key status  )
    local path

    if ! path=$(build_request_path "/v1/ap/brand" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1ApConfigfileGeneratePost operation
#
##############################################################################
call_v1ApConfigfileGeneratePost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/ap/configfile/generate" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1SmsAccountAccountIDCampaignCampaignIDImportGet operation
#
##############################################################################
call_v1SmsAccountAccountIDCampaignCampaignIDImportGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID campaignID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/sms/account/{accountID}/campaign/{campaignID}/import" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1SmsAccountAccountIDCampaignCampaignIDImportPost operation
#
##############################################################################
call_v1SmsAccountAccountIDCampaignCampaignIDImportPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID campaignID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/sms/account/{accountID}/campaign/{campaignID}/import" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet operation
#
##############################################################################
call_v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID campaignID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page_num page_size  )
    local path

    if ! path=$(build_request_path "/v1/sms/account/{accountID}/campaign/{campaignID}/phonenumber" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut operation
#
##############################################################################
call_v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID campaignID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/sms/account/{accountID}/campaign/{campaignID}/phonenumber" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1SmsAccountAccountIDCampaignImportGet operation
#
##############################################################################
call_v1SmsAccountAccountIDCampaignImportGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page_num page_size  )
    local path

    if ! path=$(build_request_path "/v1/sms/account/{accountID}/campaign/import" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDStorageDelete operation
#
##############################################################################
call_v1AccountAccountIDStorageDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/storage" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDStorageGet operation
#
##############################################################################
call_v1AccountAccountIDStorageGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/storage" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDStoragePost operation
#
##############################################################################
call_v1AccountAccountIDStoragePost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/storage" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDStoragePut operation
#
##############################################################################
call_v1AccountAccountIDStoragePut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/storage" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1ApPingGet operation
#
##############################################################################
call_v1ApPingGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/ap/ping" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1PingGet operation
#
##############################################################################
call_v1PingGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/ping" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1PingseccognitoGet operation
#
##############################################################################
call_v1PingseccognitoGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/pingseccognito" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1SystemStatusGet operation
#
##############################################################################
call_v1SystemStatusGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/system_status" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDTemporalruleGet operation
#
##############################################################################
call_v1AccountAccountIDTemporalruleGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(start_key page_size  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/temporalrule" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDTemporalrulePost operation
#
##############################################################################
call_v1AccountAccountIDTemporalrulePost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/temporalrule" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDTemporalruleTemporalRuleIDDelete operation
#
##############################################################################
call_v1AccountAccountIDTemporalruleTemporalRuleIDDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID temporalRuleID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/temporalrule/{temporalRuleID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDTemporalruleTemporalRuleIDGet operation
#
##############################################################################
call_v1AccountAccountIDTemporalruleTemporalRuleIDGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID temporalRuleID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/temporalrule/{temporalRuleID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDTemporalruleTemporalRuleIDPut operation
#
##############################################################################
call_v1AccountAccountIDTemporalruleTemporalRuleIDPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID temporalRuleID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/temporalrule/{temporalRuleID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDTemporalrulesetGet operation
#
##############################################################################
call_v1AccountAccountIDTemporalrulesetGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(start_key page_size  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/temporalruleset" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDTemporalrulesetPost operation
#
##############################################################################
call_v1AccountAccountIDTemporalrulesetPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/temporalruleset" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDTemporalrulesetTemporalRuleSetIDDelete operation
#
##############################################################################
call_v1AccountAccountIDTemporalrulesetTemporalRuleSetIDDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID temporalRuleSetID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/temporalruleset/{temporalRuleSetID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDTemporalrulesetTemporalRuleSetIDGet operation
#
##############################################################################
call_v1AccountAccountIDTemporalrulesetTemporalRuleSetIDGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID temporalRuleSetID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/temporalruleset/{temporalRuleSetID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut operation
#
##############################################################################
call_v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID temporalRuleSetID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/temporalruleset/{temporalRuleSetID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountidUserGet operation
#
##############################################################################
call_v1AccountAccountidUserGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(start_key page_size  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/user" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountidUserPost operation
#
##############################################################################
call_v1AccountAccountidUserPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/user" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountidUserUseridDelete operation
#
##############################################################################
call_v1AccountAccountidUserUseridDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid userid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/user/{userid}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountidUserUseridGet operation
#
##############################################################################
call_v1AccountAccountidUserUseridGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid userid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/user/{userid}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountidUserUseridPut operation
#
##############################################################################
call_v1AccountAccountidUserUseridPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid userid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/user/{userid}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountidUserUseridUserauthPost operation
#
##############################################################################
call_v1AccountAccountidUserUseridUserauthPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountid userid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountid}/user/{userid}/userauth" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDVoicemailGet operation
#
##############################################################################
call_v1AccountAccountIDVoicemailGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(start_key page_size  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/voicemail" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDVoicemailPost operation
#
##############################################################################
call_v1AccountAccountIDVoicemailPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/voicemail" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDVoicemailVoicemailIDDelete operation
#
##############################################################################
call_v1AccountAccountIDVoicemailVoicemailIDDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID voicemailID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/voicemail/{voicemailID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDVoicemailVoicemailIDGet operation
#
##############################################################################
call_v1AccountAccountIDVoicemailVoicemailIDGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID voicemailID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/voicemail/{voicemailID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDVoicemailVoicemailIDMessageGet operation
#
##############################################################################
call_v1AccountAccountIDVoicemailVoicemailIDMessageGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID voicemailID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(start_key page_size  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/voicemail/{voicemailID}/message" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete operation
#
##############################################################################
call_v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID voicemailID messageID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/voicemail/{voicemailID}/message/{messageID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet operation
#
##############################################################################
call_v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID voicemailID messageID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/voicemail/{voicemailID}/message/{messageID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut operation
#
##############################################################################
call_v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID voicemailID messageID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/voicemail/{voicemailID}/message/{messageID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet operation
#
##############################################################################
call_v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID voicemailID messageID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/voicemail/{voicemailID}/message/{messageID}/raw" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost operation
#
##############################################################################
call_v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID voicemailID messageID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/voicemail/{voicemailID}/message/{messageID}/raw" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    body_form_urlencoded=$(body_parameters_to_form_urlencoded)
    if [[ "$print_curl" = true ]]; then
        echo "curl ${body_form_urlencoded} ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${body_form_urlencoded} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AccountAccountIDVoicemailVoicemailIDMessagePost operation
#
##############################################################################
call_v1AccountAccountIDVoicemailVoicemailIDMessagePost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID voicemailID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/voicemail/{voicemailID}/message" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1AccountAccountIDVoicemailVoicemailIDPut operation
#
##############################################################################
call_v1AccountAccountIDVoicemailVoicemailIDPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID voicemailID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/account/{accountID}/voicemail/{voicemailID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1WebhookAccountAccountIDGet operation
#
##############################################################################
call_v1WebhookAccountAccountIDGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page_size current_page  )
    local path

    if ! path=$(build_request_path "/v1/webhook/account/{accountID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1WebhookAccountAccountIDPost operation
#
##############################################################################
call_v1WebhookAccountAccountIDPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/webhook/account/{accountID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1WebhookAccountAccountIDWebhookIDDelete operation
#
##############################################################################
call_v1WebhookAccountAccountIDWebhookIDDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID webhookID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/webhook/account/{accountID}/{webhookID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1WebhookAccountAccountIDWebhookIDGet operation
#
##############################################################################
call_v1WebhookAccountAccountIDWebhookIDGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID webhookID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/webhook/account/{accountID}/{webhookID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1WebhookAccountAccountIDWebhookIDPut operation
#
##############################################################################
call_v1WebhookAccountAccountIDWebhookIDPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(accountID webhookID)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/webhook/account/{accountID}/{webhookID}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}



##############################################################################
#
# Main
#
##############################################################################


# Check dependencies
type curl >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'cURL' installed."; exit 1; }
type sed >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'sed' installed."; exit 1; }
type column >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'bsdmainutils' installed."; exit 1; }

#
# Process command line
#
# Pass all arguments before 'operation' to cURL except the ones we override
#
take_user=false
take_host=false
take_accept_header=false
take_contenttype_header=false

for key in "$@"; do
# Take the value of -u|--user argument
if [[ "$take_user" = true ]]; then
    basic_auth_credential="$key"
    take_user=false
    continue
fi
# Take the value of --host argument
if [[ "$take_host" = true ]]; then
    host="$key"
    take_host=false
    continue
fi
# Take the value of --accept argument
if [[ "$take_accept_header" = true ]]; then
    header_accept=$(lookup_mime_type "$key")
    take_accept_header=false
    continue
fi
# Take the value of --content-type argument
if [[ "$take_contenttype_header" = true ]]; then
    header_content_type=$(lookup_mime_type "$key")
    take_contenttype_header=false
    continue
fi
case $key in
    -h|--help)
    if [[ "x$operation" == "x" ]]; then
        print_help
        exit 0
    else
        eval "print_${operation}_help"
        exit 0
    fi
    ;;
    -V|--version)
    print_version
    exit 0
    ;;
    --about)
    print_about
    exit 0
    ;;
    -u|--user)
    take_user=true
    ;;
    --host)
    take_host=true
    ;;
    --force)
    force=true
    ;;
    -ac|--accept)
    take_accept_header=true
    ;;
    -ct|--content-type)
    take_contenttype_header=true
    ;;
    --dry-run)
    print_curl=true
    ;;
    -nc|--no-colors)
        RED=""
        GREEN=""
        YELLOW=""
        BLUE=""
        MAGENTA=""
        CYAN=""
        WHITE=""
        BOLD=""
        OFF=""
        result_color_table=( "" "" "" "" "" "" "" )
    ;;
    v1AccountAccountidChildrenGet)
    operation="v1AccountAccountidChildrenGet"
    ;;
    v1AccountAccountidDelete)
    operation="v1AccountAccountidDelete"
    ;;
    v1AccountAccountidDnsrecordGet)
    operation="v1AccountAccountidDnsrecordGet"
    ;;
    v1AccountAccountidDnsrecordPost)
    operation="v1AccountAccountidDnsrecordPost"
    ;;
    v1AccountAccountidDnsrecordPut)
    operation="v1AccountAccountidDnsrecordPut"
    ;;
    v1AccountAccountidGet)
    operation="v1AccountAccountidGet"
    ;;
    v1AccountAccountidLimitGet)
    operation="v1AccountAccountidLimitGet"
    ;;
    v1AccountAccountidLimitPut)
    operation="v1AccountAccountidLimitPut"
    ;;
    v1AccountAccountidPost)
    operation="v1AccountAccountidPost"
    ;;
    v1AccountAccountidProvisioningdetailsGet)
    operation="v1AccountAccountidProvisioningdetailsGet"
    ;;
    v1AccountAccountidProvisioningdetailsResetpwPut)
    operation="v1AccountAccountidProvisioningdetailsResetpwPut"
    ;;
    v1AccountAccountidPut)
    operation="v1AccountAccountidPut"
    ;;
    v1AccountApikeyGet)
    operation="v1AccountApikeyGet"
    ;;
    v1AccountGet)
    operation="v1AccountGet"
    ;;
    v1AccountPost)
    operation="v1AccountPost"
    ;;
    v1MgmtUserGet)
    operation="v1MgmtUserGet"
    ;;
    v1MgmtUserPost)
    operation="v1MgmtUserPost"
    ;;
    v1MgmtUserUserIDDelete)
    operation="v1MgmtUserUserIDDelete"
    ;;
    v1MgmtUserUserIDGet)
    operation="v1MgmtUserUserIDGet"
    ;;
    v1MgmtUserUserIDPut)
    operation="v1MgmtUserUserIDPut"
    ;;
    v1AccountAccountIDParkedcallGet)
    operation="v1AccountAccountIDParkedcallGet"
    ;;
    v1AccountAccountIDCallqueueGet)
    operation="v1AccountAccountIDCallqueueGet"
    ;;
    v1AccountAccountIDCallqueuePost)
    operation="v1AccountAccountIDCallqueuePost"
    ;;
    v1AccountAccountIDCallqueueQueueIDDelete)
    operation="v1AccountAccountIDCallqueueQueueIDDelete"
    ;;
    v1AccountAccountIDCallqueueQueueIDGet)
    operation="v1AccountAccountIDCallqueueQueueIDGet"
    ;;
    v1AccountAccountIDCallqueueQueueIDPut)
    operation="v1AccountAccountIDCallqueueQueueIDPut"
    ;;
    v1AccountAccountIDCallqueueQueueIDStatusGet)
    operation="v1AccountAccountIDCallqueueQueueIDStatusGet"
    ;;
    v1AccountAccountIDQueuerolesGet)
    operation="v1AccountAccountIDQueuerolesGet"
    ;;
    v1AccountAccountIDQueuerolesQueueIDPost)
    operation="v1AccountAccountIDQueuerolesQueueIDPost"
    ;;
    v1AccountAccountIDQueuemembershipPost)
    operation="v1AccountAccountIDQueuemembershipPost"
    ;;
    v1AccountAccountIDQueuemembershipRecipientIDDisablePost)
    operation="v1AccountAccountIDQueuemembershipRecipientIDDisablePost"
    ;;
    v1AccountAccountIDQueuemembershipRecipientIDEnablePost)
    operation="v1AccountAccountIDQueuemembershipRecipientIDEnablePost"
    ;;
    v1AccountAccountIDLoginrecipientRecipientIDPost)
    operation="v1AccountAccountIDLoginrecipientRecipientIDPost"
    ;;
    v1AccountAccountIDQueuerecipientGet)
    operation="v1AccountAccountIDQueuerecipientGet"
    ;;
    v1AccountAccountIDRecipientRecipientIDStatusPost)
    operation="v1AccountAccountIDRecipientRecipientIDStatusPost"
    ;;
    v1AccountAccountIDRecordingGet)
    operation="v1AccountAccountIDRecordingGet"
    ;;
    v1AccountAccountIDRecordingRecordingIDDelete)
    operation="v1AccountAccountIDRecordingRecordingIDDelete"
    ;;
    v1AccountAccountIDRecordingRecordingIDGet)
    operation="v1AccountAccountIDRecordingRecordingIDGet"
    ;;
    v1AccountAccountIDUserUserIDRecordingGet)
    operation="v1AccountAccountIDUserUserIDRecordingGet"
    ;;
    v1AccountAccountIDCallflowCallflowIDDelete)
    operation="v1AccountAccountIDCallflowCallflowIDDelete"
    ;;
    v1AccountAccountIDCallflowCallflowIDGet)
    operation="v1AccountAccountIDCallflowCallflowIDGet"
    ;;
    v1AccountAccountIDCallflowCallflowIDPut)
    operation="v1AccountAccountIDCallflowCallflowIDPut"
    ;;
    v1AccountAccountIDCallflowGet)
    operation="v1AccountAccountIDCallflowGet"
    ;;
    v1AccountAccountIDCallflowPost)
    operation="v1AccountAccountIDCallflowPost"
    ;;
    v1AccountAccountIDChannelChannelIDGet)
    operation="v1AccountAccountIDChannelChannelIDGet"
    ;;
    v1AccountAccountIDChannelChannelIDPost)
    operation="v1AccountAccountIDChannelChannelIDPost"
    ;;
    v1AccountAccountIDChannelChannelIDPut)
    operation="v1AccountAccountIDChannelChannelIDPut"
    ;;
    v1AccountAccountIDChannelGet)
    operation="v1AccountAccountIDChannelGet"
    ;;
    v1AccountAccountIDDeviceDeviceIDChannelGet)
    operation="v1AccountAccountIDDeviceDeviceIDChannelGet"
    ;;
    v1AccountAccountIDUserUserIDChannelGet)
    operation="v1AccountAccountIDUserUserIDChannelGet"
    ;;
    v1AccountAccountIDCdrCdrIDGet)
    operation="v1AccountAccountIDCdrCdrIDGet"
    ;;
    v1AccountAccountIDCdrGet)
    operation="v1AccountAccountIDCdrGet"
    ;;
    v1DataCallDailySummaryGet)
    operation="v1DataCallDailySummaryGet"
    ;;
    v1DataCallDetailGet)
    operation="v1DataCallDetailGet"
    ;;
    v1DataCallMonthlySummaryGet)
    operation="v1DataCallMonthlySummaryGet"
    ;;
    v1DataEndpointListGet)
    operation="v1DataEndpointListGet"
    ;;
    v1DataEventDailySummaryGet)
    operation="v1DataEventDailySummaryGet"
    ;;
    v1DataEventDetailGet)
    operation="v1DataEventDetailGet"
    ;;
    v1DataEventMonthlySummaryGet)
    operation="v1DataEventMonthlySummaryGet"
    ;;
    v1DataFeatureDailySummaryGet)
    operation="v1DataFeatureDailySummaryGet"
    ;;
    v1DataFeatureMonthlySummaryGet)
    operation="v1DataFeatureMonthlySummaryGet"
    ;;
    v1AccountAccountidDeviceDeviceidDelete)
    operation="v1AccountAccountidDeviceDeviceidDelete"
    ;;
    v1AccountAccountidDeviceDeviceidGet)
    operation="v1AccountAccountidDeviceDeviceidGet"
    ;;
    v1AccountAccountidDeviceDeviceidPut)
    operation="v1AccountAccountidDeviceDeviceidPut"
    ;;
    v1AccountAccountidDeviceDeviceidRebootPost)
    operation="v1AccountAccountidDeviceDeviceidRebootPost"
    ;;
    v1AccountAccountidDeviceGet)
    operation="v1AccountAccountidDeviceGet"
    ;;
    v1AccountAccountidDevicePost)
    operation="v1AccountAccountidDevicePost"
    ;;
    v1AccountAccountidDeviceStatusGet)
    operation="v1AccountAccountidDeviceStatusGet"
    ;;
    v1E911Get)
    operation="v1E911Get"
    ;;
    v1E911LocationLocationIDActivatePut)
    operation="v1E911LocationLocationIDActivatePut"
    ;;
    v1E911LocationLocationIDDelete)
    operation="v1E911LocationLocationIDDelete"
    ;;
    v1E911LocationValidatePut)
    operation="v1E911LocationValidatePut"
    ;;
    v1E911PhoneNumberDelete)
    operation="v1E911PhoneNumberDelete"
    ;;
    v1E911PhoneNumberLocationActiveGet)
    operation="v1E911PhoneNumberLocationActiveGet"
    ;;
    v1E911PhoneNumberLocationGet)
    operation="v1E911PhoneNumberLocationGet"
    ;;
    v1E911Post)
    operation="v1E911Post"
    ;;
    v1AccountAccountIDGroupGet)
    operation="v1AccountAccountIDGroupGet"
    ;;
    v1AccountAccountIDGroupGroupIDDelete)
    operation="v1AccountAccountIDGroupGroupIDDelete"
    ;;
    v1AccountAccountIDGroupGroupIDGet)
    operation="v1AccountAccountIDGroupGroupIDGet"
    ;;
    v1AccountAccountIDGroupGroupIDPut)
    operation="v1AccountAccountIDGroupGroupIDPut"
    ;;
    v1AccountAccountIDGroupPost)
    operation="v1AccountAccountIDGroupPost"
    ;;
    v1AccountAccountIDMediaMediaIDFileGet)
    operation="v1AccountAccountIDMediaMediaIDFileGet"
    ;;
    v1AccountAccountIDMediaMediaIDFilePost)
    operation="v1AccountAccountIDMediaMediaIDFilePost"
    ;;
    v1AccountAccountidMediaGet)
    operation="v1AccountAccountidMediaGet"
    ;;
    v1AccountAccountidMediaMediaidDelete)
    operation="v1AccountAccountidMediaMediaidDelete"
    ;;
    v1AccountAccountidMediaMediaidGet)
    operation="v1AccountAccountidMediaMediaidGet"
    ;;
    v1AccountAccountidMediaPost)
    operation="v1AccountAccountidMediaPost"
    ;;
    v1AccountAccountIDMenuGet)
    operation="v1AccountAccountIDMenuGet"
    ;;
    v1AccountAccountIDMenuMenuIDDelete)
    operation="v1AccountAccountIDMenuMenuIDDelete"
    ;;
    v1AccountAccountIDMenuMenuIDGet)
    operation="v1AccountAccountIDMenuMenuIDGet"
    ;;
    v1AccountAccountIDMenuMenuIDPut)
    operation="v1AccountAccountIDMenuMenuIDPut"
    ;;
    v1AccountAccountIDMenuPost)
    operation="v1AccountAccountIDMenuPost"
    ;;
    v1AccountAccountIDDeviceDeviceIDMetaflowDelete)
    operation="v1AccountAccountIDDeviceDeviceIDMetaflowDelete"
    ;;
    v1AccountAccountIDDeviceDeviceIDMetaflowGet)
    operation="v1AccountAccountIDDeviceDeviceIDMetaflowGet"
    ;;
    v1AccountAccountIDDeviceDeviceIDMetaflowPost)
    operation="v1AccountAccountIDDeviceDeviceIDMetaflowPost"
    ;;
    v1AccountAccountIDMetaflowDelete)
    operation="v1AccountAccountIDMetaflowDelete"
    ;;
    v1AccountAccountIDMetaflowGet)
    operation="v1AccountAccountIDMetaflowGet"
    ;;
    v1AccountAccountIDMetaflowPost)
    operation="v1AccountAccountIDMetaflowPost"
    ;;
    v1AccountAccountIDUserUserIDMetaflowDelete)
    operation="v1AccountAccountIDUserUserIDMetaflowDelete"
    ;;
    v1AccountAccountIDUserUserIDMetaflowGet)
    operation="v1AccountAccountIDUserUserIDMetaflowGet"
    ;;
    v1AccountAccountIDUserUserIDMetaflowPost)
    operation="v1AccountAccountIDUserUserIDMetaflowPost"
    ;;
    v1AccountAccountidPhonenumberGet)
    operation="v1AccountAccountidPhonenumberGet"
    ;;
    v1AccountPhonenumberAssignPost)
    operation="v1AccountPhonenumberAssignPost"
    ;;
    v1AccountPhonenumberDisconnectPost)
    operation="v1AccountPhonenumberDisconnectPost"
    ;;
    v1AccountPhonenumberGet)
    operation="v1AccountPhonenumberGet"
    ;;
    v1AccountPhonenumberPost)
    operation="v1AccountPhonenumberPost"
    ;;
    v1AccountPhonenumberUnassignPost)
    operation="v1AccountPhonenumberUnassignPost"
    ;;
    v1PhonenumberSearchGet)
    operation="v1PhonenumberSearchGet"
    ;;
    v1AccountAccountIDPresenceExtensionPut)
    operation="v1AccountAccountIDPresenceExtensionPut"
    ;;
    v1AccountAccountIDPresenceGet)
    operation="v1AccountAccountIDPresenceGet"
    ;;
    v1AccountAccountIDUserUserIDPresencePut)
    operation="v1AccountAccountIDUserUserIDPresencePut"
    ;;
    v1AccountAccountIDProvisionFilenameGet)
    operation="v1AccountAccountIDProvisionFilenameGet"
    ;;
    v1ApBrandBrandFamilyFamilyGet)
    operation="v1ApBrandBrandFamilyFamilyGet"
    ;;
    v1ApBrandBrandFamilyFamilyModelGet)
    operation="v1ApBrandBrandFamilyFamilyModelGet"
    ;;
    v1ApBrandBrandFamilyFamilyModelModelGet)
    operation="v1ApBrandBrandFamilyFamilyModelModelGet"
    ;;
    v1ApBrandBrandFamilyFamilyModelModelTemplateGet)
    operation="v1ApBrandBrandFamilyFamilyModelModelTemplateGet"
    ;;
    v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet)
    operation="v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet"
    ;;
    v1ApBrandBrandFamilyGet)
    operation="v1ApBrandBrandFamilyGet"
    ;;
    v1ApBrandBrandGet)
    operation="v1ApBrandBrandGet"
    ;;
    v1ApBrandGet)
    operation="v1ApBrandGet"
    ;;
    v1ApConfigfileGeneratePost)
    operation="v1ApConfigfileGeneratePost"
    ;;
    v1SmsAccountAccountIDCampaignCampaignIDImportGet)
    operation="v1SmsAccountAccountIDCampaignCampaignIDImportGet"
    ;;
    v1SmsAccountAccountIDCampaignCampaignIDImportPost)
    operation="v1SmsAccountAccountIDCampaignCampaignIDImportPost"
    ;;
    v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet)
    operation="v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet"
    ;;
    v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut)
    operation="v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut"
    ;;
    v1SmsAccountAccountIDCampaignImportGet)
    operation="v1SmsAccountAccountIDCampaignImportGet"
    ;;
    v1AccountAccountIDStorageDelete)
    operation="v1AccountAccountIDStorageDelete"
    ;;
    v1AccountAccountIDStorageGet)
    operation="v1AccountAccountIDStorageGet"
    ;;
    v1AccountAccountIDStoragePost)
    operation="v1AccountAccountIDStoragePost"
    ;;
    v1AccountAccountIDStoragePut)
    operation="v1AccountAccountIDStoragePut"
    ;;
    v1ApPingGet)
    operation="v1ApPingGet"
    ;;
    v1PingGet)
    operation="v1PingGet"
    ;;
    v1PingseccognitoGet)
    operation="v1PingseccognitoGet"
    ;;
    v1SystemStatusGet)
    operation="v1SystemStatusGet"
    ;;
    v1AccountAccountIDTemporalruleGet)
    operation="v1AccountAccountIDTemporalruleGet"
    ;;
    v1AccountAccountIDTemporalrulePost)
    operation="v1AccountAccountIDTemporalrulePost"
    ;;
    v1AccountAccountIDTemporalruleTemporalRuleIDDelete)
    operation="v1AccountAccountIDTemporalruleTemporalRuleIDDelete"
    ;;
    v1AccountAccountIDTemporalruleTemporalRuleIDGet)
    operation="v1AccountAccountIDTemporalruleTemporalRuleIDGet"
    ;;
    v1AccountAccountIDTemporalruleTemporalRuleIDPut)
    operation="v1AccountAccountIDTemporalruleTemporalRuleIDPut"
    ;;
    v1AccountAccountIDTemporalrulesetGet)
    operation="v1AccountAccountIDTemporalrulesetGet"
    ;;
    v1AccountAccountIDTemporalrulesetPost)
    operation="v1AccountAccountIDTemporalrulesetPost"
    ;;
    v1AccountAccountIDTemporalrulesetTemporalRuleSetIDDelete)
    operation="v1AccountAccountIDTemporalrulesetTemporalRuleSetIDDelete"
    ;;
    v1AccountAccountIDTemporalrulesetTemporalRuleSetIDGet)
    operation="v1AccountAccountIDTemporalrulesetTemporalRuleSetIDGet"
    ;;
    v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut)
    operation="v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut"
    ;;
    v1AccountAccountidUserGet)
    operation="v1AccountAccountidUserGet"
    ;;
    v1AccountAccountidUserPost)
    operation="v1AccountAccountidUserPost"
    ;;
    v1AccountAccountidUserUseridDelete)
    operation="v1AccountAccountidUserUseridDelete"
    ;;
    v1AccountAccountidUserUseridGet)
    operation="v1AccountAccountidUserUseridGet"
    ;;
    v1AccountAccountidUserUseridPut)
    operation="v1AccountAccountidUserUseridPut"
    ;;
    v1AccountAccountidUserUseridUserauthPost)
    operation="v1AccountAccountidUserUseridUserauthPost"
    ;;
    v1AccountAccountIDVoicemailGet)
    operation="v1AccountAccountIDVoicemailGet"
    ;;
    v1AccountAccountIDVoicemailPost)
    operation="v1AccountAccountIDVoicemailPost"
    ;;
    v1AccountAccountIDVoicemailVoicemailIDDelete)
    operation="v1AccountAccountIDVoicemailVoicemailIDDelete"
    ;;
    v1AccountAccountIDVoicemailVoicemailIDGet)
    operation="v1AccountAccountIDVoicemailVoicemailIDGet"
    ;;
    v1AccountAccountIDVoicemailVoicemailIDMessageGet)
    operation="v1AccountAccountIDVoicemailVoicemailIDMessageGet"
    ;;
    v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete)
    operation="v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete"
    ;;
    v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet)
    operation="v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet"
    ;;
    v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut)
    operation="v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut"
    ;;
    v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet)
    operation="v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet"
    ;;
    v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost)
    operation="v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost"
    ;;
    v1AccountAccountIDVoicemailVoicemailIDMessagePost)
    operation="v1AccountAccountIDVoicemailVoicemailIDMessagePost"
    ;;
    v1AccountAccountIDVoicemailVoicemailIDPut)
    operation="v1AccountAccountIDVoicemailVoicemailIDPut"
    ;;
    v1WebhookAccountAccountIDGet)
    operation="v1WebhookAccountAccountIDGet"
    ;;
    v1WebhookAccountAccountIDPost)
    operation="v1WebhookAccountAccountIDPost"
    ;;
    v1WebhookAccountAccountIDWebhookIDDelete)
    operation="v1WebhookAccountAccountIDWebhookIDDelete"
    ;;
    v1WebhookAccountAccountIDWebhookIDGet)
    operation="v1WebhookAccountAccountIDWebhookIDGet"
    ;;
    v1WebhookAccountAccountIDWebhookIDPut)
    operation="v1WebhookAccountAccountIDWebhookIDPut"
    ;;
    *==*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content as strings
    if [[ "$operation" ]]; then
        IFS='==' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]="\"${body_value}\""
    fi
    ;;
    --body=*)
    # Parse value of body as argument and convert it into only
    # the raw body content
    if [[ "$operation" ]]; then
        IFS='--body=' read -r body_value <<< "$key"
        body_value=${body_value##--body=}
        body_parameters["RAW_BODY"]="${body_value}"
        RAW_BODY=1
    fi
    ;;
    *:=*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content without quotes
    if [[ "$operation" ]]; then
        # ignore error about 'sep' being unused
        # shellcheck disable=SC2034
        IFS=':=' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]=${body_value}
    fi
    ;;
    +([^=]):*)
    # Parse header arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS=':' read -r header_name header_value <<< "$key"
        #
        # If the header key is the same as the api_key expected by API in the
        # header, override the ${apikey_auth_credential} variable
        #
        if [[ $header_name == "Authorization" ]]; then
            apikey_auth_credential=$header_value
        fi
        header_arguments[$header_name]=$header_value
    else
        curl_arguments+=" $key"
    fi
    ;;
    -)
    body_content_temp_file=$(mktemp)
    cat - > "$body_content_temp_file"
    ;;
    *=*)
    # Parse operation arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS='=' read -r parameter_name parameter_value <<< "$key"
        if [[ -z "${operation_parameters[$parameter_name]+foo}" ]]; then
            operation_parameters[$parameter_name]=$(url_escape "${parameter_value}")
        else
            operation_parameters[$parameter_name]+=":::"$(url_escape "${parameter_value}")
        fi
    else
        curl_arguments+=" $key"
    fi
    ;;
    *)
    # If we are before the operation, treat the arguments as cURL arguments
    if [[ "x$operation" == "x" ]]; then
        # Maintain quotes around cURL arguments if necessary
        space_regexp="[[:space:]]"
        if [[ $key =~ $space_regexp ]]; then
            curl_arguments+=" \"$key\""
        else
            curl_arguments+=" $key"
        fi
    fi
    ;;
esac
done


# Check if user provided host name
if [[ -z "$host" ]]; then
    ERROR_MSG="ERROR: No hostname provided!!! You have to  provide on command line option '--host ...'"
    exit 1
fi

# Check if user specified operation ID
if [[ -z "$operation" ]]; then
    ERROR_MSG="ERROR: No operation specified!!!"
    exit 1
fi


# Run cURL command based on the operation ID
case $operation in
    v1AccountAccountidChildrenGet)
    call_v1AccountAccountidChildrenGet
    ;;
    v1AccountAccountidDelete)
    call_v1AccountAccountidDelete
    ;;
    v1AccountAccountidDnsrecordGet)
    call_v1AccountAccountidDnsrecordGet
    ;;
    v1AccountAccountidDnsrecordPost)
    call_v1AccountAccountidDnsrecordPost
    ;;
    v1AccountAccountidDnsrecordPut)
    call_v1AccountAccountidDnsrecordPut
    ;;
    v1AccountAccountidGet)
    call_v1AccountAccountidGet
    ;;
    v1AccountAccountidLimitGet)
    call_v1AccountAccountidLimitGet
    ;;
    v1AccountAccountidLimitPut)
    call_v1AccountAccountidLimitPut
    ;;
    v1AccountAccountidPost)
    call_v1AccountAccountidPost
    ;;
    v1AccountAccountidProvisioningdetailsGet)
    call_v1AccountAccountidProvisioningdetailsGet
    ;;
    v1AccountAccountidProvisioningdetailsResetpwPut)
    call_v1AccountAccountidProvisioningdetailsResetpwPut
    ;;
    v1AccountAccountidPut)
    call_v1AccountAccountidPut
    ;;
    v1AccountApikeyGet)
    call_v1AccountApikeyGet
    ;;
    v1AccountGet)
    call_v1AccountGet
    ;;
    v1AccountPost)
    call_v1AccountPost
    ;;
    v1MgmtUserGet)
    call_v1MgmtUserGet
    ;;
    v1MgmtUserPost)
    call_v1MgmtUserPost
    ;;
    v1MgmtUserUserIDDelete)
    call_v1MgmtUserUserIDDelete
    ;;
    v1MgmtUserUserIDGet)
    call_v1MgmtUserUserIDGet
    ;;
    v1MgmtUserUserIDPut)
    call_v1MgmtUserUserIDPut
    ;;
    v1AccountAccountIDParkedcallGet)
    call_v1AccountAccountIDParkedcallGet
    ;;
    v1AccountAccountIDCallqueueGet)
    call_v1AccountAccountIDCallqueueGet
    ;;
    v1AccountAccountIDCallqueuePost)
    call_v1AccountAccountIDCallqueuePost
    ;;
    v1AccountAccountIDCallqueueQueueIDDelete)
    call_v1AccountAccountIDCallqueueQueueIDDelete
    ;;
    v1AccountAccountIDCallqueueQueueIDGet)
    call_v1AccountAccountIDCallqueueQueueIDGet
    ;;
    v1AccountAccountIDCallqueueQueueIDPut)
    call_v1AccountAccountIDCallqueueQueueIDPut
    ;;
    v1AccountAccountIDCallqueueQueueIDStatusGet)
    call_v1AccountAccountIDCallqueueQueueIDStatusGet
    ;;
    v1AccountAccountIDQueuerolesGet)
    call_v1AccountAccountIDQueuerolesGet
    ;;
    v1AccountAccountIDQueuerolesQueueIDPost)
    call_v1AccountAccountIDQueuerolesQueueIDPost
    ;;
    v1AccountAccountIDQueuemembershipPost)
    call_v1AccountAccountIDQueuemembershipPost
    ;;
    v1AccountAccountIDQueuemembershipRecipientIDDisablePost)
    call_v1AccountAccountIDQueuemembershipRecipientIDDisablePost
    ;;
    v1AccountAccountIDQueuemembershipRecipientIDEnablePost)
    call_v1AccountAccountIDQueuemembershipRecipientIDEnablePost
    ;;
    v1AccountAccountIDLoginrecipientRecipientIDPost)
    call_v1AccountAccountIDLoginrecipientRecipientIDPost
    ;;
    v1AccountAccountIDQueuerecipientGet)
    call_v1AccountAccountIDQueuerecipientGet
    ;;
    v1AccountAccountIDRecipientRecipientIDStatusPost)
    call_v1AccountAccountIDRecipientRecipientIDStatusPost
    ;;
    v1AccountAccountIDRecordingGet)
    call_v1AccountAccountIDRecordingGet
    ;;
    v1AccountAccountIDRecordingRecordingIDDelete)
    call_v1AccountAccountIDRecordingRecordingIDDelete
    ;;
    v1AccountAccountIDRecordingRecordingIDGet)
    call_v1AccountAccountIDRecordingRecordingIDGet
    ;;
    v1AccountAccountIDUserUserIDRecordingGet)
    call_v1AccountAccountIDUserUserIDRecordingGet
    ;;
    v1AccountAccountIDCallflowCallflowIDDelete)
    call_v1AccountAccountIDCallflowCallflowIDDelete
    ;;
    v1AccountAccountIDCallflowCallflowIDGet)
    call_v1AccountAccountIDCallflowCallflowIDGet
    ;;
    v1AccountAccountIDCallflowCallflowIDPut)
    call_v1AccountAccountIDCallflowCallflowIDPut
    ;;
    v1AccountAccountIDCallflowGet)
    call_v1AccountAccountIDCallflowGet
    ;;
    v1AccountAccountIDCallflowPost)
    call_v1AccountAccountIDCallflowPost
    ;;
    v1AccountAccountIDChannelChannelIDGet)
    call_v1AccountAccountIDChannelChannelIDGet
    ;;
    v1AccountAccountIDChannelChannelIDPost)
    call_v1AccountAccountIDChannelChannelIDPost
    ;;
    v1AccountAccountIDChannelChannelIDPut)
    call_v1AccountAccountIDChannelChannelIDPut
    ;;
    v1AccountAccountIDChannelGet)
    call_v1AccountAccountIDChannelGet
    ;;
    v1AccountAccountIDDeviceDeviceIDChannelGet)
    call_v1AccountAccountIDDeviceDeviceIDChannelGet
    ;;
    v1AccountAccountIDUserUserIDChannelGet)
    call_v1AccountAccountIDUserUserIDChannelGet
    ;;
    v1AccountAccountIDCdrCdrIDGet)
    call_v1AccountAccountIDCdrCdrIDGet
    ;;
    v1AccountAccountIDCdrGet)
    call_v1AccountAccountIDCdrGet
    ;;
    v1DataCallDailySummaryGet)
    call_v1DataCallDailySummaryGet
    ;;
    v1DataCallDetailGet)
    call_v1DataCallDetailGet
    ;;
    v1DataCallMonthlySummaryGet)
    call_v1DataCallMonthlySummaryGet
    ;;
    v1DataEndpointListGet)
    call_v1DataEndpointListGet
    ;;
    v1DataEventDailySummaryGet)
    call_v1DataEventDailySummaryGet
    ;;
    v1DataEventDetailGet)
    call_v1DataEventDetailGet
    ;;
    v1DataEventMonthlySummaryGet)
    call_v1DataEventMonthlySummaryGet
    ;;
    v1DataFeatureDailySummaryGet)
    call_v1DataFeatureDailySummaryGet
    ;;
    v1DataFeatureMonthlySummaryGet)
    call_v1DataFeatureMonthlySummaryGet
    ;;
    v1AccountAccountidDeviceDeviceidDelete)
    call_v1AccountAccountidDeviceDeviceidDelete
    ;;
    v1AccountAccountidDeviceDeviceidGet)
    call_v1AccountAccountidDeviceDeviceidGet
    ;;
    v1AccountAccountidDeviceDeviceidPut)
    call_v1AccountAccountidDeviceDeviceidPut
    ;;
    v1AccountAccountidDeviceDeviceidRebootPost)
    call_v1AccountAccountidDeviceDeviceidRebootPost
    ;;
    v1AccountAccountidDeviceGet)
    call_v1AccountAccountidDeviceGet
    ;;
    v1AccountAccountidDevicePost)
    call_v1AccountAccountidDevicePost
    ;;
    v1AccountAccountidDeviceStatusGet)
    call_v1AccountAccountidDeviceStatusGet
    ;;
    v1E911Get)
    call_v1E911Get
    ;;
    v1E911LocationLocationIDActivatePut)
    call_v1E911LocationLocationIDActivatePut
    ;;
    v1E911LocationLocationIDDelete)
    call_v1E911LocationLocationIDDelete
    ;;
    v1E911LocationValidatePut)
    call_v1E911LocationValidatePut
    ;;
    v1E911PhoneNumberDelete)
    call_v1E911PhoneNumberDelete
    ;;
    v1E911PhoneNumberLocationActiveGet)
    call_v1E911PhoneNumberLocationActiveGet
    ;;
    v1E911PhoneNumberLocationGet)
    call_v1E911PhoneNumberLocationGet
    ;;
    v1E911Post)
    call_v1E911Post
    ;;
    v1AccountAccountIDGroupGet)
    call_v1AccountAccountIDGroupGet
    ;;
    v1AccountAccountIDGroupGroupIDDelete)
    call_v1AccountAccountIDGroupGroupIDDelete
    ;;
    v1AccountAccountIDGroupGroupIDGet)
    call_v1AccountAccountIDGroupGroupIDGet
    ;;
    v1AccountAccountIDGroupGroupIDPut)
    call_v1AccountAccountIDGroupGroupIDPut
    ;;
    v1AccountAccountIDGroupPost)
    call_v1AccountAccountIDGroupPost
    ;;
    v1AccountAccountIDMediaMediaIDFileGet)
    call_v1AccountAccountIDMediaMediaIDFileGet
    ;;
    v1AccountAccountIDMediaMediaIDFilePost)
    call_v1AccountAccountIDMediaMediaIDFilePost
    ;;
    v1AccountAccountidMediaGet)
    call_v1AccountAccountidMediaGet
    ;;
    v1AccountAccountidMediaMediaidDelete)
    call_v1AccountAccountidMediaMediaidDelete
    ;;
    v1AccountAccountidMediaMediaidGet)
    call_v1AccountAccountidMediaMediaidGet
    ;;
    v1AccountAccountidMediaPost)
    call_v1AccountAccountidMediaPost
    ;;
    v1AccountAccountIDMenuGet)
    call_v1AccountAccountIDMenuGet
    ;;
    v1AccountAccountIDMenuMenuIDDelete)
    call_v1AccountAccountIDMenuMenuIDDelete
    ;;
    v1AccountAccountIDMenuMenuIDGet)
    call_v1AccountAccountIDMenuMenuIDGet
    ;;
    v1AccountAccountIDMenuMenuIDPut)
    call_v1AccountAccountIDMenuMenuIDPut
    ;;
    v1AccountAccountIDMenuPost)
    call_v1AccountAccountIDMenuPost
    ;;
    v1AccountAccountIDDeviceDeviceIDMetaflowDelete)
    call_v1AccountAccountIDDeviceDeviceIDMetaflowDelete
    ;;
    v1AccountAccountIDDeviceDeviceIDMetaflowGet)
    call_v1AccountAccountIDDeviceDeviceIDMetaflowGet
    ;;
    v1AccountAccountIDDeviceDeviceIDMetaflowPost)
    call_v1AccountAccountIDDeviceDeviceIDMetaflowPost
    ;;
    v1AccountAccountIDMetaflowDelete)
    call_v1AccountAccountIDMetaflowDelete
    ;;
    v1AccountAccountIDMetaflowGet)
    call_v1AccountAccountIDMetaflowGet
    ;;
    v1AccountAccountIDMetaflowPost)
    call_v1AccountAccountIDMetaflowPost
    ;;
    v1AccountAccountIDUserUserIDMetaflowDelete)
    call_v1AccountAccountIDUserUserIDMetaflowDelete
    ;;
    v1AccountAccountIDUserUserIDMetaflowGet)
    call_v1AccountAccountIDUserUserIDMetaflowGet
    ;;
    v1AccountAccountIDUserUserIDMetaflowPost)
    call_v1AccountAccountIDUserUserIDMetaflowPost
    ;;
    v1AccountAccountidPhonenumberGet)
    call_v1AccountAccountidPhonenumberGet
    ;;
    v1AccountPhonenumberAssignPost)
    call_v1AccountPhonenumberAssignPost
    ;;
    v1AccountPhonenumberDisconnectPost)
    call_v1AccountPhonenumberDisconnectPost
    ;;
    v1AccountPhonenumberGet)
    call_v1AccountPhonenumberGet
    ;;
    v1AccountPhonenumberPost)
    call_v1AccountPhonenumberPost
    ;;
    v1AccountPhonenumberUnassignPost)
    call_v1AccountPhonenumberUnassignPost
    ;;
    v1PhonenumberSearchGet)
    call_v1PhonenumberSearchGet
    ;;
    v1AccountAccountIDPresenceExtensionPut)
    call_v1AccountAccountIDPresenceExtensionPut
    ;;
    v1AccountAccountIDPresenceGet)
    call_v1AccountAccountIDPresenceGet
    ;;
    v1AccountAccountIDUserUserIDPresencePut)
    call_v1AccountAccountIDUserUserIDPresencePut
    ;;
    v1AccountAccountIDProvisionFilenameGet)
    call_v1AccountAccountIDProvisionFilenameGet
    ;;
    v1ApBrandBrandFamilyFamilyGet)
    call_v1ApBrandBrandFamilyFamilyGet
    ;;
    v1ApBrandBrandFamilyFamilyModelGet)
    call_v1ApBrandBrandFamilyFamilyModelGet
    ;;
    v1ApBrandBrandFamilyFamilyModelModelGet)
    call_v1ApBrandBrandFamilyFamilyModelModelGet
    ;;
    v1ApBrandBrandFamilyFamilyModelModelTemplateGet)
    call_v1ApBrandBrandFamilyFamilyModelModelTemplateGet
    ;;
    v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet)
    call_v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet
    ;;
    v1ApBrandBrandFamilyGet)
    call_v1ApBrandBrandFamilyGet
    ;;
    v1ApBrandBrandGet)
    call_v1ApBrandBrandGet
    ;;
    v1ApBrandGet)
    call_v1ApBrandGet
    ;;
    v1ApConfigfileGeneratePost)
    call_v1ApConfigfileGeneratePost
    ;;
    v1SmsAccountAccountIDCampaignCampaignIDImportGet)
    call_v1SmsAccountAccountIDCampaignCampaignIDImportGet
    ;;
    v1SmsAccountAccountIDCampaignCampaignIDImportPost)
    call_v1SmsAccountAccountIDCampaignCampaignIDImportPost
    ;;
    v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet)
    call_v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet
    ;;
    v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut)
    call_v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut
    ;;
    v1SmsAccountAccountIDCampaignImportGet)
    call_v1SmsAccountAccountIDCampaignImportGet
    ;;
    v1AccountAccountIDStorageDelete)
    call_v1AccountAccountIDStorageDelete
    ;;
    v1AccountAccountIDStorageGet)
    call_v1AccountAccountIDStorageGet
    ;;
    v1AccountAccountIDStoragePost)
    call_v1AccountAccountIDStoragePost
    ;;
    v1AccountAccountIDStoragePut)
    call_v1AccountAccountIDStoragePut
    ;;
    v1ApPingGet)
    call_v1ApPingGet
    ;;
    v1PingGet)
    call_v1PingGet
    ;;
    v1PingseccognitoGet)
    call_v1PingseccognitoGet
    ;;
    v1SystemStatusGet)
    call_v1SystemStatusGet
    ;;
    v1AccountAccountIDTemporalruleGet)
    call_v1AccountAccountIDTemporalruleGet
    ;;
    v1AccountAccountIDTemporalrulePost)
    call_v1AccountAccountIDTemporalrulePost
    ;;
    v1AccountAccountIDTemporalruleTemporalRuleIDDelete)
    call_v1AccountAccountIDTemporalruleTemporalRuleIDDelete
    ;;
    v1AccountAccountIDTemporalruleTemporalRuleIDGet)
    call_v1AccountAccountIDTemporalruleTemporalRuleIDGet
    ;;
    v1AccountAccountIDTemporalruleTemporalRuleIDPut)
    call_v1AccountAccountIDTemporalruleTemporalRuleIDPut
    ;;
    v1AccountAccountIDTemporalrulesetGet)
    call_v1AccountAccountIDTemporalrulesetGet
    ;;
    v1AccountAccountIDTemporalrulesetPost)
    call_v1AccountAccountIDTemporalrulesetPost
    ;;
    v1AccountAccountIDTemporalrulesetTemporalRuleSetIDDelete)
    call_v1AccountAccountIDTemporalrulesetTemporalRuleSetIDDelete
    ;;
    v1AccountAccountIDTemporalrulesetTemporalRuleSetIDGet)
    call_v1AccountAccountIDTemporalrulesetTemporalRuleSetIDGet
    ;;
    v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut)
    call_v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut
    ;;
    v1AccountAccountidUserGet)
    call_v1AccountAccountidUserGet
    ;;
    v1AccountAccountidUserPost)
    call_v1AccountAccountidUserPost
    ;;
    v1AccountAccountidUserUseridDelete)
    call_v1AccountAccountidUserUseridDelete
    ;;
    v1AccountAccountidUserUseridGet)
    call_v1AccountAccountidUserUseridGet
    ;;
    v1AccountAccountidUserUseridPut)
    call_v1AccountAccountidUserUseridPut
    ;;
    v1AccountAccountidUserUseridUserauthPost)
    call_v1AccountAccountidUserUseridUserauthPost
    ;;
    v1AccountAccountIDVoicemailGet)
    call_v1AccountAccountIDVoicemailGet
    ;;
    v1AccountAccountIDVoicemailPost)
    call_v1AccountAccountIDVoicemailPost
    ;;
    v1AccountAccountIDVoicemailVoicemailIDDelete)
    call_v1AccountAccountIDVoicemailVoicemailIDDelete
    ;;
    v1AccountAccountIDVoicemailVoicemailIDGet)
    call_v1AccountAccountIDVoicemailVoicemailIDGet
    ;;
    v1AccountAccountIDVoicemailVoicemailIDMessageGet)
    call_v1AccountAccountIDVoicemailVoicemailIDMessageGet
    ;;
    v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete)
    call_v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete
    ;;
    v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet)
    call_v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet
    ;;
    v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut)
    call_v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut
    ;;
    v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet)
    call_v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet
    ;;
    v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost)
    call_v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost
    ;;
    v1AccountAccountIDVoicemailVoicemailIDMessagePost)
    call_v1AccountAccountIDVoicemailVoicemailIDMessagePost
    ;;
    v1AccountAccountIDVoicemailVoicemailIDPut)
    call_v1AccountAccountIDVoicemailVoicemailIDPut
    ;;
    v1WebhookAccountAccountIDGet)
    call_v1WebhookAccountAccountIDGet
    ;;
    v1WebhookAccountAccountIDPost)
    call_v1WebhookAccountAccountIDPost
    ;;
    v1WebhookAccountAccountIDWebhookIDDelete)
    call_v1WebhookAccountAccountIDWebhookIDDelete
    ;;
    v1WebhookAccountAccountIDWebhookIDGet)
    call_v1WebhookAccountAccountIDWebhookIDGet
    ;;
    v1WebhookAccountAccountIDWebhookIDPut)
    call_v1WebhookAccountAccountIDWebhookIDPut
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
