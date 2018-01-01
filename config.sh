##########################################################################################
#
# Magisk Module Template Config Script
# by topjohnwu
#
##########################################################################################
##########################################################################################
#
# Instructions:
#
# 1. Place your files into system folder (delete the placeholder file)
# 2. Fill in your module's info into module.prop
# 3. Configure the settings in this file (config.sh)
# 4. If you need boot scripts, add them into common/post-fs-data.sh or common/service.sh
# 5. Add your additional or modified system properties into common/system.prop
#
##########################################################################################

##########################################################################################
# Configs
##########################################################################################

# Set to true if you need to enable Magic Mount
# Most mods would like it to be enabled
AUTOMOUNT=true

# Set to true if you need to load system.prop
PROPFILE=false

# Set to true if you need post-fs-data script
POSTFSDATA=false

# Set to true if you need late_start service script
LATESTARTSERVICE=false

##########################################################################################
# Installation Message
##########################################################################################

# Set what you want to show when installing your mod

print_modname() {
  ui_print "*******************************"
  ui_print "       Setting up Debloat      "
  ui_print "*******************************"
}

##########################################################################################
# Replace list
##########################################################################################

# List all directories you want to directly replace in the system
# Check the documentations for more info about how Magic Mount works, and why you need this

# This is an example
REPLACE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

# Construct your own list here, it will override the example above
# !DO NOT! remove this if you don't need to replace anything, leave it empty as it is now
#system/app/BookmarkProvider
#system/app/EdmVpnServices
#system/app/EmergencyModeService
#system/app/EmergencyProvider
#system/app/GameOptimizer
#system/app/HighlightPlayer_Hero
#system/app/RootPA
#system/app/SLocation
#system/app/SamsungTTS
#system/app/Stk2
#system/app/VideoCollage_Hero
#system/app/VideoEditorLite_Hero
#system/app/VideoTrimmer
#system/priv-app/SamsungAccount_Dream
#system/priv-app/GalaxyApps_3xh_zero
#system/priv-app/SecEmail_M
#system/priv-app/SecEmail_N
#system/priv-app/SHealth4
#system/priv-app/SmartManager_v3
#system/priv-app/SmartManager_v3_DeviceSecurity
#system/priv-app/SmartManagerProvider
#system/priv-app/SmartManagerSDK
#system/priv-app/ThemeCenter
#system/priv-app/ThemeStore_3xh
REPLACE="
/system/app/AASAservice
/system/app/ANTPlusPlugins
/system/app/ANTPlusTest
/system/app/AdvSoundDetector2015
/system/app/AllshareFileShare
/system/app/AllshareMediaShare
/system/app/AntHalService
/system/app/BBCAgent
/system/app/BasicDreams
/system/app/Books
/system/app/CarmodeStub
/system/app/ChocoEUKor
/system/app/Chrome
/system/app/ChromeCustomizations
/system/app/DRParser
/system/app/DictDiotek
/system/app/Drive
/system/app/EasyOneHand3
/system/app/EasymodeContactsWidget
/system/app/EdmSimPinService
/system/app/FBAppManager
/system/app/FBInstagram_stub
/system/app/FBMessenger_stub
/system/app/Facebook_stub
/system/app/FactoryCameraFB
/system/app/FlipboardBriefing
/system/app/FunAndGames
/system/app/GameOptimizer
/system/app/GearManagerStub
/system/app/Gmail2
/system/app/GooglePrintRecommendationService
/system/app/Hangouts
/system/app/ImsSettings
/system/app/KnoxAppsUpdateAgent
/system/app/KnoxAttestationAgent
/system/app/KnoxFolderContainer2
/system/app/KnoxRemoteContentsProvider
/system/app/KnoxSetupWizardClient
/system/app/KnoxSwitcher
/system/app/MDMApp
/system/app/Maps
/system/app/MirrorLink
/system/app/Music2
/system/app/Newsstand
/system/app/OneNote_Compact_Samsung
/system/app/PartnerBookmarksProvider
/system/app/PhotoTable
/system/app/PlayGames
/system/app/PlusOne
/system/app/SBrowser_5.0
/system/app/SPrintSpooler7
/system/app/STalkback
/system/app/SamsungDLPService
/system/app/SapaAudioConnectionService
/system/app/SapaMonitor
/system/app/SecMemo3
/system/app/SecurityLogAgent
/system/app/ShareLink
/system/app/SilentLog
/system/app/TuiService
/system/app/UniversalMDMClient
/system/app/Videos
/system/app/Weather2017_SE
/system/app/WeatherWidget2017_SE
/system/app/WhatsAppDownloader
/system/app/YouTube
/system/app/withTV
/system/priv-app/ANTRadioService
/system/priv-app/AccessControl_N
/system/priv-app/AssistantMenu_N
/system/priv-app/AutomationTest_FB
/system/priv-app/AxelSpringer
/system/priv-app/ColorBlind_N
/system/priv-app/DiagMonAgent
/system/priv-app/EasyLauncher2_Zero
/system/priv-app/EasySetup
/system/priv-app/Excel_SamsungStub
/system/priv-app/FBInstaller
/system/priv-app/FotaAgent
/system/priv-app/GalaxyAppsWidget_Phone
/system/priv-app/GalaxyApps_3xh
/system/priv-app/GameHome
/system/priv-app/GameTools
/system/priv-app/GoogleFeedback
/system/priv-app/HancomOfficeEditor
/system/priv-app/HealthService
/system/priv-app/ImsLogger+
/system/priv-app/KLMSAgent
/system/priv-app/LiveBroadcast
/system/priv-app/Lookout_SPR
/system/priv-app/MobileID
/system/priv-app/MobileInstaller
/system/priv-app/OneDrive_Samsung_v2
/system/priv-app/PaymentFramework
/system/priv-app/PowerPoint_SamsungStub
/system/priv-app/PreloadInstaller
/system/priv-app/RNB
/system/priv-app/RNBShell
/system/priv-app/SAMSUNG_PLUS
/system/priv-app/SFinder_v6
/system/priv-app/SHealth5
/system/priv-app/SMF
/system/priv-app/SMusic
/system/priv-app/SMusicPicker
/system/priv-app/SNS_v2_N
/system/priv-app/SOAgent
/system/priv-app/SPDClient
/system/priv-app/SPPPushClient_Prod
/system/priv-app/SVoice
/system/priv-app/SVoiceLang_EnglishPack_US_1.0
/system/priv-app/SVoiceLang_SpanishPack_1.0
/system/priv-app/SVoicePLM
/system/priv-app/SamsungAccount_Dream
/system/priv-app/SamsungBilling
/system/priv-app/SamsungCloud
/system/priv-app/SamsungMagnifier3
/system/priv-app/SamsungPass_1.1
/system/priv-app/SamsungPayApp
/system/priv-app/SecLiveWallpapersPicker
/system/priv-app/SecMyFiles2017
/system/priv-app/SecureFolderStub
/system/priv-app/SendHelpMessage
/system/priv-app/SmartRemote_zero
/system/priv-app/SprintSetupWizard
/system/priv-app/StatementService
/system/priv-app/StoryService
/system/priv-app/Tag
/system/priv-app/VRSetupWizardStub
/system/priv-app/Velvet
/system/priv-app/VoiceNote_5.0
/system/priv-app/VoiceWakeUp
/system/priv-app/Word_SamsungStub
/system/priv-app/Zone
/system/priv-app/imsservice
/system/priv-app/xtra_t_app
"

##########################################################################################
# Permissions
##########################################################################################

set_permissions() {
  # Only some special files require specific permissions
  # The default permissions should be good enough for most cases

  # Here are some examples for the set_perm functions:

  # set_perm_recursive  <dirname>                <owner> <group> <dirpermission> <filepermission> <contexts> (default: u:object_r:system_file:s0)
  # set_perm_recursive  $MODPATH/system/lib       0       0       0755            0644

  # set_perm  <filename>                         <owner> <group> <permission> <contexts> (default: u:object_r:system_file:s0)
  # set_perm  $MODPATH/system/bin/app_process32   0       2000    0755         u:object_r:zygote_exec:s0
  # set_perm  $MODPATH/system/bin/dex2oat         0       2000    0755         u:object_r:dex2oat_exec:s0
  # set_perm  $MODPATH/system/lib/libart.so       0       0       0644

  # The following is default permissions, DO NOT remove
  set_perm_recursive  $MODPATH  0  0  0755  0644
}

##########################################################################################
# Custom Functions
##########################################################################################

# This file (config.sh) will be sourced by the main flash script after util_functions.sh
# If you need custom logic, please add them here as functions, and call these functions in
# update-binary. Refrain from adding code directly into update-binary, as it will make it
# difficult for you to migrate your modules to newer template versions.
# Make update-binary as clean as possible, try to only do function calls in it.
