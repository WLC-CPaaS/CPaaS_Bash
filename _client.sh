#compdef 

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! openapi-generator (https://openapi-generator.tech)
# ! FROM OPENAPI SPECIFICATION IN JSON.
# !
# ! Based on: https://github.com/Valodim/zsh-curl-completion/blob/master/_curl
# !
# ! Generator version: 7.21.0
# !
# !
# ! Installation:
# !
# ! Copy the _ file to any directory under FPATH
# ! environment variable (echo $FPATH)
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


local curcontext="$curcontext" state line ret=1
typeset -A opt_args

typeset -A mime_type_abbreviations
# text/*
mime_type_abbreviations[text]="text/plain"
mime_type_abbreviations[html]="text/html"
mime_type_abbreviations[md]="text/x-markdown"
mime_type_abbreviations[csv]="text/csv"
mime_type_abbreviations[css]="text/css"
mime_type_abbreviations[rtf]="text/rtf"
# application/*
mime_type_abbreviations[json]="application/json"
mime_type_abbreviations[xml]="application/xml"
mime_type_abbreviations[yaml]="application/yaml"
mime_type_abbreviations[js]="application/javascript"
mime_type_abbreviations[bin]="application/octet-stream"
mime_type_abbreviations[rdf]="application/rdf+xml"
# image/*
mime_type_abbreviations[jpg]="image/jpeg"
mime_type_abbreviations[png]="image/png"
mime_type_abbreviations[gif]="image/gif"
mime_type_abbreviations[bmp]="image/bmp"
mime_type_abbreviations[tiff]="image/tiff"

#
# Generate zsh completion string list for abbreviated mime types
#
get_mime_type_completions() {
    typeset -a result
    result=()
    for k in "${(@k)mime_type_abbreviations}"; do
        value=$mime_type_abbreviations[${k}]
        #echo $value
        result+=( "${k}[${value}]" )
        #echo $result
    done
    echo "$result"
}

#
# cURL crypto engines completion function
#
_curl_crypto_engine() {
    local vals
    vals=( ${${(f)"$(curl --engine list)":gs/ /}[2,$]} )
    _describe -t outputs 'engines' vals && return 0
}

#
# cURL post data completion functions=
#
_curl_post_data() {

    # don't do anything further if this is raw content
    compset -P '=' && _message 'raw content' && return 0

    # complete filename or stdin for @ syntax
    compset -P '*@' && {
        local expl
        _description files expl stdin
        compadd "$expl[@]" - "-"
        _files
        return 0
    }

    # got a name already? expecting data.
    compset -P '*=' && _message 'data value' && return 0

    # otherwise, name (or @ or =) should be specified
    _message 'data name' && return 0

}


local arg_http arg_ftp arg_other arg_proxy arg_crypto arg_connection arg_auth arg_input arg_output

# HTTP Arguments
arg_http=(''\
  {-0,--http1.0}'[force use of use http 1.0 instead of 1.1]' \
  {-b,--cookie}'[pass data to http server as cookie]:data or file' \
  {-c,--cookie-jar}'[specify cookie file]:file name:_files' \
  {-d,--data}'[send specified data as HTTP POST data]:data:{_curl_post_data}' \
  '--data-binary[post HTTP POST data without any processing]:data:{_curl_post_data}' \
  '--data-urlencode[post HTTP POST data, with url encoding]:data:{_curl_post_data}' \
  {-f,--fail}'[enable failfast behavior for server errors]' \
  '*'{-F,--form}'[add POST form data]:name=content' \
  {-G,--get}'[use HTTP GET even with data (-d, --data, --data-binary)]' \
  '*'{-H,--header}'[specify an extra header]:header' \
  '--ignore-content-length[ignore Content-Length header]' \
  {-i,--include}'[include HTTP header in the output]' \
  {-j,--junk-session-cookies}'[discard all session cookies]' \
  {-e,--referer}'[send url as referer]:referer url:_urls' \
  {-L,--location}'[follow Location headers on http 3XX response]' \
  '--location-trusted[like --location, but allows sending of auth data to redirected hosts]' \
  '--max-redirs[set maximum number of redirection followings allowed]:number' \
  {-J,--remote-header-name}'[use Content-Disposition for output file name]' \
  {-O,--remote-name}'[write to filename parsed from url instead of stdout]' \
  '--post301[do not convert POST to GET after following 301 Location response (follow RFC 2616/10.3.2)]' \
  '--post302[do not convert POST to GET after following 302 Location response (follow RFC 2616/10.3.2)]' \
  )

# FTP arguments
arg_ftp=(\
  {-a,--append}'[append to target file instead of overwriting (FTP/SFTP)]' \
  '--crlf[convert LF to CRLF in upload]' \
  '--disable-eprt[disable use of EPRT and LPRT for active FTP transfers]' \
  '--disable-epsv[disable use of EPSV for passive FTP transfers]' \
  '--ftp-account[account data (FTP)]:data' \
  '--ftp-alternative-to-user[command to send when USER and PASS commands fail (FTP)]:command' \
  '--ftp-create-dirs[create paths remotely if it does not exist]' \
  '--ftp-method[ftp method to use to reach a file (FTP)]:method:(multicwd ocwd singlecwd)' \
  '--ftp-pasv[use passive mode for the data connection (FTP)]' \
  '--ftp-skip-pasv-ip[do not use the ip the server suggests for PASV]' \
  '--form-string[like --form, but do not parse content]:name=string' \
  '--ftp-pret[send PRET before PASV]' \
  '--ftp-ssl-ccc[use clear command channel (CCC) after authentication (FTP)]' \
  '--ftp-ssl-ccc-mode[sets the CCC mode (FTP)]:mode:(active passive)' \
  '--ftp-ssl-control[require SSL/TLS for FTP login, clear for transfer]' \
  {-l,--list-only}'[list names only when listing directories (FTP)]' \
  {-P,--ftp-port}'[use active mode, tell server to connect to specified address or interface (FTP]:address' \
  '*'{-Q,--quote}'[send arbitrary command to the remote server before transfer (FTP/SFTP)]:command' \
  )

# Other Protocol arguments
arg_other=(\
  '--mail-from[specify From: address]:address' \
  '--mail-rcpt[specify email recipient for SMTP, may be given multiple times]:address' \
  {-t,--telnet-option}'[pass options to telnet protocol]:opt=val' \
  '--tftp-blksize[set tftp BLKSIZE option]:value' \
  )

# Proxy arguments
arg_proxy=(\
  '--noproxy[list of hosts to connect directly to instead of through proxy]:no-proxy-list' \
  {-p,--proxytunnel}'[tunnel non-http protocols through http proxy]' \
  {-U,--proxy-user}'[specify the user name and password to use for proxy authentication]:user:password' \
  '--proxy-anyauth[use any authentication method for proxy, default to most secure]' \
  '--proxy-basic[use HTTP Basic authentication for proxy]' \
  '--proxy-digest[use http digest authentication for proxy]' \
  '--proxy-negotiate[enable GSS-Negotiate authentication for proxy]' \
  '--proxy-ntlm[enable ntlm authentication for proxy]' \
  '--proxy1.0[use http 1.0 proxy]:proxy url' \
  {-x,--proxy}'[use specified proxy]:proxy url' \
  '--socks5-gssapi-service[change service name for socks server]:servicename' \
  '--socks5-gssapi-nec[allow unprotected exchange of protection mode negotiation]' \
  )

# Crypto arguments
arg_crypto=(\
  {-1,--tlsv1}'[Forces curl to use TLS version 1 when negotiating with a remote TLS server.]' \
  {-2,--sslv2}'[Forces curl to use SSL version 2 when negotiating with a remote SSL server.]' \
  {-3,--sslv3}'[Forces curl to use SSL version 3 when negotiating with a remote SSL server.]' \
  '--ciphers[specifies which cipher to use for the ssl connection]:list of ciphers' \
  '--crlfile[specify file with revoked certificates]:file' \
  '--delegation[set delegation policy to use with GSS/kerberos]:delegation policy:(none policy always)' \
  {-E,--cert}'[use specified client certificate]:certificate file:_files' \
  '--engine[use selected OpenSSL crypto engine]:ssl crypto engine:{_curl_crypto_engine}' \
  '--egd-file[set ssl entropy gathering daemon socket]:entropy socket:_files' \
  '--cert-type[specify certificate type (PEM, DER, ENG)]:certificate type:(PEM DER ENG)' \
  '--cacert[specify certificate file to verify the peer with]:CA certificate:_files' \
  '--capath[specify a search path for certificate files]:CA certificate directory:_directories' \
  '--hostpubmd5[check remote hosts public key]:md5 hash' \
  {-k,--insecure}'[allow ssl to perform insecure ssl connections (ie, ignore certificate)]' \
  '--key[ssl/ssh private key file name]:key file:_files' \
  '--key-type[ssl/ssh private key file type]:file type:(PEM DER ENG)' \
  '--pubkey[ssh public key file]:pubkey file:_files' \
  '--random-file[set source of random data for ssl]:random source:_files' \
  '--no-sessionid[disable caching of ssl session ids]' \
  '--pass:phrase[passphrase for ssl/ssh private key]' \
  '--ssl[try to use ssl/tls for connection, if available]' \
  '--ssl-reqd[try to use ssl/tls for connection, fail if unavailable]' \
  '--tlsauthtype[set TLS authentication type (only SRP supported!)]:authtype' \
  '--tlsuser[set username for TLS authentication]:user' \
  '--tlspassword[set password for TLS authentication]:password' \
  )

# Connection arguments
arg_connection=(\
  {-4,--ipv4}'[prefer ipv4]' \
  {-6,--ipv6}'[prefer ipv6, if available]' \
  {-B,--use-ascii}'[use ascii mode]' \
  '--compressed[request a compressed transfer]' \
  '--connect-timeout[timeout for connection phase]:seconds' \
  {-I,--head}'[fetch http HEAD only (HTTP/FTP/FILE]' \
  '--interface[work on a specific interface]:name' \
  '--keepalive-time[set time to wait before sending keepalive probes]:seconds' \
  '--limit-rate[specify maximum transfer rate]:speed' \
  '--local-port[set preferred number or range of local ports to use]:num' \
  {-N,--no-buffer}'[disable buffering of the output stream]' \
  '--no-keepalive[disable use of keepalive messages in TCP connections]' \
  '--raw[disable all http decoding and pass raw data]' \
  '--resolve[provide a custom address for a specific host and port pair]:host\:port\:address' \
  '--retry[specify maximum number of retries for transient errors]:num' \
  '--retry-delay[specify delay between retries]:seconds' \
  '--retry-max-time[maximum time to spend on retries]:seconds' \
  '--tcp-nodelay[turn on TCP_NODELAY option]' \
  {-y,--speed-time}'[specify time to abort after if download is slower than speed-limit]:time' \
  {-Y,--speed-limit}'[specify minimum speed for --speed-time]:speed' \
  )

# Authentication arguments
arg_auth=(\
  '--anyauth[use any authentication method, default to most secure]' \
  '--basic[use HTTP Basic authentication]' \
  '--ntlm[enable ntlm authentication]' \
  '--digest[use http digest authentication]' \
  '--krb[use kerberos authentication]:auth:(clear safe confidential private)' \
  '--negotiate[enable GSS-Negotiate authentication]' \
  {-n,--netrc}'[scan ~/.netrc for login data]' \
  '--netrc-optional[like --netrc, but does not make .netrc usage mandatory]' \
  '--netrc-file[like --netrc, but specify file to use]:netrc file:_files' \
  '--tr-encoding[request compressed transfer-encoding]' \
  {-u,--user}'[specify user name and password for server authentication]:user\:password' \
  )

# Input arguments
arg_input=(\
  {-C,--continue-at}'[resume at offset ]:offset' \
  {-g,--globoff}'[do not glob {}\[\] letters]' \
  '--max-filesize[maximum filesize to download, fail for bigger files]:bytes' \
  '--proto[specify allowed protocols for transfer]:protocols' \
  '--proto-redir[specify allowed protocols for transfer after a redirect]:protocols' \
  {-r,--range}'[set range of bytes to request (HTTP/FTP/SFTP/FILE)]:range' \
  {-R,--remote-time}'[use timestamp of remote file for local file]' \
  {-T,--upload-file}'[transfer file to remote url (using PUT for HTTP)]:file to upload:_files' \
  '--url[specify a URL to fetch (multi)]:url:_urls' \
  {-z,--time-cond}'[request downloaded file to be newer than date or given reference file]:date expression' \
  )

# Output arguments
arg_output=(\
  '--create-dirs[create local directory hierarchy as needed]' \
  {-D,--dump-header}'[write protocol headers to file]:dump file:_files' \
  {-o,--output}'[write to specified file instead of stdout]:output file:_files' \
  {--progress-bar,-\#}'[display progress as a simple progress bar]' \
  {-\#,--progress-bar}'[Make curl display progress as a simple progress bar instead of the standard, more informational, meter.]' \
  {-R,--remote-time}'[use timestamp of remote file for local file]' \
  '--raw[disable all http decoding and pass raw data]' \
  {-s,--silent}'[silent mode, do not show progress meter or error messages]' \
  {-S,--show-error}'[show errors in silent mode]' \
  '--stderr[redirect stderr to specified file]:output file:_files' \
  '--trace[enable full trace dump of all incoming and outgoing data]:trace file:_files' \
  '--trace-ascii[enable full trace dump of all incoming and outgoing data, without hex data]:trace file:_files' \
  '--trace-time[prepends a time stamp to each trace or verbose line that curl displays]' \
  {-v,--verbose}'[output debug info]' \
  {-w,--write-out}'[specify message to output on successful operation]:format string' \
  '--xattr[store some file metadata in extended file attributes]' \
  {-X,--request}'[specifies request method for HTTP server]:method:(GET POST PUT DELETE HEAD OPTIONS TRACE CONNECT PATCH LINK UNLINK)' \
  )

_arguments -C -s $arg_http $arg_ftp $arg_other $arg_crypto $arg_connection $arg_auth $arg_input $arg_output \
  {-M,--manual}'[Print manual]' \
  '*'{-K,--config}'[Use other config file to read arguments from]:config file:_files' \
  '--libcurl[output libcurl code for the operation to file]:output file:_files' \
  {-m,--max-time}'[Limit total time of operation]:seconds' \
  {-s,--silent}'[Silent mode, do not show progress meter or error messages]' \
  {-S,--show-error}'[Show errors in silent mode]' \
  '--stderr[Redirect stderr to specified file]:output file:_files' \
  '-q[Do not read settings from .curlrc (must be first option)]' \
  {-h,--help}'[Print help and list of operations]' \
  {-V,--version}'[Print service API version]' \
  '--about[Print the information about service]' \
  '--host[Specify the host URL]':URL:_urls \
  '--dry-run[Print out the cURL command without executing it]' \
  {-ac,--accept}'[Set the Accept header in the request]: :{_values "Accept mime type" $(get_mime_type_completions)}' \
  {-ct,--content-type}'[Set the Content-type header in request]: :{_values "Content mime type" $(get_mime_type_completions)}' \
  '1: :->ops' \
  '*:: :->args' \
  && ret=0


case $state in
  ops)
    # Operations
    _values "Operations" \
            "v1AccountAccountidChildrenGet[Get Sub Account List]" \
            "v1AccountAccountidDelete[Delete Account]" \
            "v1AccountAccountidDnsrecordGet[Get Account DNS Record]" \
            "v1AccountAccountidDnsrecordPost[Create Account DNS Record]" \
            "v1AccountAccountidDnsrecordPut[Convert Account DNS Record]" \
            "v1AccountAccountidGet[Get Account Details]" \
            "v1AccountAccountidLimitGet[Get Account Limits]" \
            "v1AccountAccountidLimitPut[Set Account Limits]" \
            "v1AccountAccountidPost[Create Sub Account]" \
            "v1AccountAccountidProvisioningdetailsGet[Get Account Provisioning Details]" \
            "v1AccountAccountidProvisioningdetailsResetpwPut[Reset the provisioning details password.]" \
            "v1AccountAccountidPut[Update Account]" \
            "v1AccountApikeyGet[]" \
            "v1AccountGet[Get Account List]" \
            "v1AccountPost[Create Account]"             "v1MgmtUserGet[Get All CPaaS Users]" \
            "v1MgmtUserPost[Invite CPaaS User]" \
            "v1MgmtUserUserIDDelete[Delete CPaaS User]" \
            "v1MgmtUserUserIDGet[Get CPaaS User Details]" \
            "v1MgmtUserUserIDPut[Update CPaaS User Role]"             "v1AccountAccountIDParkedcallGet[Get Call Park List]"             "v1AccountAccountIDCallqueueGet[Get Call Queues]" \
            "v1AccountAccountIDCallqueuePost[Create Call Queue]" \
            "v1AccountAccountIDCallqueueQueueIDDelete[Delete Call Queue]" \
            "v1AccountAccountIDCallqueueQueueIDGet[Get Call Queue Details]" \
            "v1AccountAccountIDCallqueueQueueIDPut[Update Call Queue]" \
            "v1AccountAccountIDCallqueueQueueIDStatusGet[Get Call Queue Status]" \
            "v1AccountAccountIDQueuerolesGet[Get Queue Roles of Account]" \
            "v1AccountAccountIDQueuerolesQueueIDPost[Assign Queue Role to Call Queue]"             "v1AccountAccountIDQueuemembershipPost[Grant Queue Membership to User]" \
            "v1AccountAccountIDQueuemembershipRecipientIDDisablePost[Disable Queue Membership]" \
            "v1AccountAccountIDQueuemembershipRecipientIDEnablePost[Enable Queue Membership]"             "v1AccountAccountIDLoginrecipientRecipientIDPost[Login as Recipient]" \
            "v1AccountAccountIDQueuerecipientGet[Change Recipient Status]" \
            "v1AccountAccountIDRecipientRecipientIDStatusPost[Get Recipient List]"             "v1AccountAccountIDRecordingGet[Get Account Call Recording]" \
            "v1AccountAccountIDRecordingRecordingIDDelete[Delete Call Recording]" \
            "v1AccountAccountIDRecordingRecordingIDGet[Get Call Recording Details]" \
            "v1AccountAccountIDUserUserIDRecordingGet[Get User Call Recording]"             "v1AccountAccountIDCallflowCallflowIDDelete[Delete Call Group]" \
            "v1AccountAccountIDCallflowCallflowIDGet[Get Call Group Details]" \
            "v1AccountAccountIDCallflowCallflowIDPut[Update Call Group]" \
            "v1AccountAccountIDCallflowGet[Get Callflow List]" \
            "v1AccountAccountIDCallflowPost[Create Call Group]"             "v1AccountAccountIDChannelChannelIDGet[Get Channel Details]" \
            "v1AccountAccountIDChannelChannelIDPost[Associate Action to Channel]" \
            "v1AccountAccountIDChannelChannelIDPut[Associate Metaflow to Channel]" \
            "v1AccountAccountIDChannelGet[Get Account Channel List]" \
            "v1AccountAccountIDDeviceDeviceIDChannelGet[Get Device Channel List]" \
            "v1AccountAccountIDUserUserIDChannelGet[Get User Channel List]"             "v1AccountAccountIDCdrCdrIDGet[Get CDR Details]" \
            "v1AccountAccountIDCdrGet[Get CDR List]" \
            "v1DataCallDailySummaryGet[Get Call Daily Summary List]" \
            "v1DataCallDetailGet[Get Call Detail List]" \
            "v1DataCallMonthlySummaryGet[Get Call Detail List]" \
            "v1DataEndpointListGet[Get Endpoint List]" \
            "v1DataEventDailySummaryGet[Get Event Daily Summary List]" \
            "v1DataEventDetailGet[Get Event Details]" \
            "v1DataEventMonthlySummaryGet[Get Event Monthly Summary List]" \
            "v1DataFeatureDailySummaryGet[Get Feature Daily Summary List]" \
            "v1DataFeatureMonthlySummaryGet[Get Feature Monthly Summary List]"             "v1AccountAccountidDeviceDeviceidDelete[Delete Device]" \
            "v1AccountAccountidDeviceDeviceidGet[Get Device Details]" \
            "v1AccountAccountidDeviceDeviceidPut[Update Device]" \
            "v1AccountAccountidDeviceDeviceidRebootPost[Reboot Device]" \
            "v1AccountAccountidDeviceGet[Get Device List]" \
            "v1AccountAccountidDevicePost[Create Device]" \
            "v1AccountAccountidDeviceStatusGet[Get Device Status]"             "v1E911Get[Get E911 List]" \
            "v1E911LocationLocationIDActivatePut[Activate E911 Location]" \
            "v1E911LocationLocationIDDelete[Delete E911 Location]" \
            "v1E911LocationValidatePut[Validate a Location]" \
            "v1E911PhoneNumberDelete[Delete E911 Phone Number]" \
            "v1E911PhoneNumberLocationActiveGet[Get Actvie Location for a Phone Number]" \
            "v1E911PhoneNumberLocationGet[Get Location List for Phone Number]" \
            "v1E911Post[Create an E911 Location]"             "v1AccountAccountIDGroupGet[Get Group List]" \
            "v1AccountAccountIDGroupGroupIDDelete[Delete Group]" \
            "v1AccountAccountIDGroupGroupIDGet[Get Group Details]" \
            "v1AccountAccountIDGroupGroupIDPut[Update Group]" \
            "v1AccountAccountIDGroupPost[Create Group]"             "v1AccountAccountIDMediaMediaIDFileGet[Get Media File]" \
            "v1AccountAccountIDMediaMediaIDFilePost[Add Media File]" \
            "v1AccountAccountidMediaGet[Get Media List]" \
            "v1AccountAccountidMediaMediaidDelete[Delete Media]" \
            "v1AccountAccountidMediaMediaidGet[Get Media Details]" \
            "v1AccountAccountidMediaPost[Create Media]"             "v1AccountAccountIDMenuGet[Get Menu List]" \
            "v1AccountAccountIDMenuMenuIDDelete[Delete Menu]" \
            "v1AccountAccountIDMenuMenuIDGet[Get Menu Details]" \
            "v1AccountAccountIDMenuMenuIDPut[Update Menu]" \
            "v1AccountAccountIDMenuPost[Create Menu]"             "v1AccountAccountIDDeviceDeviceIDMetaflowDelete[Delete Device Metaflow]" \
            "v1AccountAccountIDDeviceDeviceIDMetaflowGet[Get Device Metaflow List]" \
            "v1AccountAccountIDDeviceDeviceIDMetaflowPost[Create Device Metaflow]" \
            "v1AccountAccountIDMetaflowDelete[Delete Account Metaflow]" \
            "v1AccountAccountIDMetaflowGet[Get Account Metaflow List]" \
            "v1AccountAccountIDMetaflowPost[Create Account Metaflow]" \
            "v1AccountAccountIDUserUserIDMetaflowDelete[Delete User Metaflow]" \
            "v1AccountAccountIDUserUserIDMetaflowGet[Get User Metaflow List]" \
            "v1AccountAccountIDUserUserIDMetaflowPost[Create User Metaflow]"             "v1AccountAccountidPhonenumberGet[Get Assigned Numbers List]" \
            "v1AccountPhonenumberAssignPost[Assign Number]" \
            "v1AccountPhonenumberDisconnectPost[Disconnect Number]" \
            "v1AccountPhonenumberGet[Get Unassigned Numbers List]" \
            "v1AccountPhonenumberPost[Purchase Number]" \
            "v1AccountPhonenumberUnassignPost[Unassign Number]" \
            "v1PhonenumberSearchGet[Search New Numbers]"             "v1AccountAccountIDPresenceExtensionPut[Set/Reset Presence for Extension]" \
            "v1AccountAccountIDPresenceGet[Get Presence Details]" \
            "v1AccountAccountIDUserUserIDPresencePut[Set/Reset Presence for User]"             "v1AccountAccountIDProvisionFilenameGet[Get Config File Details]" \
            "v1ApBrandBrandFamilyFamilyGet[Get Family Details]" \
            "v1ApBrandBrandFamilyFamilyModelGet[Get Model List]" \
            "v1ApBrandBrandFamilyFamilyModelModelGet[Get Model Details]" \
            "v1ApBrandBrandFamilyFamilyModelModelTemplateGet[Get Template List]" \
            "v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet[Get Template Details]" \
            "v1ApBrandBrandFamilyGet[Get Family List]" \
            "v1ApBrandBrandGet[Get Brand Details]" \
            "v1ApBrandGet[Get Brand List]" \
            "v1ApConfigfileGeneratePost[Generate Config File]"             "v1SmsAccountAccountIDCampaignCampaignIDImportGet[]" \
            "v1SmsAccountAccountIDCampaignCampaignIDImportPost[]" \
            "v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet[]" \
            "v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut[]" \
            "v1SmsAccountAccountIDCampaignImportGet[]"             "v1AccountAccountIDStorageDelete[Delete Storage]" \
            "v1AccountAccountIDStorageGet[Get Storage Details]" \
            "v1AccountAccountIDStoragePost[Create Storage]" \
            "v1AccountAccountIDStoragePut[Update Storage]"             "v1ApPingGet[Provisioning Ping]" \
            "v1PingGet[Ping Backend]" \
            "v1PingseccognitoGet[Ping Cognito]" \
            "v1SystemStatusGet[Get System Status]"             "v1AccountAccountIDTemporalruleGet[Get Temporal Rule List]" \
            "v1AccountAccountIDTemporalrulePost[Create Temporal Rule]" \
            "v1AccountAccountIDTemporalruleTemporalRuleIDDelete[Delete Temporal Rule]" \
            "v1AccountAccountIDTemporalruleTemporalRuleIDGet[Get Temporal Rule Details]" \
            "v1AccountAccountIDTemporalruleTemporalRuleIDPut[Update Temporal Rule]"             "v1AccountAccountIDTemporalrulesetGet[Get Temporal Rule Set List]" \
            "v1AccountAccountIDTemporalrulesetPost[Create Temporal Rule Set]" \
            "v1AccountAccountIDTemporalrulesetTemporalRuleSetIDDelete[Delete Temporal Rule Set]" \
            "v1AccountAccountIDTemporalrulesetTemporalRuleSetIDGet[Get Temporal Rule Set Details]" \
            "v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut[Update Temporal Rule Set]"             "v1AccountAccountidUserGet[Get User List]" \
            "v1AccountAccountidUserPost[Create User]" \
            "v1AccountAccountidUserUseridDelete[Delete User]" \
            "v1AccountAccountidUserUseridGet[Get User Details]" \
            "v1AccountAccountidUserUseridPut[Update User]" \
            "v1AccountAccountidUserUseridUserauthPost[Impersonate a User]"             "v1AccountAccountIDVoicemailGet[Get Voicemail Box List]" \
            "v1AccountAccountIDVoicemailPost[Create Voicemail Box]" \
            "v1AccountAccountIDVoicemailVoicemailIDDelete[Delete Voicemail Box]" \
            "v1AccountAccountIDVoicemailVoicemailIDGet[Get Voicemail Box Details]" \
            "v1AccountAccountIDVoicemailVoicemailIDMessageGet[Get Voicemail Message List]" \
            "v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete[Delete Voicemail Message]" \
            "v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDFileGet[Get Voicemail Message File]" \
            "v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDFilePost[Add Voicemail Message File]" \
            "v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet[Get Voicemail Message Details]" \
            "v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut[Update Voicemail Message]" \
            "v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet[Get Voicemail Message File (Deprecated)]" \
            "v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost[Add Voicemail Message File (Deprecated)]" \
            "v1AccountAccountIDVoicemailVoicemailIDMessagePost[Create Voicemail Message]" \
            "v1AccountAccountIDVoicemailVoicemailIDPut[Update Voicemail Box]"             "v1WebhookAccountAccountIDGet[Get Webhook List]" \
            "v1WebhookAccountAccountIDPost[Create Webhook]" \
            "v1WebhookAccountAccountIDWebhookIDDelete[Delete Webhook]" \
            "v1WebhookAccountAccountIDWebhookIDGet[Get Webhook Details]" \
            "v1WebhookAccountAccountIDWebhookIDPut[Update Webhook]" \

    _arguments "(--help)--help[Print information about operation]"

    ret=0
    ;;
  args)
    case $line[1] in
      v1AccountAccountidChildrenGet)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
          "start_key=:[QUERY] start_key for pagination that was returned as next_start_key from your previous call"
"page_size=:[QUERY] number of records to return, range 1 to 50"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidDelete)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidDnsrecordGet)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidDnsrecordPost)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidDnsrecordPut)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidGet)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidLimitGet)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidLimitPut)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidPost)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidProvisioningdetailsGet)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidProvisioningdetailsResetpwPut)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidPut)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountApikeyGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountGet)
        local -a _op_arguments
        _op_arguments=(
                    "start_key=:[QUERY] start_key for pagination that was returned as next_start_key from your previous call"
"page_size=:[QUERY] number of records to return, range 1 to 50"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountPost)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1MgmtUserGet)
        local -a _op_arguments
        _op_arguments=(
                    "page_size=:[QUERY] number of records to return, range 1 to 100"
"start_key=:[QUERY] unique to fetch next records"
"sort=:[QUERY] sorting the records by email(default)/role/first_name/last_name, _A is for ascending and _D is for descending, eg: sort&#x3D;role_A,email_D"
"email=:[QUERY] Email"
"role=:[QUERY] User Role"
"first_name=:[QUERY] First Name"
"last_name=:[QUERY] Last Name"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1MgmtUserPost)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1MgmtUserUserIDDelete)
        local -a _op_arguments
        _op_arguments=(
          "userID=:[PATH] User ID, numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1MgmtUserUserIDGet)
        local -a _op_arguments
        _op_arguments=(
          "userID=:[PATH] User ID, numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1MgmtUserUserIDPut)
        local -a _op_arguments
        _op_arguments=(
          "userID=:[PATH] User ID, numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDParkedcallGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDCallqueueGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDCallqueuePost)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDCallqueueQueueIDDelete)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"queueID=:[PATH] Queue ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDCallqueueQueueIDGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"queueID=:[PATH] Queue ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDCallqueueQueueIDPut)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"queueID=:[PATH] Queue ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDCallqueueQueueIDStatusGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"queueID=:[PATH] Queue ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDQueuerolesGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDQueuerolesQueueIDPost)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"queueID=:[PATH] Queue ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDQueuemembershipPost)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDQueuemembershipRecipientIDDisablePost)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"recipientID=:[PATH] Recipient ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDQueuemembershipRecipientIDEnablePost)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"recipientID=:[PATH] Recipient ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDLoginrecipientRecipientIDPost)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"recipientID=:[PATH] Recipient ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDQueuerecipientGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDRecipientRecipientIDStatusPost)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"recipientID=:[PATH] Recipient ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDRecordingGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDRecordingRecordingIDDelete)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"recordingID=:[PATH] Recording ID, 39 (yyyymm-&lt;32 id&gt;)"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDRecordingRecordingIDGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"recordingID=:[PATH] Recording ID, 39 (yyyymm-&lt;32 id&gt;)"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDUserUserIDRecordingGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"userID=:[PATH] User ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDCallflowCallflowIDDelete)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"callflowID=:[PATH] callflow ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDCallflowCallflowIDGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"callflowID=:[PATH] Callflow ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDCallflowCallflowIDPut)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"callflowID=:[PATH] Callflow ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDCallflowGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
          "start_key=:[QUERY] start_key for pagination that was returned as next_start_key from your previous call"
"page_size=:[QUERY] number of records to return, range 1 to 50"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDCallflowPost)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha-numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDChannelChannelIDGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"channelID=:[PATH] Channel ID"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDChannelChannelIDPost)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"channelID=:[PATH] Channel ID"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDChannelChannelIDPut)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"channelID=:[PATH] Channel ID"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDChannelGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDDeviceDeviceIDChannelGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"deviceID=:[PATH] Device ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDUserUserIDChannelGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"userID=:[PATH] User ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDCdrCdrIDGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"cdrID=:[PATH] CDR ID, string"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDCdrGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
          "page_size=:[QUERY] Page size (Maximum number of results to display per page)"
"start_key=:[QUERY] Start key (Starting offset for displaying results)"
"created_from=:[QUERY] For displaying records which are created on or after this timestamp (Supported timestamp formats: iso 8601, unix time in seconds or milliseconds or microseconds or nanoseconds)"
"created_to=:[QUERY] For displaying records which are created on or before this timestamp (Supported timestamp formats: iso 8601, unix time in seconds or milliseconds or microseconds or nanoseconds)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1DataCallDailySummaryGet)
        local -a _op_arguments
        _op_arguments=(
                    "account_id=:[QUERY] "
"call_type=:[QUERY] "
"end_date=:[QUERY] "
"page_size=:[QUERY] "
"start_date=:[QUERY] "
"start_key=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1DataCallDetailGet)
        local -a _op_arguments
        _op_arguments=(
                    "account=:[QUERY] "
"call_type=:[QUERY] "
"callee_name=:[QUERY] "
"callee_number=:[QUERY] "
"caller_name=:[QUERY] "
"caller_number=:[QUERY] "
"end_date=:[QUERY] "
"page_size=:[QUERY] "
"start_date=:[QUERY] "
"start_key=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1DataCallMonthlySummaryGet)
        local -a _op_arguments
        _op_arguments=(
                    "account=:[QUERY] "
"call_type=:[QUERY] "
"end_month=:[QUERY] "
"end_year=:[QUERY] "
"page_size=:[QUERY] "
"start_key=:[QUERY] "
"start_month=:[QUERY] "
"start_year=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1DataEndpointListGet)
        local -a _op_arguments
        _op_arguments=(
                    "endpoint_name=:[QUERY] "
"feature_name=:[QUERY] "
"page_size=:[QUERY] "
"start_key=:[QUERY] "
"transaction_type=:[QUERY] "
"version=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1DataEventDailySummaryGet)
        local -a _op_arguments
        _op_arguments=(
                    "account_id=:[QUERY] "
"component=:[QUERY] "
"end_date=:[QUERY] "
"page_size=:[QUERY] "
"start_date=:[QUERY] "
"start_key=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1DataEventDetailGet)
        local -a _op_arguments
        _op_arguments=(
                    "account_id=:[QUERY] "
"component=:[QUERY] "
"end_date_time=:[QUERY] "
"event_name=:[QUERY] "
"exec_status=:[QUERY] "
"page_size=:[QUERY] "
"start_date_time=:[QUERY] "
"start_key=:[QUERY] "
"username=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1DataEventMonthlySummaryGet)
        local -a _op_arguments
        _op_arguments=(
                    "account_id=:[QUERY] "
"component=:[QUERY] "
"end_month=:[QUERY] "
"end_year=:[QUERY] "
"page_size=:[QUERY] "
"start_key=:[QUERY] "
"start_month=:[QUERY] "
"start_year=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1DataFeatureDailySummaryGet)
        local -a _op_arguments
        _op_arguments=(
                    "end_date=:[QUERY] "
"feature_name=:[QUERY] "
"page_size=:[QUERY] "
"start_date=:[QUERY] "
"start_key=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1DataFeatureMonthlySummaryGet)
        local -a _op_arguments
        _op_arguments=(
                    "end_month=:[QUERY] "
"end_year=:[QUERY] "
"feature_name=:[QUERY] "
"page_size=:[QUERY] "
"start_key=:[QUERY] "
"start_month=:[QUERY] "
"start_year=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidDeviceDeviceidDelete)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
"deviceid=:[PATH] Device ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidDeviceDeviceidGet)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
"deviceid=:[PATH] Device ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidDeviceDeviceidPut)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
"deviceid=:[PATH] Device ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidDeviceDeviceidRebootPost)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
"deviceid=:[PATH] Device ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidDeviceGet)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
          "start_key=:[QUERY] start_key for pagination that was returned as next_start_key from your previous call"
"page_size=:[QUERY] number of records to return, range 1 to 50"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidDevicePost)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidDeviceStatusGet)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1E911Get)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1E911LocationLocationIDActivatePut)
        local -a _op_arguments
        _op_arguments=(
          "locationID=:[PATH] Location ID"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1E911LocationLocationIDDelete)
        local -a _op_arguments
        _op_arguments=(
          "locationID=:[PATH] Location ID"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1E911LocationValidatePut)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1E911PhoneNumberDelete)
        local -a _op_arguments
        _op_arguments=(
          "phoneNumber=:[PATH] Phone Number"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1E911PhoneNumberLocationActiveGet)
        local -a _op_arguments
        _op_arguments=(
          "phoneNumber=:[PATH] Phone Number"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1E911PhoneNumberLocationGet)
        local -a _op_arguments
        _op_arguments=(
          "phoneNumber=:[PATH] Phone Number"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1E911Post)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDGroupGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
          "start_key=:[QUERY] start_key for pagination that was returned as next_start_key from your previous call"
"page_size=:[QUERY] number of records to return, range 1 to 50"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDGroupGroupIDDelete)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"groupID=:[PATH] group ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDGroupGroupIDGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"groupID=:[PATH] Group ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDGroupGroupIDPut)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"groupID=:[PATH] Group ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDGroupPost)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDMediaMediaIDFileGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"mediaID=:[PATH] Media ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDMediaMediaIDFilePost)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"mediaID=:[PATH] Media ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidMediaGet)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
          "start_key=:[QUERY] start_key for pagination that was returned as next_start_key from your previous call"
"page_size=:[QUERY] number of records to return, range 1 to 50"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidMediaMediaidDelete)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
"mediaid=:[PATH] Device ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidMediaMediaidGet)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
"mediaid=:[PATH] Media ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidMediaPost)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDMenuGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
          "start_key=:[QUERY] start_key for pagination that was returned as next_start_key from your previous call"
"page_size=:[QUERY] number of records to return, range 1 to 50"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDMenuMenuIDDelete)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"menuID=:[PATH] Menu ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDMenuMenuIDGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"menuID=:[PATH] Menu ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDMenuMenuIDPut)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"menuID=:[PATH] Menu ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDMenuPost)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alphanumeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDDeviceDeviceIDMetaflowDelete)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"deviceID=:[PATH] Device ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDDeviceDeviceIDMetaflowGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"deviceID=:[PATH] Device ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDDeviceDeviceIDMetaflowPost)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"deviceID=:[PATH] Device ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDMetaflowDelete)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDMetaflowGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDMetaflowPost)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDUserUserIDMetaflowDelete)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"userID=:[PATH] user ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDUserUserIDMetaflowGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"userID=:[PATH] user ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDUserUserIDMetaflowPost)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"userID=:[PATH] user ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidPhonenumberGet)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
          "start_key=:[QUERY] Start key for pagination, obtained from previous responses"
"page_size=:[QUERY] Number of records to return per page (range: 1 to 50)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountPhonenumberAssignPost)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountPhonenumberDisconnectPost)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountPhonenumberGet)
        local -a _op_arguments
        _op_arguments=(
                    "start_key=:[QUERY] Start key for pagination, obtained from previous responses"
"page_size=:[QUERY] Number of records to return per page (range: 1 to 50)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountPhonenumberPost)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountPhonenumberUnassignPost)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1PhonenumberSearchGet)
        local -a _op_arguments
        _op_arguments=(
                    "area_code=:[QUERY] Area code (exactly 3 numeric characters) example: 610 or 484"
"quantity=:[QUERY] Number of records to return (range: 1 to 100, defaults to 100 if not provided)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDPresenceExtensionPut)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"extension=:[PATH] Extension"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDPresenceGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDUserUserIDPresencePut)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"userID=:[PATH] User ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDProvisionFilenameGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"filename=:[PATH] Name of config file"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1ApBrandBrandFamilyFamilyGet)
        local -a _op_arguments
        _op_arguments=(
          "brand=:[PATH] brand"
"family=:[PATH] family"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1ApBrandBrandFamilyFamilyModelGet)
        local -a _op_arguments
        _op_arguments=(
          "brand=:[PATH] brand"
"family=:[PATH] family"
          "model_name=:[QUERY] "
"page_size=:[QUERY] "
"start_key=:[QUERY] "
"status=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1ApBrandBrandFamilyFamilyModelModelGet)
        local -a _op_arguments
        _op_arguments=(
          "brand=:[PATH] brand"
"family=:[PATH] family"
"model=:[PATH] model"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1ApBrandBrandFamilyFamilyModelModelTemplateGet)
        local -a _op_arguments
        _op_arguments=(
          "brand=:[PATH] brand"
"family=:[PATH] family"
"model=:[PATH] model"
          "firmware=:[QUERY] "
"page_size=:[QUERY] "
"start_key=:[QUERY] "
"status=:[QUERY] "
"template_name=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet)
        local -a _op_arguments
        _op_arguments=(
          "brand=:[PATH] brand"
"family=:[PATH] family"
"model=:[PATH] model"
"template=:[PATH] template"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1ApBrandBrandFamilyGet)
        local -a _op_arguments
        _op_arguments=(
          "brand=:[PATH] brand"
          "family_name=:[QUERY] "
"page_size=:[QUERY] "
"start_key=:[QUERY] "
"status=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1ApBrandBrandGet)
        local -a _op_arguments
        _op_arguments=(
          "brand=:[PATH] brand id to retrieve a brand"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1ApBrandGet)
        local -a _op_arguments
        _op_arguments=(
                    "brand_name=:[QUERY] "
"page_size=:[QUERY] "
"start_key=:[QUERY] "
"status=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1ApConfigfileGeneratePost)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1SmsAccountAccountIDCampaignCampaignIDImportGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"campaignID=:[PATH] Campaign ID"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1SmsAccountAccountIDCampaignCampaignIDImportPost)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"campaignID=:[PATH] Campaign ID"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"campaignID=:[PATH] Campaign ID"
          "page_num=:[QUERY] Page number"
"page_size=:[QUERY] Page size"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"campaignID=:[PATH] Campaign ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1SmsAccountAccountIDCampaignImportGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
          "page_num=:[QUERY] Page number"
"page_size=:[QUERY] Page size"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDStorageDelete)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDStorageGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDStoragePost)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDStoragePut)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1ApPingGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1PingGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1PingseccognitoGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1SystemStatusGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDTemporalruleGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
          "start_key=:[QUERY] start_key for pagination that was returned as next_start_key from your previous call"
"page_size=:[QUERY] number of records to return, range 1 to 50"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDTemporalrulePost)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alphanumeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDTemporalruleTemporalRuleIDDelete)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"temporalRuleID=:[PATH] temporal rule ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDTemporalruleTemporalRuleIDGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"temporalRuleID=:[PATH] Temporal Rule ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDTemporalruleTemporalRuleIDPut)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"temporalRuleID=:[PATH] Temporal Rule ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDTemporalrulesetGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
          "start_key=:[QUERY] start_key for pagination that was returned as next_start_key from your previous call"
"page_size=:[QUERY] number of records to return, range 1 to 50"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDTemporalrulesetPost)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alphanumeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDTemporalrulesetTemporalRuleSetIDDelete)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"temporalRuleSetID=:[PATH] temporal rule set ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDTemporalrulesetTemporalRuleSetIDGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"temporalRuleSetID=:[PATH] Temporal Ruleset ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"temporalRuleSetID=:[PATH] Temporal Ruleset ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidUserGet)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
          "start_key=:[QUERY] start_key for pagination that was returned as next_start_key from your previous call"
"page_size=:[QUERY] number of records to return, range 1 to 50"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidUserPost)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidUserUseridDelete)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
"userid=:[PATH] User ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidUserUseridGet)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
"userid=:[PATH] User ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidUserUseridPut)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
"userid=:[PATH] User ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountidUserUseridUserauthPost)
        local -a _op_arguments
        _op_arguments=(
          "accountid=:[PATH] Account ID, 32 alpha numeric"
"userid=:[PATH] User ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDVoicemailGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
          "start_key=:[QUERY] start_key for pagination that was returned as next_start_key from your previous call"
"page_size=:[QUERY] number of records to return, range 1 to 50"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDVoicemailPost)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] account ID, 32 alphanumeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDVoicemailVoicemailIDDelete)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"voicemailID=:[PATH] Voicemail ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDVoicemailVoicemailIDGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"voicemailID=:[PATH] Voicemail ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDVoicemailVoicemailIDMessageGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"voicemailID=:[PATH] voicemail ID, 32 alpha numeric"
          "start_key=:[QUERY] start_key for pagination that was returned as next_start_key from your previous call"
"page_size=:[QUERY] number of records to return, range 1 to 50"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"voicemailID=:[PATH] Voicemail ID, 32 alpha numeric"
"messageID=:[PATH] message ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDFileGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, unique 32-character alphanumeric identifier"
"voicemailID=:[PATH] Voicemail Box ID, unique 32-character alphanumeric identifier"
"messageID=:[PATH] Message ID, unique 32-character alphanumeric identifier"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDFilePost)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alphanumeric characters"
"voicemailID=:[PATH] Voicemail ID, 32 alphanumeric characters"
"messageID=:[PATH] Message ID, 32 alphanumeric characters"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"voicemailID=:[PATH] Voicemail ID, 32 alpha numeric"
"messageID=:[PATH] Message ID, 39 (yyyymm-&lt;32 id&gt;)"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"voicemailID=:[PATH] Voicemail ID, 32 alpha numeric"
"messageID=:[PATH] Message ID, 39 (yyyymm-&lt;32 id&gt;)"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, unique 32-character alphanumeric identifier"
"voicemailID=:[PATH] Voicemail Box ID, unique 32-character alphanumeric identifier"
"messageID=:[PATH] Message ID, unique 32-character alphanumeric identifier"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alphanumeric characters"
"voicemailID=:[PATH] Voicemail ID, 32 alphanumeric characters"
"messageID=:[PATH] Message ID, 32 alphanumeric characters"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDVoicemailVoicemailIDMessagePost)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] account ID, 32 alphanumeric"
"voicemailID=:[PATH] voicemail ID, 32 alphanumeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AccountAccountIDVoicemailVoicemailIDPut)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID, 32 alpha numeric"
"voicemailID=:[PATH] Voicemail ID, 32 alpha numeric"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1WebhookAccountAccountIDGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID"
          "page_size=:[QUERY] number of records to return, range 1 to 50"
"current_page=:[QUERY] Current Page"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1WebhookAccountAccountIDPost)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1WebhookAccountAccountIDWebhookIDDelete)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID"
"webhookID=:[PATH] Webhook ID"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1WebhookAccountAccountIDWebhookIDGet)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID"
"webhookID=:[PATH] Webhook ID"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1WebhookAccountAccountIDWebhookIDPut)
        local -a _op_arguments
        _op_arguments=(
          "accountID=:[PATH] Account ID"
"webhookID=:[PATH] Webhook ID"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
    esac
    ;;

esac

return ret
