.class public Lnet/oneplus/odm/common/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceManagerUtil"

.field private static mSIMCount:I

.field private static mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput v0, Lnet/oneplus/odm/common/Util;->mSIMCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIsSystemApp(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 168
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static encodeToBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 175
    const/4 v2, 0x0

    new-array v1, v2, [B

    .line 177
    .local v1, "textBytes":[B
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 181
    :goto_0
    array-length v2, v1

    if-nez v2, :cond_0

    .line 182
    const/4 v2, 0x0

    .line 184
    :goto_1
    return-object v2

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 184
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getAESKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "android_id":Ljava/lang/String;
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 48
    .local v3, "tM":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "imei":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "AEScontext":Ljava/lang/String;
    invoke-static {v0}, Lnet/oneplus/odm/crypto/ODMEncrypter;->encodeToSHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getAndroidVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocale(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 70
    .local v1, "resource":Landroid/content/res/Resources;
    if-nez v1, :cond_0

    .line 71
    const-string v2, "DeviceManagerUtil"

    const-string v3, "Resources is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v2, ""

    .line 79
    :goto_0
    return-object v2

    .line 74
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 75
    .local v0, "configuration":Landroid/content/res/Configuration;
    if-nez v0, :cond_1

    .line 76
    const-string v2, "DeviceManagerUtil"

    const-string v3, "Configuration is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v2, ""

    goto :goto_0

    .line 79
    :cond_1
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getMacAddr(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 55
    .local v2, "manager":Landroid/net/wifi/WifiManager;
    if-nez v2, :cond_0

    .line 56
    const-string v3, "DeviceManagerUtil"

    const-string v4, "WifiManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v0, ""

    .line 65
    :goto_0
    return-object v0

    .line 59
    :cond_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 60
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_1

    .line 61
    const-string v3, "DeviceManagerUtil"

    const-string v4, "WifiInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v0, ""

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "address":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 234
    .local v4, "telephony":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 235
    .local v3, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 236
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getSIMCount(Landroid/content/Context;)I

    move-result v2

    .line 237
    .local v2, "simCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 238
    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    add-int/lit8 v5, v0, 0x1

    if-ge v5, v2, :cond_0

    .line 240
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    .end local v0    # "i":I
    .end local v2    # "simCount":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 216
    .local v5, "telephony":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    .line 217
    .local v4, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 218
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getSIMCount(Landroid/content/Context;)I

    move-result v3

    .line 219
    .local v3, "simCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 220
    invoke-virtual {v4, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 221
    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_0
    add-int/lit8 v6, v0, 0x1

    if-ge v6, v3, :cond_1

    .line 225
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "simCount":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 299
    .local v5, "telephony":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    .line 300
    .local v4, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 301
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getSIMCount(Landroid/content/Context;)I

    move-result v3

    .line 302
    .local v3, "simCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 303
    invoke-virtual {v4, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 304
    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v6

    .line 306
    .local v6, "type":I
    packed-switch v6, :pswitch_data_0

    .line 353
    const-string v7, "UNKNOWN"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .end local v6    # "type":I
    :cond_0
    :goto_1
    add-int/lit8 v7, v0, 0x1

    if-ge v7, v3, :cond_1

    .line 358
    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    .restart local v6    # "type":I
    :pswitch_0
    const-string v7, "1xRTT"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 311
    :pswitch_1
    const-string v7, "CDMA"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 314
    :pswitch_2
    const-string v7, "EDGE"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 317
    :pswitch_3
    const-string v7, "eHRPD"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 320
    :pswitch_4
    const-string v7, "EVDO 0"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 323
    :pswitch_5
    const-string v7, "EVDO A"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 326
    :pswitch_6
    const-string v7, "EVDO B"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 329
    :pswitch_7
    const-string v7, "GPRS"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 332
    :pswitch_8
    const-string v7, "HSDPA"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 335
    :pswitch_9
    const-string v7, "HSPA"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 338
    :pswitch_a
    const-string v7, "HSPAP"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 341
    :pswitch_b
    const-string v7, "HSUPA"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 344
    :pswitch_c
    const-string v7, "IDEN"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 347
    :pswitch_d
    const-string v7, "LTE"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 350
    :pswitch_e
    const-string v7, "UMTS"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 361
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "simCount":I
    .end local v6    # "type":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_2
        :pswitch_e
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_c
        :pswitch_6
        :pswitch_d
        :pswitch_3
        :pswitch_a
    .end packed-switch
.end method

.method public static getPid(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 87
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 88
    .local v2, "manager":Landroid/app/ActivityManager;
    if-nez v2, :cond_1

    .line 89
    const-string v5, "DeviceManagerUtil"

    const-string v6, "ActivityManager is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    :goto_0
    return v1

    .line 92
    :cond_1
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 93
    .local v4, "processInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v4, :cond_2

    .line 94
    const-string v5, "DeviceManagerUtil"

    const-string v6, "RunningAppProcessInfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :cond_2
    const/4 v1, -0x1

    .line 98
    .local v1, "id":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 99
    .local v3, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 100
    iget v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    goto :goto_1
.end method

.method public static getSIMCount(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    sget v1, Lnet/oneplus/odm/common/Util;->mSIMCount:I

    if-nez v1, :cond_0

    .line 203
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 204
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    sput v1, Lnet/oneplus/odm/common/Util;->mSIMCount:I

    .line 208
    .end local v0    # "telephony":Landroid/telephony/TelephonyManager;
    :cond_0
    sget v1, Lnet/oneplus/odm/common/Util;->mSIMCount:I

    return v1
.end method

.method public static getSimNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 281
    .local v5, "telephony":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    .line 282
    .local v4, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 283
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getSIMCount(Landroid/content/Context;)I

    move-result v3

    .line 284
    .local v3, "simCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 285
    invoke-virtual {v4, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 286
    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_0
    add-int/lit8 v6, v0, 0x1

    if-ge v6, v3, :cond_1

    .line 290
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "simCount":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getSimOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 265
    .local v4, "telephony":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 266
    .local v3, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 267
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getSIMCount(Landroid/content/Context;)I

    move-result v2

    .line 268
    .local v2, "simCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 269
    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    add-int/lit8 v5, v0, 0x1

    if-ge v5, v2, :cond_0

    .line 272
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    .end local v0    # "i":I
    .end local v2    # "simCount":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getSimOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 249
    .local v4, "telephony":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 250
    .local v3, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 251
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getSIMCount(Landroid/content/Context;)I

    move-result v2

    .line 252
    .local v2, "simCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 253
    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    add-int/lit8 v5, v0, 0x1

    if-ge v5, v2, :cond_0

    .line 256
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    .end local v0    # "i":I
    .end local v2    # "simCount":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    sget-object v0, Lnet/oneplus/odm/common/Util;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-nez v0, :cond_0

    .line 196
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    sput-object v0, Lnet/oneplus/odm/common/Util;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 198
    :cond_0
    sget-object v0, Lnet/oneplus/odm/common/Util;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method private static getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    sget-object v0, Lnet/oneplus/odm/common/Util;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 189
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lnet/oneplus/odm/common/Util;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 191
    :cond_0
    sget-object v0, Lnet/oneplus/odm/common/Util;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getUid(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 107
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 108
    .local v2, "manager":Landroid/app/ActivityManager;
    if-nez v2, :cond_1

    .line 109
    const-string v5, "DeviceManagerUtil"

    const-string v6, "ActivityManager is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 112
    :cond_1
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 113
    .local v4, "processInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v4, :cond_2

    .line 114
    const-string v5, "DeviceManagerUtil"

    const-string v6, "RunningAppProcessInfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :cond_2
    const/4 v1, -0x1

    .line 118
    .local v1, "id":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 119
    .local v3, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 120
    iget v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    goto :goto_1
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    .line 127
    const/4 v3, -0x1

    .line 128
    .local v3, "version":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 129
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_0

    .line 130
    const-string v5, "DeviceManagerUtil"

    const-string v6, "PackageManager is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return v4

    .line 134
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 135
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_1

    .line 136
    const-string v5, "DeviceManagerUtil"

    const-string v6, "PackageInfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 140
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    move v4, v3

    .line 143
    goto :goto_0

    .line 139
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_1
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 140
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    const-string v3, ""

    .line 148
    .local v3, "version":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 149
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_0

    .line 150
    const-string v4, "DeviceManagerUtil"

    const-string v5, "PackageManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v4, ""

    .line 163
    :goto_0
    return-object v4

    .line 154
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 155
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_1

    .line 156
    const-string v4, "DeviceManagerUtil"

    const-string v5, "PackageInfo is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v4, ""

    goto :goto_0

    .line 159
    :cond_1
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_1
    move-object v4, v3

    .line 163
    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static isRomDebugVersion()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 367
    const-string v3, "persist.sys.assert.enable"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 368
    .local v0, "isRomDebug":Z
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method
