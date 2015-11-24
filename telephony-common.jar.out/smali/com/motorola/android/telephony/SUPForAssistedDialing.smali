.class public final Lcom/motorola/android/telephony/SUPForAssistedDialing;
.super Ljava/lang/Object;
.source "SUPForAssistedDialing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/SUPForAssistedDialing$1;,
        Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_MOT_QUIT:I = 0x2

.field private static final EVENT_MOT_SETTING_UPDATE:I = 0x1

.field public static final mADLock:Ljava/lang/Object;

.field private static mCurrentMcc:I

.field static mCurrentSid:I

.field private static mMccTable:Lcom/motorola/android/telephony/MCCTables;

.field private static sIsCdmaVoiceCallCapable:Z


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    .line 28
    sput v1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentMcc:I

    .line 29
    sput v1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->sIsCdmaVoiceCallCapable:Z

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "SUPForAssistedDialing"

    iput-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->LOG_TAG:Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 118
    new-instance v0, Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/MCCTables;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    .line 119
    new-instance v0, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;-><init>(Lcom/motorola/android/telephony/SUPForAssistedDialing;Lcom/motorola/android/telephony/SUPForAssistedDialing$1;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    .line 120
    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->start()V

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/telephony/SUPForAssistedDialing;Lcom/motorola/android/telephony/MCCEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/telephony/SUPForAssistedDialing;
    .param p1, "x1"    # Lcom/motorola/android/telephony/MCCEntry;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->updateMotoSettings(Lcom/motorola/android/telephony/MCCEntry;)V

    return-void
.end method

.method public static isCdmaVoiceCallCapable()Z
    .locals 1

    .prologue
    .line 374
    sget-boolean v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->sIsCdmaVoiceCallCapable:Z

    return v0
.end method

.method public static setCdmaVoiceCallisCapable(Z)V
    .locals 0
    .param p0, "isCapable"    # Z

    .prologue
    .line 370
    sput-boolean p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->sIsCdmaVoiceCallCapable:Z

    .line 371
    return-void
.end method

.method private updateCountryDetailsFromUserTable()V
    .locals 2

    .prologue
    .line 352
    sget-object v1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v1}, Lcom/motorola/android/telephony/MCCTables;->getCountryFromUserTable()Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    .line 354
    .local v0, "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    if-eqz v0, :cond_0

    .line 356
    iget-object v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v1, v0}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->update(Lcom/motorola/android/telephony/MCCEntry;)V

    .line 360
    :cond_0
    return-void
.end method

.method private updateCountryDetailsFromVZWTable(I)V
    .locals 2
    .param p1, "mcc"    # I

    .prologue
    .line 336
    sget-object v1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v1, p1}, Lcom/motorola/android/telephony/MCCTables;->getCountryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    .line 338
    .local v0, "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    if-eqz v0, :cond_0

    .line 340
    iget-object v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v1, v0}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->update(Lcom/motorola/android/telephony/MCCEntry;)V

    .line 344
    :cond_0
    return-void
.end method

.method private updateMotoSettings(Lcom/motorola/android/telephony/MCCEntry;)V
    .locals 4
    .param p1, "entry"    # Lcom/motorola/android/telephony/MCCEntry;

    .prologue
    .line 88
    iget-object v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 97
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    monitor-enter v2

    .line 98
    :try_start_0
    const-string v1, "cur_country_mcc"

    iget v3, p1, Lcom/motorola/android/telephony/MCCEntry;->MCC:I

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    const-string v1, "cur_country_code"

    iget v3, p1, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    const-string v1, "cur_country_name"

    iget-object v3, p1, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 104
    const-string v1, "cur_country_idd"

    iget-object v3, p1, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 106
    const-string v1, "cur_country_ndd"

    iget-object v3, p1, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 108
    const-string v1, "cur_country_area_code"

    iget-object v3, p1, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    const-string v1, "cur_country_mdn_len"

    iget v3, p1, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    monitor-exit v2

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addUnknownCountry(Lcom/motorola/android/telephony/MCCEntry;)V
    .locals 1
    .param p1, "entry"    # Lcom/motorola/android/telephony/MCCEntry;

    .prologue
    .line 282
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 286
    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->addUnknownCountry(Lcom/motorola/android/telephony/MCCEntry;)V

    .line 289
    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->update(Lcom/motorola/android/telephony/MCCEntry;)V

    goto :goto_0
.end method

.method public checkAndUpdateUnknownMcc(IIII)I
    .locals 5
    .param p1, "mcc"    # I
    .param p2, "sid"    # I
    .param p3, "tz"    # I
    .param p4, "DSTFlag"    # I

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 198
    .local v0, "isUnknownMccNotified":I
    sput p1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentMcc:I

    .line 200
    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v3, :cond_0

    .line 201
    const-string v3, "SUPForAssistedDialing"

    const-string v4, " MCC lookup table not initialized"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 253
    .end local v0    # "isUnknownMccNotified":I
    .local v1, "isUnknownMccNotified":I
    :goto_0
    return v1

    .line 206
    .end local v1    # "isUnknownMccNotified":I
    .restart local v0    # "isUnknownMccNotified":I
    :cond_0
    iget-object v3, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    invoke-virtual {v3, p2, p3, p4}, Lcom/android/internal/telephony/ServiceStateTracker;->getMcc(III)I

    move-result v2

    .line 210
    .local v2, "tempMcc":I
    if-lez v2, :cond_1

    .line 212
    const/4 v0, 0x1

    .line 213
    sput p2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    .line 215
    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3}, Lcom/motorola/android/telephony/MCCTables;->removeUnknownCountry()V

    .line 216
    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->updateCountryDetailsFromVZWTable(I)V

    :goto_1
    move v1, v0

    .line 253
    .end local v0    # "isUnknownMccNotified":I
    .restart local v1    # "isUnknownMccNotified":I
    goto :goto_0

    .line 219
    .end local v1    # "isUnknownMccNotified":I
    .restart local v0    # "isUnknownMccNotified":I
    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 223
    sget v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    if-ne v3, p2, :cond_2

    .line 225
    const/4 v0, 0x2

    goto :goto_1

    .line 232
    :cond_2
    const/4 v0, 0x1

    .line 233
    sput p2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    .line 234
    invoke-direct {p0}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->updateCountryDetailsFromUserTable()V

    goto :goto_1

    .line 241
    :cond_3
    sget v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    if-eq v3, p2, :cond_4

    .line 245
    sput p2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    .line 248
    :cond_4
    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3}, Lcom/motorola/android/telephony/MCCTables;->removeUnknownCountry()V

    .line 249
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->quit()V

    .line 365
    return-void
.end method

.method public getAllCountryList()[Lcom/motorola/android/telephony/MCCEntry;
    .locals 1

    .prologue
    .line 260
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 264
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/MCCTables;->getAllCountryListInDb()[Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    goto :goto_0
.end method

.method public getEntryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;
    .locals 1
    .param p1, "mcc"    # I

    .prologue
    .line 271
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 273
    const/4 v0, 0x0

    .line 275
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->getCountryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    goto :goto_0
.end method

.method public isCtryNameExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "countryName"    # Ljava/lang/String;

    .prologue
    .line 322
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 324
    const/4 v0, 0x0

    .line 327
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->isCtryNameExist(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isUnknownCountryExist()Z
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 311
    const/4 v0, 0x0

    .line 314
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/MCCTables;->isUnknownCountryExist()Z

    move-result v0

    goto :goto_0
.end method

.method public removeUnknownCountry()V
    .locals 1

    .prologue
    .line 297
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 302
    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/MCCTables;->removeUnknownCountry()V

    goto :goto_0
.end method

.method public updateCurrentCountryDetails(IIII)I
    .locals 5
    .param p1, "mcc"    # I
    .param p2, "sid"    # I
    .param p3, "tz"    # I
    .param p4, "DSTFlag"    # I

    .prologue
    .line 128
    const/4 v0, 0x1

    .line 131
    .local v0, "isUnknownMccNotified":I
    const/4 v2, 0x0

    .line 141
    .local v2, "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v3, :cond_0

    move v1, v0

    .line 186
    .end local v0    # "isUnknownMccNotified":I
    .local v1, "isUnknownMccNotified":I
    :goto_0
    return v1

    .line 148
    .end local v1    # "isUnknownMccNotified":I
    .restart local v0    # "isUnknownMccNotified":I
    :cond_0
    sget v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentMcc:I

    if-ne v3, p1, :cond_1

    sget v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    if-ne v3, p2, :cond_1

    .line 150
    const/4 v0, 0x2

    move v1, v0

    .line 151
    .end local v0    # "isUnknownMccNotified":I
    .restart local v1    # "isUnknownMccNotified":I
    goto :goto_0

    .line 154
    .end local v1    # "isUnknownMccNotified":I
    .restart local v0    # "isUnknownMccNotified":I
    :cond_1
    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3, p1}, Lcom/motorola/android/telephony/MCCTables;->getCountryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v2

    .line 156
    if-eqz v2, :cond_3

    .line 160
    sget v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentMcc:I

    if-eq p1, v3, :cond_2

    .line 161
    const/4 v0, 0x1

    .line 162
    sput p1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentMcc:I

    .line 163
    const-string v3, "SUPForAssistedDialing"

    const-string v4, "Updating the Current country"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3}, Lcom/motorola/android/telephony/MCCTables;->removeUnknownCountry()V

    .line 166
    iget-object v3, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v3, v2}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->update(Lcom/motorola/android/telephony/MCCEntry;)V

    .line 173
    :goto_1
    sput p2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    :goto_2
    move v1, v0

    .line 186
    .end local v0    # "isUnknownMccNotified":I
    .restart local v1    # "isUnknownMccNotified":I
    goto :goto_0

    .line 171
    .end local v1    # "isUnknownMccNotified":I
    .restart local v0    # "isUnknownMccNotified":I
    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    .line 182
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->checkAndUpdateUnknownMcc(IIII)I

    move-result v0

    goto :goto_2
.end method
