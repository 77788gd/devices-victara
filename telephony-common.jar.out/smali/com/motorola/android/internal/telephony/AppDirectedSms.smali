.class public Lcom/motorola/android/internal/telephony/AppDirectedSms;
.super Ljava/lang/Object;
.source "AppDirectedSms.java"


# static fields
.field private static final API_ID_VZWSMS:Ljava/lang/String; = "VZWSMS"

.field private static final APP_DIRECTED_SMS_PERM:Ljava/lang/String; = "com.motorola.permission.RECEIVE_APP_DIRECTED_SMS"

.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "AppDirectedSms"

.field private static final VZWAVS_PROVIDER_AUTH:Ljava/lang/String; = "com.verizon.vzwavs.provider"

.field private static final VZWAVS_URI:Landroid/net/Uri;

.field private static mDirectedSmsSignatures:[Landroid/content/pm/Signature;


# instance fields
.field private mActionDirectedSmsReceived:Ljava/lang/String;

.field private mAdsPermissionPackage:Ljava/lang/String;

.field private mAppPrefix:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mKeyAppPrefix:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSmsBody:Ljava/lang/String;

.field private mSmsFrom:Ljava/lang/String;

.field private mSmsPrefixLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->DBG:Z

    .line 61
    const-string v0, "content://com.verizon.vzwavs.provider/apis"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->VZWAVS_URI:Landroid/net/Uri;

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mDirectedSmsSignatures:[Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[[BLjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pdus"    # [[B
    .param p3, "smsFormat"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v1, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mActionDirectedSmsReceived:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mAdsPermissionPackage:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mKeyAppPrefix:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mContext:Landroid/content/Context;

    .line 76
    iput-object v1, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 78
    iput-object v1, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mSmsBody:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mSmsFrom:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mAppPrefix:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mSmsPrefixLen:I

    .line 84
    if-eqz p1, :cond_1

    .line 85
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mContext:Landroid/content/Context;

    .line 86
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-direct {p0, p2, p3}, Lcom/motorola/android/internal/telephony/AppDirectedSms;->getSmsBody([[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mSmsBody:Ljava/lang/String;

    .line 89
    sget-boolean v0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "AppDirectedSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS Body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mSmsBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/AppDirectedSms;->getPrefixLen()I

    move-result v0

    iput v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mSmsPrefixLen:I

    .line 94
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10406ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mActionDirectedSmsReceived:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10406f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mAdsPermissionPackage:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10406f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mKeyAppPrefix:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 101
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mAdsPermissionPackage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/AppDirectedSms;->getPackageSignatures(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mDirectedSmsSignatures:[Landroid/content/pm/Signature;

    .line 103
    :cond_1
    return-void
.end method

.method private checkPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkName"    # Ljava/lang/String;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "com.motorola.permission.RECEIVE_APP_DIRECTED_SMS"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 237
    sget-boolean v0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "AppDirectedSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPermission passed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    const/4 v0, 0x1

    .line 242
    :goto_0
    return v0

    .line 241
    :cond_1
    sget-boolean v0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "AppDirectedSms"

    const-string v1, "NOT Found valid Application with Permission."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkSignature(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 210
    sget-object v4, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mDirectedSmsSignatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mAdsPermissionPackage:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v3

    .line 214
    :cond_1
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/AppDirectedSms;->getPackageSignatures(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v2

    .line 215
    .local v2, "sig":[Landroid/content/pm/Signature;
    if-eqz v2, :cond_0

    .line 219
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v4, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mDirectedSmsSignatures:[Landroid/content/pm/Signature;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 220
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    array-length v4, v2

    if-ge v1, v4, :cond_3

    .line 221
    aget-object v4, v2, v1

    sget-object v5, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mDirectedSmsSignatures:[Landroid/content/pm/Signature;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 222
    const/4 v3, 0x1

    goto :goto_0

    .line 220
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 219
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private checkVZWAVS(Ljava/lang/String;)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 318
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 321
    .local v9, "sAppIds":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 349
    if-eqz v7, :cond_0

    .line 350
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move v1, v10

    .line 353
    :cond_1
    :goto_0
    return v1

    .line 322
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 324
    if-nez v0, :cond_4

    .line 349
    if-eqz v7, :cond_3

    .line 350
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move v1, v10

    goto :goto_0

    .line 326
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.verizon.vzwavs.provider"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v6

    .line 328
    .local v6, "cpInfo":Landroid/content/pm/ProviderInfo;
    if-nez v6, :cond_7

    .line 329
    sget-boolean v1, Lcom/motorola/android/internal/telephony/AppDirectedSms;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "AppDirectedSms"

    const-string v2, "com.verizon.vzwavs.provider not found."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 349
    :cond_5
    if-eqz v7, :cond_6

    .line 350
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move v1, v10

    goto :goto_0

    .line 332
    :cond_7
    :try_start_3
    iget-object v1, v6, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_9

    .line 333
    const-string v1, "AppDirectedSms"

    const-string v2, "com.verizon.vzwavs.provider is not in a system apk!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 349
    if-eqz v7, :cond_8

    .line 350
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    move v1, v10

    goto :goto_0

    .line 336
    :cond_9
    :try_start_4
    sget-object v1, Lcom/motorola/android/internal/telephony/AppDirectedSms;->VZWAVS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 338
    if-eqz v7, :cond_b

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 339
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 340
    if-eqz v9, :cond_b

    const-string v1, "VZWSMS"

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 341
    sget-boolean v1, Lcom/motorola/android/internal/telephony/AppDirectedSms;->DBG:Z

    if-eqz v1, :cond_a

    const-string v1, "AppDirectedSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkVZWAVS found package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contain VZW API ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "VZWSMS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 343
    :cond_a
    const/4 v1, 0x1

    .line 349
    if-eqz v7, :cond_1

    .line 350
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 349
    :cond_b
    if-eqz v7, :cond_c

    .line 350
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "cpInfo":Landroid/content/pm/ProviderInfo;
    :cond_c
    :goto_1
    move v1, v10

    .line 353
    goto/16 :goto_0

    .line 346
    :catch_0
    move-exception v8

    .line 347
    .local v8, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v1, "AppDirectedSms"

    const-string v2, "Exception = "

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 349
    if-eqz v7, :cond_c

    .line 350
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 349
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_d

    .line 350
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v1
.end method

.method private getPackageSignatures(Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 5
    .param p1, "pkName"    # Ljava/lang/String;

    .prologue
    .line 252
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 253
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AppDirectedSms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get the permission package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPrefixLen()I
    .locals 4

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 156
    .local v1, "len":I
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10406f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "adsPrefix":Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mSmsBody:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 162
    :cond_0
    return v1
.end method

.method private getSmsBody([[BLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "pdus"    # [[B
    .param p2, "smsFormat"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 179
    array-length v3, p1

    .line 180
    .local v3, "pduCount":I
    new-array v2, v3, [Landroid/telephony/SmsMessage;

    .line 181
    .local v2, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 182
    aget-object v5, p1, v1

    invoke-static {v5, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v5

    aput-object v5, v2, v1

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_0
    aget-object v5, v2, v6

    if-eqz v5, :cond_1

    aget-object v5, v2, v6

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mSmsFrom:Ljava/lang/String;

    .line 188
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v0, "body":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 191
    .local v4, "sms":Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    .line 192
    aget-object v4, v2, v1

    .line 193
    if-nez v4, :cond_2

    .line 191
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 197
    :cond_2
    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 200
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getSmsParameters()Ljava/lang/String;
    .locals 6

    .prologue
    .line 166
    const/4 v1, 0x0

    .line 167
    .local v1, "parameters":Ljava/lang/String;
    const/4 v0, 0x0

    .line 169
    .local v0, "index":I
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mSmsBody:Ljava/lang/String;

    iget v4, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mSmsPrefixLen:I

    iget-object v5, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mAppPrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "temp":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 171
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 172
    return-object v1
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 302
    const/4 v2, 0x0

    .line 304
    .local v2, "preLoadedSystemApp":Z
    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 305
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 306
    const/4 v2, 0x1

    .line 311
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/motorola/android/internal/telephony/AppDirectedSms;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "AppDirectedSms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Is Preloaded App? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_1
    return v2

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "AppDirectedSms"

    const-string v4, "Package Name Not Found:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isTargetApplication(Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 266
    if-nez p1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v4

    .line 270
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 272
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 273
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mSmsBody:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    iget v8, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mSmsPrefixLen:I

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 275
    sget-boolean v6, Lcom/motorola/android/internal/telephony/AppDirectedSms;->DBG:Z

    if-eqz v6, :cond_2

    const-string v6, "AppDirectedSms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_2
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    iput-object v6, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mAppPrefix:Ljava/lang/String;

    move v4, v5

    .line 277
    goto :goto_0

    .line 279
    :cond_3
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 280
    .local v2, "metaData":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 281
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mKeyAppPrefix:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "metaString":Ljava/lang/String;
    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mSmsBody:Ljava/lang/String;

    iget v7, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mSmsPrefixLen:I

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 284
    iput-object v3, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mAppPrefix:Ljava/lang/String;

    .line 285
    sget-boolean v6, Lcom/motorola/android/internal/telephony/AppDirectedSms;->DBG:Z

    if-eqz v6, :cond_4

    const-string v6, "AppDirectedSms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found meta tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mKeyAppPrefix:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move v4, v5

    .line 286
    goto :goto_0

    .line 291
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "metaData":Landroid/os/Bundle;
    .end local v3    # "metaString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "AppDirectedSms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Application NOT FOUND: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchAppDirectedSms(Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 143
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mActionDirectedSmsReceived:Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/AppDirectedSms;->getSmsParameters()Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, "smsParameters":Ljava/lang/String;
    const-string v0, "parameters"

    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v0, "originator"

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mSmsFrom:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    sget-boolean v0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "AppDirectedSms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS From: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mSmsFrom:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 151
    return-void
.end method

.method public getValidatedPackage()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 111
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mSmsBody:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 113
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mActionDirectedSmsReceived:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 115
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_1

    .line 116
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 117
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 119
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/AppDirectedSms;->isTargetApplication(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 120
    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/AppDirectedSms;->checkVZWAVS(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/AppDirectedSms;->isSystemApp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/AppDirectedSms;->checkSignature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/AppDirectedSms;->checkPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_2
    return-object v3

    .line 115
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 116
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 128
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_3
    sget-boolean v4, Lcom/motorola/android/internal/telephony/AppDirectedSms;->DBG:Z

    if-eqz v4, :cond_4

    const-string v4, "AppDirectedSms"

    const-string v5, "NOT Found valid Application."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public hasPrefixInSms()Z
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, "ret":Z
    iget v1, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mSmsPrefixLen:I

    if-eqz v1, :cond_0

    .line 136
    const/4 v0, 0x1

    .line 138
    :cond_0
    return v0
.end method
