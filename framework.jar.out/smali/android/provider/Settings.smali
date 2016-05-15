.class public final Landroid/provider/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Settings$Bookmarks;,
        Landroid/provider/Settings$Global;,
        Landroid/provider/Settings$Secure;,
        Landroid/provider/Settings$System;,
        Landroid/provider/Settings$NameValueCache;,
        Landroid/provider/Settings$NameValueTable;,
        Landroid/provider/Settings$SettingNotFoundException;
    }
.end annotation


# static fields
.field public static final ACTION_ACCESSIBILITY_SETTINGS:Ljava/lang/String; = "android.settings.ACCESSIBILITY_SETTINGS"

.field public static final ACTION_ADD_ACCOUNT:Ljava/lang/String; = "android.settings.ADD_ACCOUNT_SETTINGS"

.field public static final ACTION_AIRPLANE_MODE_SETTINGS:Ljava/lang/String; = "android.settings.AIRPLANE_MODE_SETTINGS"

.field public static final ACTION_APN_SETTINGS:Ljava/lang/String; = "android.settings.APN_SETTINGS"

.field public static final ACTION_APPLICATION_DETAILS_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_DETAILS_SETTINGS"

.field public static final ACTION_APPLICATION_DEVELOPMENT_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

.field public static final ACTION_APPLICATION_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_SETTINGS"

.field public static final ACTION_APP_NOTIFICATION_REDACTION:Ljava/lang/String; = "android.settings.ACTION_APP_NOTIFICATION_REDACTION"

.field public static final ACTION_APP_NOTIFICATION_SETTINGS:Ljava/lang/String; = "android.settings.APP_NOTIFICATION_SETTINGS"

.field public static final ACTION_APP_OPS_SETTINGS:Ljava/lang/String; = "android.settings.APP_OPS_SETTINGS"

.field public static final ACTION_BATTERY_SAVER_SETTINGS:Ljava/lang/String; = "android.settings.BATTERY_SAVER_SETTINGS"

.field public static final ACTION_BLUETOOTH_SETTINGS:Ljava/lang/String; = "android.settings.BLUETOOTH_SETTINGS"

.field public static final ACTION_CAPTIONING_SETTINGS:Ljava/lang/String; = "android.settings.CAPTIONING_SETTINGS"

.field public static final ACTION_CAST_SETTINGS:Ljava/lang/String; = "android.settings.CAST_SETTINGS"

.field public static final ACTION_CONDITION_PROVIDER_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_CONDITION_PROVIDER_SETTINGS"

.field public static final ACTION_DATA_ROAMING_SETTINGS:Ljava/lang/String; = "android.settings.DATA_ROAMING_SETTINGS"

.field public static final ACTION_DATE_SETTINGS:Ljava/lang/String; = "android.settings.DATE_SETTINGS"

.field public static final ACTION_DEVICE_INFO_SETTINGS:Ljava/lang/String; = "android.settings.DEVICE_INFO_SETTINGS"

.field public static final ACTION_DISPLAY_SETTINGS:Ljava/lang/String; = "android.settings.DISPLAY_SETTINGS"

.field public static final ACTION_DREAM_SETTINGS:Ljava/lang/String; = "android.settings.DREAM_SETTINGS"

.field public static final ACTION_HOME_SETTINGS:Ljava/lang/String; = "android.settings.HOME_SETTINGS"

.field public static final ACTION_INPUT_METHOD_SETTINGS:Ljava/lang/String; = "android.settings.INPUT_METHOD_SETTINGS"

.field public static final ACTION_INPUT_METHOD_SUBTYPE_SETTINGS:Ljava/lang/String; = "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

.field public static final ACTION_INTERNAL_STORAGE_SETTINGS:Ljava/lang/String; = "android.settings.INTERNAL_STORAGE_SETTINGS"

.field public static final ACTION_LOCALE_SETTINGS:Ljava/lang/String; = "android.settings.LOCALE_SETTINGS"

.field public static final ACTION_LOCATION_SOURCE_SETTINGS:Ljava/lang/String; = "android.settings.LOCATION_SOURCE_SETTINGS"

.field public static final ACTION_MANAGE_ALL_APPLICATIONS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

.field public static final ACTION_MANAGE_APPLICATIONS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_APPLICATIONS_SETTINGS"

.field public static final ACTION_MEMORY_CARD_SETTINGS:Ljava/lang/String; = "android.settings.MEMORY_CARD_SETTINGS"

.field public static final ACTION_MONITORING_CERT_INFO:Ljava/lang/String; = "com.android.settings.MONITORING_CERT_INFO"

.field public static final ACTION_NETWORK_OPERATOR_SETTINGS:Ljava/lang/String; = "android.settings.NETWORK_OPERATOR_SETTINGS"

.field public static final ACTION_NFCSHARING_SETTINGS:Ljava/lang/String; = "android.settings.NFCSHARING_SETTINGS"

.field public static final ACTION_NFC_PAYMENT_SETTINGS:Ljava/lang/String; = "android.settings.NFC_PAYMENT_SETTINGS"

.field public static final ACTION_NFC_SETTINGS:Ljava/lang/String; = "android.settings.NFC_SETTINGS"

.field public static final ACTION_NOTIFICATION_LISTENER_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

.field public static final ACTION_NOTIFICATION_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_SETTINGS"

.field public static final ACTION_OEM_BLUETOOTH_SETTINGS:Ljava/lang/String; = "android.settings.OEM_BLUETOOTH_SETTINGS"

.field public static final ACTION_OEM_WIFI_SETTINGS:Ljava/lang/String; = "android.settings.OEM_WIFI_SETTINGS"

.field public static final ACTION_PAIRING_SETTINGS:Ljava/lang/String; = "android.settings.PAIRING_SETTINGS"

.field public static final ACTION_PRINT_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_PRINT_SETTINGS"

.field public static final ACTION_PRIVACY_SETTINGS:Ljava/lang/String; = "android.settings.PRIVACY_SETTINGS"

.field public static final ACTION_QUICK_LAUNCH_SETTINGS:Ljava/lang/String; = "android.settings.QUICK_LAUNCH_SETTINGS"

.field public static final ACTION_SEARCH_SETTINGS:Ljava/lang/String; = "android.search.action.SEARCH_SETTINGS"

.field public static final ACTION_SECURITY_SETTINGS:Ljava/lang/String; = "android.settings.SECURITY_SETTINGS"

.field public static final ACTION_SETTINGS:Ljava/lang/String; = "android.settings.SETTINGS"

.field public static final ACTION_SHOW_INPUT_METHOD_PICKER:Ljava/lang/String; = "android.settings.SHOW_INPUT_METHOD_PICKER"

.field public static final ACTION_SHOW_REGULATORY_INFO:Ljava/lang/String; = "android.settings.SHOW_REGULATORY_INFO"

.field public static final ACTION_SOUND_SETTINGS:Ljava/lang/String; = "android.settings.SOUND_SETTINGS"

.field public static final ACTION_SYNC_SETTINGS:Ljava/lang/String; = "android.settings.SYNC_SETTINGS"

.field public static final ACTION_SYSTEM_UPDATE_SETTINGS:Ljava/lang/String; = "android.settings.SYSTEM_UPDATE_SETTINGS"

.field public static final ACTION_TRUSTED_CREDENTIALS_USER:Ljava/lang/String; = "com.android.settings.TRUSTED_CREDENTIALS_USER"

.field public static final ACTION_USAGE_ACCESS_SETTINGS:Ljava/lang/String; = "android.settings.USAGE_ACCESS_SETTINGS"

.field public static final ACTION_USER_DICTIONARY_INSERT:Ljava/lang/String; = "com.android.settings.USER_DICTIONARY_INSERT"

.field public static final ACTION_USER_DICTIONARY_SETTINGS:Ljava/lang/String; = "android.settings.USER_DICTIONARY_SETTINGS"

.field public static final ACTION_VOICE_CONTROL_AIRPLANE_MODE:Ljava/lang/String; = "android.settings.VOICE_CONTROL_AIRPLANE_MODE"

.field public static final ACTION_VOICE_INPUT_SETTINGS:Ljava/lang/String; = "android.settings.VOICE_INPUT_SETTINGS"

.field public static final ACTION_WIFI_DISPLAY_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_DISPLAY_SETTINGS"

.field public static final ACTION_WIFI_IP_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_IP_SETTINGS"

.field public static final ACTION_WIFI_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_SETTINGS"

.field public static final ACTION_WIRELESS_SETTINGS:Ljava/lang/String; = "android.settings.WIRELESS_SETTINGS"

.field public static final ACTION_ZEN_MODE_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_SETTINGS"

.field public static final AUTHORITY:Ljava/lang/String; = "settings"

.field public static final CALL_METHOD_GET_GLOBAL:Ljava/lang/String; = "GET_global"

.field public static final CALL_METHOD_GET_SECURE:Ljava/lang/String; = "GET_secure"

.field public static final CALL_METHOD_GET_SYSTEM:Ljava/lang/String; = "GET_system"

.field public static final CALL_METHOD_PUT_GLOBAL:Ljava/lang/String; = "PUT_global"

.field public static final CALL_METHOD_PUT_SECURE:Ljava/lang/String; = "PUT_secure"

.field public static final CALL_METHOD_PUT_SYSTEM:Ljava/lang/String; = "PUT_system"

.field public static final CALL_METHOD_USER_KEY:Ljava/lang/String; = "_user"

.field public static final DEVICE_NAME_SETTINGS:Ljava/lang/String; = "android.settings.DEVICE_NAME"

.field public static final EXTRA_ACCOUNT_TYPES:Ljava/lang/String; = "account_types"

.field public static final EXTRA_AIRPLANE_MODE_ENABLED:Ljava/lang/String; = "airplane_mode_enabled"

.field public static final EXTRA_APP_PACKAGE:Ljava/lang/String; = "app_package"

.field public static final EXTRA_APP_UID:Ljava/lang/String; = "app_uid"

.field public static final EXTRA_AUTHORITIES:Ljava/lang/String; = "authorities"

.field public static final EXTRA_INPUT_DEVICE_IDENTIFIER:Ljava/lang/String; = "input_device_identifier"

.field public static final EXTRA_INPUT_METHOD_ID:Ljava/lang/String; = "input_method_id"

.field private static final JID_RESOURCE_PREFIX:Ljava/lang/String; = "android"

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "Settings"

.field private static final mLocationSettingsLock:Ljava/lang/Object;

.field private static final stringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1039
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/Settings;->mLocationSettingsLock:Ljava/lang/Object;

    .line 7880
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xd0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    .line 7881
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "notification_sound"

    const-string v2, "NOTIFICATION_SOUND"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7883
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "dtmf_tone"

    const-string v2, "DTMF_TONE_WHEN_DIALING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7885
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "lock_pattern_autolock"

    const-string v2, "LOCK_PATTERN_ENABLED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7887
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wifi_max_dhcp_retry_count"

    const-string v2, "WIFI_MAX_DHCP_RETRY_COUNT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7889
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "auto_time"

    const-string v2, "AUTO_TIME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7891
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "setup_wizard_has_run"

    const-string v2, "SETUP_WIZARD_HAS_RUN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7893
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "sys.settings_system_version"

    const-string v2, "SYS_PROP_SETTING_VERSION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7895
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wifi_watchdog_background_check_timeout_ms"

    const-string v2, "WIFI_WATCHDOG_BACKGROUND_CHECK_TIMEOUT_MS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7897
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "location_providers_allowed"

    const-string v2, "LOCATION_PROVIDERS_ALLOWED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7899
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "alarm_alert"

    const-string v2, "ALARM_ALERT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7901
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "vibrate_on"

    const-string v2, "VIBRATE_ON"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7903
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "usb_mass_storage_enabled"

    const-string v2, "USB_MASS_STORAGE_ENABLED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7905
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wifi_watchdog_ping_delay_ms"

    const-string v2, "WIFI_WATCHDOG_PING_DELAY_MS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7907
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "font_scale"

    const-string v2, "FONT_SCALE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7909
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wifi_watchdog_ap_count"

    const-string v2, "WIFI_WATCHDOG_AP_COUNT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7911
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "always_finish_activities"

    const-string v2, "ALWAYS_FINISH_ACTIVITIES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7913
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "accelerometer_rotation"

    const-string v2, "ACCELEROMETER_ROTATION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7915
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wifi_watchdog_ping_timeout_ms"

    const-string v2, "WIFI_WATCHDOG_PING_TIMEOUT_MS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7917
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "volume_notification"

    const-string v2, "VOLUME_NOTIFICATION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7919
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "airplane_mode_on"

    const-string v2, "AIRPLANE_MODE_ON"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7921
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wifi_watchdog_background_check_delay_ms"

    const-string v2, "WIFI_WATCHDOG_BACKGROUND_CHECK_DELAY_MS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7923
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wifi_static_ip"

    const-string v2, "WIFI_STATIC_IP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7925
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "bluetooth"

    const-string v2, "RADIO_BLUETOOTH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7927
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "bluetooth_discoverability_timeout"

    const-string v2, "BLUETOOTH_DISCOVERABILITY_TIMEOUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7929
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "volume_ring"

    const-string v2, "VOLUME_RING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7931
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "mode_ringer_streams_affected"

    const-string v2, "MODE_RINGER_STREAMS_AFFECTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7933
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "volume_system"

    const-string v2, "VOLUME_SYSTEM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7935
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "screen_off_timeout"

    const-string v2, "SCREEN_OFF_TIMEOUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7937
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wifi"

    const-string v2, "RADIO_WIFI"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7939
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "auto_time_zone"

    const-string v2, "AUTO_TIME_ZONE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7941
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "auto_caps"

    const-string v2, "TEXT_AUTO_CAPS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7943
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wallpaper_activity"

    const-string v2, "WALLPAPER_ACTIVITY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7945
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "animator_duration_scale"

    const-string v2, "ANIMATOR_DURATION_SCALE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7947
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wifi_num_open_networks_kept"

    const-string v2, "WIFI_NUM_OPEN_NETWORKS_KEPT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7949
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "lock_pattern_visible_pattern"

    const-string v2, "LOCK_PATTERN_VISIBLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7951
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "volume_voice"

    const-string v2, "VOLUME_VOICE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7953
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "debug_app"

    const-string v2, "DEBUG_APP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7955
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wifi_on"

    const-string v2, "WIFI_ON"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7957
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "show_password"

    const-string v2, "TEXT_SHOW_PASSWORD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7959
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wifi_networks_available_repeat_delay"

    const-string v2, "WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7961
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wifi_sleep_policy"

    const-string v2, "WIFI_SLEEP_POLICY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7963
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "volume_music"

    const-string v2, "VOLUME_MUSIC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7965
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "parental_control_last_update"

    const-string v2, "PARENTAL_CONTROL_LAST_UPDATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7967
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "device_provisioned"

    const-string v2, "DEVICE_PROVISIONED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7969
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "http_proxy"

    const-string v2, "HTTP_PROXY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7971
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "android_id"

    const-string v2, "ANDROID_ID"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7973
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wifi_watchdog_max_ap_checks"

    const-string v2, "WIFI_WATCHDOG_MAX_AP_CHECKS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7975
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "end_button_behavior"

    const-string v2, "END_BUTTON_BEHAVIOR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7977
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "next_alarm_formatted"

    const-string v2, "NEXT_ALARM_FORMATTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7979
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "cell"

    const-string v2, "RADIO_CELL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7981
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "parental_control_enabled"

    const-string v2, "PARENTAL_CONTROL_ENABLED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7983
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "bluetooth_on"

    const-string v2, "BLUETOOTH_ON"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7985
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "window_animation_scale"

    const-string v2, "WINDOW_ANIMATION_SCALE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7987
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wifi_watchdog_background_check_enabled"

    const-string v2, "WIFI_WATCHDOG_BACKGROUND_CHECK_ENABLED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7989
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "bluetooth_discoverability"

    const-string v2, "BLUETOOTH_DISCOVERABILITY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7991
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wifi_static_dns1"

    const-string v2, "WIFI_STATIC_DNS1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7993
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wifi_static_dns2"

    const-string v2, "WIFI_STATIC_DNS2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7995
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "haptic_feedback_enabled"

    const-string v2, "HAPTIC_FEEDBACK_ENABLED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7997
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "show_web_suggestions"

    const-string v2, "SHOW_WEB_SUGGESTIONS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7999
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "parental_control_redirect_url"

    const-string v2, "PARENTAL_CONTROL_REDIRECT_URL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8001
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "date_format"

    const-string v2, "DATE_FORMAT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8003
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "nfc"

    const-string v2, "RADIO_NFC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8005
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "airplane_mode_radios"

    const-string v2, "AIRPLANE_MODE_RADIOS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8007
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "lock_pattern_tactile_feedback_enabled"

    const-string v2, "LOCK_PATTERN_TACTILE_FEEDBACK_ENABLED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8009
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "time_12_24"

    const-string v2, "TIME_12_24"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8011
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wifi_watchdog_initial_ignored_ping_count"

    const-string v2, "WIFI_WATCHDOG_INITIAL_IGNORED_PING_COUNT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8013
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "volume_bluetooth_sco"

    const-string v2, "VOLUME_BLUETOOTH_SCO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8015
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "user_rotation"

    const-string v2, "USER_ROTATION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8017
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wifi_static_gateway"

    const-string v2, "WIFI_STATIC_GATEWAY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8019
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "stay_on_while_plugged_in"

    const-string v2, "STAY_ON_WHILE_PLUGGED_IN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8021
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "sound_effects_enabled"

    const-string v2, "SOUND_EFFECTS_ENABLED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8023
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wifi_watchdog_ping_count"

    const-string v2, "WIFI_WATCHDOG_PING_COUNT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8025
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "data_roaming"

    const-string v2, "DATA_ROAMING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8027
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "settings_classname"

    const-string v2, "SETTINGS_CLASSNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8029
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "transition_animation_scale"

    const-string v2, "TRANSITION_ANIMATION_SCALE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8031
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wait_for_debugger"

    const-string v2, "WAIT_FOR_DEBUGGER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8033
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "install_non_market_apps"

    const-string v2, "INSTALL_NON_MARKET_APPS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8035
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "adb_enabled"

    const-string v2, "ADB_ENABLED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8037
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wifi_use_static_ip"

    const-string v2, "WIFI_USE_STATIC_IP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8039
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "dim_screen"

    const-string v2, "DIM_SCREEN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8041
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "volume_alarm"

    const-string v2, "VOLUME_ALARM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8043
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wifi_watchdog_on"

    const-string v2, "WIFI_WATCHDOG_ON"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8045
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wifi_static_netmask"

    const-string v2, "WIFI_STATIC_NETMASK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8047
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "network_preference"

    const-string v2, "NETWORK_PREFERENCE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8049
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "show_processes"

    const-string v2, "SHOW_PROCESSES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8051
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "auto_replace"

    const-string v2, "TEXT_AUTO_REPLACE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8053
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wifi_networks_available_notification_on"

    const-string v2, "WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8055
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "_last_audible"

    const-string v2, "APPEND_FOR_LAST_AUDIBLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8057
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "SHOW_GTALK_SERVICE_STATUS"

    const-string v2, "SHOW_GTALK_SERVICE_STATUS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8059
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "screen_brightness"

    const-string v2, "SCREEN_BRIGHTNESS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8061
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "use_google_mail"

    const-string v2, "USE_GOOGLE_MAIL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8063
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "ringtone"

    const-string v2, "RINGTONE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8065
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "logging_id"

    const-string v2, "LOGGING_ID"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8067
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "mode_ringer"

    const-string v2, "MODE_RINGER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8069
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "mute_streams_affected"

    const-string v2, "MUTE_STREAMS_AFFECTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8071
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wifi_watchdog_acceptable_packet_loss_percentage"

    const-string v2, "WIFI_WATCHDOG_ACCEPTABLE_PACKET_LOSS_PERCENTAGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8073
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string v1, "auto_punctuate"

    const-string v2, "TEXT_AUTO_PUNCTUATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8075
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "wifi_mobile_data_transition_wakelock_timeout_ms"

    const-string v2, "WIFI_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8077
    sget-object v0, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    const-string/jumbo v1, "screen_brightness_mode"

    const-string v2, "SCREEN_BRIGHTNESS_MODE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8079
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7667
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p0}, Landroid/provider/Settings;->getFieldNameFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Landroid/provider/Settings;->mLocationSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method private static getFieldNameFromValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 8089
    sget-object v1, Landroid/provider/Settings;->stringMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8090
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 8092
    const-string v0, "UNKNOWN"

    .line 8094
    :cond_0
    return-object v0
.end method

.method public static getGTalkDeviceId(J)Ljava/lang/String;
    .locals 2
    .param p0, "androidId"    # J

    .prologue
    .line 7872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
