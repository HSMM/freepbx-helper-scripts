#!/bin/bash
echo "Beginning FreePBX 15 initial setup..."
echo "Updating operating system"
sudo yum update -y
echo "Installing git"
sudo yum install git -y
echo "Removing commerical modules, except sysadmin..."
echo "Removing Oracle Connector"
sudo fwconsole ma delete oracle_connector
echo "Removing Advanced Recovery"
sudo fwconsole ma delete adv_recovery
echo "Removing areminder"
sudo fwconsole ma delete areminder
echo "Removing broadcast"
sudo fwconsole ma delete broadcast
echo "Removing callaccounting"
sudo fwconsole ma delete callaccounting
echo "Removing callerid"
sudo fwconsole ma delete callerid
echo "Removing calllimit"
sudo fwconsole ma delete calllimit
echo "Removing conferencespro"
sudo fwconsole ma delete conferencespro
echo "Removing extensionroutes"
sudo fwconsole ma delete extensionroutes
echo "Removing faxpro"
sudo fwconsole ma delete faxpro
echo "Removing iotserver"
sudo fwconsole ma delete iotserver
echo "Removing pagingpro"
sudo fwconsole ma delete pagingpro
echo "Removing parkpro"
sudo fwconsole ma delete parkpro
echo "Removing pinsetpro"
sudo fwconsole ma delete pinsetspro
echo "Removing pms"
sudo fwconsole ma delete pms
echo "Removing queueustats"
sudo fwconsole ma delete queuestats
echo "Removing qxact_reports"
sudo fwconsole ma delete qxact_reports
echo "Removing recording_report"
sudo fwconsole ma delete recording_report
echo "Removing restapps"
sudo fwconsole ma delete restapps
echo "Removing endpoint"
sudo fwconsole ma delete endpoint
echo "Removing sangomacrm"
sudo fwconsole ma delete sangomacrm
echo "Removing sipstation"
sudo fwconsole ma delete sipstation
echo "Removing vega"
sudo fwconsole ma delete vega
echo "Removing vmnotify"
sudo fwconsole ma delete vmnotify
echo "Removing voicemail_report"
sudo fwconsole ma delete voicemail_report
echo "Removing vqplus"
sudo fwconsole ma delete vqplus
echo "Removing webcallback"
sudo fwconsole ma delete webcallback
echo "Removing zulu"
sudo fwconsole ma delete zulu
echo "Removing sms"
sudo fwconsole ma delete sms
echo "Removing cos"
sudo fwconsole ma delete cos
echo "Removing rarely needed OpenSource modules"
echo "Removing cxpanel"
sudo fwconsole ma delete cxpanel
echo "Removing digium_phones"
sudo fwconsole ma delete digium_phones
echo "Removing digiumaddoninstaller"
sudo fwconsole ma delete digiumaddoninstaller
echo "Removing irc"
sudo fwconsole ma delete irc
echo "Reloading FreePBX..."
sudo fwconsole reload
echo "Enabling commerical repository..."
sudo fwconsole ma enablerepo commercial
echo "Upgrading all installed modules..."
sudo fwconsole ma upgradeall
echo "Reloading FreePBX..."
sudo fwconsole reload
echo "Your initial FreePBX command line setup is complete."
ipaddress=`ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'`
echo "Please navigate to https://$ipaddress or https://YOURFQDN to complete your setup."
