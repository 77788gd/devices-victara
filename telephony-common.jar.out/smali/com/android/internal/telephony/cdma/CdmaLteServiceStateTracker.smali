.class public Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;
.super Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.source "CdmaLteServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$1;
    }
.end annotation


# static fields
.field private static final EVENT_ALL_DATA_DISCONNECTED:I = 0x3e9


# instance fields
.field private mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

.field private final mCellInfoLte:Landroid/telephony/CellInfoLte;

.field private mColdSimDetected:Z

.field private mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

.field private mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMALTEPhone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    .prologue
    .line 81
    new-instance v0, Landroid/telephony/CellInfoLte;

    invoke-direct {v0}, Landroid/telephony/CellInfoLte;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/telephony/CellInfo;)V

    .line 75
    new-instance v0, Landroid/telephony/CellIdentityLte;

    invoke-direct {v0}, Landroid/telephony/CellIdentityLte;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 76
    new-instance v0, Landroid/telephony/CellIdentityLte;

    invoke-direct {v0}, Landroid/telephony/CellIdentityLte;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mColdSimDetected:Z

    .line 82
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v0, Landroid/telephony/CellInfoLte;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v0, Landroid/telephony/CellInfoLte;

    new-instance v1, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v1}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    invoke-virtual {v0, v1}, Landroid/telephony/CellInfoLte;->setCellSignalStrength(Landroid/telephony/CellSignalStrengthLte;)V

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v0, Landroid/telephony/CellInfoLte;

    new-instance v1, Landroid/telephony/CellIdentityLte;

    invoke-direct {v1}, Landroid/telephony/CellIdentityLte;-><init>()V

    invoke-virtual {v0, v1}, Landroid/telephony/CellInfoLte;->setCellIdentity(Landroid/telephony/CellIdentityLte;)V

    .line 89
    const-string v0, "CdmaLteServiceStateTracker Constructors"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private broadcastColdSimIntent(Z)V
    .locals 3
    .param p1, "isColdSim"    # Z

    .prologue
    .line 314
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.intent.action.cold_sim_detected"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 316
    const-string v1, "detected"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_COLD_SIM_DETECTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 319
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 320
    return-void
.end method

.method private detectColdSim(III)V
    .locals 1
    .param p1, "regState"    # I
    .param p2, "rejCode"    # I
    .param p3, "type"    # I

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mColdSimDetected:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isRegistrationDenied(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mColdSimDetected:Z

    .line 303
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mColdSimDetected:Z

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->broadcastColdSimIntent(Z)V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mColdSimDetected:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->regCodeToServiceState(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mColdSimDetected:Z

    .line 308
    const-string v0, "cold sim is activated, get lte service"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 309
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mColdSimDetected:Z

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->broadcastColdSimIntent(Z)V

    goto :goto_0
.end method

.method private isInHomeSidNid(II)Z
    .locals 5
    .param p1, "sid"    # I
    .param p2, "nid"    # I

    .prologue
    const v4, 0xffff

    const/4 v1, 0x1

    .line 836
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isSidsAllZeros()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 853
    :cond_0
    :goto_0
    return v1

    .line 839
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeSystemId:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 841
    if-eqz p1, :cond_0

    .line 843
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeSystemId:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 846
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeSystemId:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    aget v2, v2, v0

    if-eq v2, v4, :cond_0

    if-eqz p2, :cond_0

    if-eq p2, v4, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    aget v2, v2, v0

    if-eq v2, p2, :cond_0

    .line 843
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 853
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRegistrationDenied(I)Z
    .locals 2
    .param p1, "regState"    # I

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "regState is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 292
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 293
    :cond_0
    const-string v0, "registration is denied"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 294
    const/4 v0, 0x1

    .line 296
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForSimRecordsLoaded(Landroid/os/Handler;)V

    .line 95
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dispose()V

    .line 96
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 967
    const-string v0, "CdmaLteServiceStateTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 968
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaLtePhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 970
    return-void
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 863
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRilVersion()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 864
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 872
    :goto_0
    return-object v0

    .line 866
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 868
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v2

    .line 869
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllCellInfo: arrayList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 870
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .prologue
    .line 900
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getPhoneId()I

    move-result v0

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 104
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    if-nez v4, :cond_0

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " while being destroyed. Ignoring."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 165
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 111
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 163
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 113
    :sswitch_0
    const-string v4, "handleMessage EVENT_POLL_STATE_GPRS"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 114
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 115
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 118
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updatePhoneObject()V

    .line 119
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v3, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 120
    .local v3, "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    if-eqz v3, :cond_2

    .line 122
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200e0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 125
    .local v2, "enableMdnMinByConfig":Z
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->isProvisioned()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 126
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 127
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMin()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mMin:Ljava/lang/String;

    .line 128
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->getSid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->getNid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->parseSidNid(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->getPrlVersion()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 130
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIsMinInfoReady:Z

    .line 136
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateOtaspState()V

    .line 140
    .end local v2    # "enableMdnMinByConfig":Z
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->prepareEri()V

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->pollState()V

    goto :goto_0

    .line 131
    .restart local v2    # "enableMdnMinByConfig":Z
    :cond_3
    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 133
    iget-object v4, v3, Lcom/android/internal/telephony/uicc/RuimRecords;->mUnProvisionedMin:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mMin:Ljava/lang/String;

    goto :goto_1

    .line 147
    .end local v2    # "enableMdnMinByConfig":Z
    .end local v3    # "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updatePhoneObject()V

    goto/16 :goto_0

    .line 150
    :sswitch_3
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 151
    .local v1, "dds":I
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v4

    invoke-virtual {v4, v1, p0}, Lcom/android/internal/telephony/ProxyController;->unregisterForAllDataDisconnected(ILandroid/os/Handler;)V

    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz v4, :cond_4

    .line 154
    const-string v4, "EVENT_ALL_DATA_DISCONNECTED, turn radio off now."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->hangupAndPowerOff()V

    .line 156
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 160
    :goto_2
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 158
    :cond_4
    :try_start_1
    const-string v4, "EVENT_ALL_DATA_DISCONNECTED is stale"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 111
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x10 -> :sswitch_2
        0x1b -> :sswitch_1
        0x3e9 -> :sswitch_3
    .end sparse-switch
.end method

.method protected handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .locals 17
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 172
    const/4 v1, 0x5

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 173
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    move-object v14, v1

    check-cast v14, [Ljava/lang/String;

    .line 175
    .local v14, "states":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handlePollStateResultMessage: EVENT_POLL_STATE_GPRS states.length="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v16, " states="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 179
    const/4 v15, 0x0

    .line 180
    .local v15, "type":I
    const/4 v12, -0x1

    .line 181
    .local v12, "regState":I
    const/4 v13, -0x1

    .line 183
    .local v13, "rejCode":I
    array-length v1, v14

    if-lez v1, :cond_2

    .line 185
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v14, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 188
    array-length v1, v14

    const/16 v16, 0x4

    move/from16 v0, v16

    if-lt v1, v0, :cond_0

    const/4 v1, 0x3

    aget-object v1, v14, v1

    if-eqz v1, :cond_0

    .line 189
    const/4 v1, 0x3

    aget-object v1, v14, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 193
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isRegistrationDenied(I)Z

    move-result v1

    if-eqz v1, :cond_1

    array-length v1, v14

    const/16 v16, 0x5

    move/from16 v0, v16

    if-lt v1, v0, :cond_1

    const/4 v1, 0x4

    aget-object v1, v14, v1

    if-eqz v1, :cond_1

    .line 194
    const/4 v1, 0x4

    aget-object v1, v14, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 202
    :cond_1
    :goto_0
    array-length v1, v14

    const/16 v16, 0xa

    move/from16 v0, v16

    if-lt v1, v0, :cond_2

    .line 209
    const/4 v11, 0x0

    .line 212
    .local v11, "operatorNumeric":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    .line 213
    const/4 v1, 0x0

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v11, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 226
    .local v2, "mcc":I
    :goto_1
    const/4 v1, 0x3

    :try_start_2
    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v3

    .line 236
    .local v3, "mnc":I
    :goto_2
    const/4 v1, 0x6

    :try_start_3
    aget-object v1, v14, v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result v6

    .line 243
    .local v6, "tac":I
    :goto_3
    const/4 v1, 0x7

    :try_start_4
    aget-object v1, v14, v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result v5

    .line 250
    .local v5, "pci":I
    :goto_4
    const/16 v1, 0x8

    :try_start_5
    aget-object v1, v14, v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-result v4

    .line 257
    .local v4, "eci":I
    :goto_5
    const/16 v1, 0x9

    :try_start_6
    aget-object v1, v14, v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-result v7

    .line 264
    .local v7, "csgid":I
    :goto_6
    new-instance v1, Landroid/telephony/CellIdentityLte;

    invoke-direct/range {v1 .. v6}, Landroid/telephony/CellIdentityLte;-><init>(IIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handlePollStateResultMessage: mNewLteCellIdentity="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 272
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v4    # "eci":I
    .end local v5    # "pci":I
    .end local v6    # "tac":I
    .end local v7    # "csgid":I
    .end local v11    # "operatorNumeric":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v15}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 273
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->regCodeToServiceState(I)I

    move-result v8

    .line 274
    .local v8, "dataRegState":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v8}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handlPollStateResultMessage: CdmaLteSST setDataRegState="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v16, " regState="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v16, " dataRadioTechnology="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 283
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v15}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->detectColdSim(III)V

    .line 287
    .end local v8    # "dataRegState":I
    .end local v12    # "regState":I
    .end local v13    # "rejCode":I
    .end local v14    # "states":[Ljava/lang/String;
    .end local v15    # "type":I
    :goto_7
    return-void

    .line 198
    .restart local v12    # "regState":I
    .restart local v13    # "rejCode":I
    .restart local v14    # "states":[Ljava/lang/String;
    .restart local v15    # "type":I
    :catch_0
    move-exception v10

    .line 199
    .local v10, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handlePollStateResultMessage: error parsing GprsRegistrationState: "

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    .restart local v11    # "operatorNumeric":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 216
    .local v9, "e":Ljava/lang/Exception;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    .line 217
    const/4 v1, 0x0

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v11, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-result v2

    .restart local v2    # "mcc":I
    goto/16 :goto_1

    .line 218
    .end local v2    # "mcc":I
    :catch_2
    move-exception v10

    .line 219
    .local v10, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handlePollStateResultMessage: bad mcc operatorNumeric="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v16, " ex="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 221
    const-string v11, ""

    .line 222
    const v2, 0x7fffffff

    .restart local v2    # "mcc":I
    goto/16 :goto_1

    .line 227
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    .line 228
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handlePollStateResultMessage: bad mnc operatorNumeric="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v16, " e="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 230
    const v3, 0x7fffffff

    .restart local v3    # "mnc":I
    goto/16 :goto_2

    .line 237
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v9

    .line 238
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handlePollStateResultMessage: bad tac states[6]="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v16, 0x6

    aget-object v16, v14, v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v16, " e="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 240
    const v6, 0x7fffffff

    .restart local v6    # "tac":I
    goto/16 :goto_3

    .line 244
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v9

    .line 245
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handlePollStateResultMessage: bad pci states[7]="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v16, 0x7

    aget-object v16, v14, v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v16, " e="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 247
    const v5, 0x7fffffff

    .restart local v5    # "pci":I
    goto/16 :goto_4

    .line 251
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v9

    .line 252
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handlePollStateResultMessage: bad eci states[8]="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v16, 0x8

    aget-object v16, v14, v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v16, " e="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 254
    const v4, 0x7fffffff

    .restart local v4    # "eci":I
    goto/16 :goto_5

    .line 258
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v9

    .line 262
    .restart local v9    # "e":Ljava/lang/Exception;
    const v7, 0x7fffffff

    .restart local v7    # "csgid":I
    goto/16 :goto_6

    .line 285
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v4    # "eci":I
    .end local v5    # "pci":I
    .end local v6    # "tac":I
    .end local v7    # "csgid":I
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "operatorNumeric":Ljava/lang/String;
    .end local v12    # "regState":I
    .end local v13    # "rejCode":I
    .end local v14    # "states":[Ljava/lang/String;
    .end local v15    # "type":I
    :cond_3
    invoke-super/range {p0 .. p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V

    goto/16 :goto_7
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 817
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 824
    :goto_0
    return v0

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v2, 0xe

    if-ne v0, v2, :cond_1

    .line 820
    const-string v0, "ro.ril.svlte1x"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 821
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/4 v2, 0x6

    if-le v0, v2, :cond_2

    .line 822
    const-string v0, "ro.ril.svdo"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 824
    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 957
    const-string v0, "CdmaSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaLteSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 962
    const-string v0, "CdmaSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaLteSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    return-void
.end method

.method protected onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "isGsm"    # Z

    .prologue
    const/16 v4, 0xe

    .line 787
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 791
    const/4 p2, 0x0

    .line 793
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    move-result v1

    .line 795
    .local v1, "ssChanged":Z
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v3

    .line 796
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 797
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/telephony/CellInfoLte;->setTimeStamp(J)V

    .line 798
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/telephony/CellInfoLte;->setTimeStampType(I)V

    .line 799
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    const v5, 0x7fffffff

    invoke-virtual {v2, v4, v5}, Landroid/telephony/CellSignalStrengthLte;->initialize(Landroid/telephony/SignalStrength;I)V

    .line 802
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 803
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 804
    .local v0, "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/PhoneBase;->notifyCellInfo(Ljava/util/List;)V

    .line 807
    .end local v0    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    :cond_2
    monitor-exit v3

    .line 808
    return v1

    .line 807
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected onUpdateIccAvailability()V
    .locals 3

    .prologue
    .line 879
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->onUpdateIccAvailability()V

    .line 881
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mColdSimDetected:Z

    if-eqz v1, :cond_1

    .line 882
    const/4 v0, 0x0

    .line 883
    .local v0, "resetColdSim":Z
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v1, :cond_2

    .line 884
    const-string v1, "uicc application is null, reset cold sim"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 885
    const/4 v0, 0x1

    .line 890
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 891
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mColdSimDetected:Z

    .line 892
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mColdSimDetected:Z

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->broadcastColdSimIntent(Z)V

    .line 895
    .end local v0    # "resetColdSim":Z
    :cond_1
    return-void

    .line 886
    .restart local v0    # "resetColdSim":Z
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v2, :cond_0

    .line 887
    const-string v1, "icc card is absent, reset cold sim"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 888
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pollState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 325
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    aput v3, v0, v3

    .line 328
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 367
    :goto_0
    return-void

    .line 330
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 332
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 333
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 339
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 341
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 342
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    .line 344
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected pollStateDone()V
    .locals 58

    .prologue
    .line 371
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "pollStateDone: lte 1 ss=["

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, "] newSS=["

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, "]"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isMccMncMarkedAsNonRoaming(Ljava/lang/String;)Z

    move-result v52

    if-nez v52, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v53

    invoke-virtual/range {v52 .. v53}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isSidMarkedAsNonRoaming(I)Z

    move-result v52

    if-eqz v52, :cond_2e

    .line 375
    :cond_0
    const-string v52, "pollStateDone: override - marked as non-roaming."

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    const/16 v53, 0x1

    invoke-virtual/range {v52 .. v53}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    .line 388
    :cond_1
    :goto_0
    sget-boolean v52, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v52, :cond_2

    const-string v52, "telephony.test.forceRoaming"

    const/16 v53, 0x0

    invoke-static/range {v52 .. v53}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v52

    if-eqz v52, :cond_2

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    const/16 v53, 0x1

    invoke-virtual/range {v52 .. v53}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    const/16 v53, 0x1

    invoke-virtual/range {v52 .. v53}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 393
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v52

    if-eqz v52, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v52

    if-nez v52, :cond_30

    const/16 v29, 0x1

    .line 398
    .local v29, "hasRegistered":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v52

    if-nez v52, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v52

    if-eqz v52, :cond_31

    const/16 v21, 0x1

    .line 401
    .local v21, "hasDeregistered":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v52

    if-eqz v52, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v52

    if-nez v52, :cond_32

    const/4 v14, 0x1

    .line 405
    .local v14, "hasCdmaDataConnectionAttached":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v52

    if-nez v52, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v52

    if-eqz v52, :cond_33

    const/16 v16, 0x1

    .line 409
    .local v16, "hasCdmaDataConnectionDetached":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v53

    move/from16 v0, v52

    move/from16 v1, v53

    if-eq v0, v1, :cond_34

    const/4 v15, 0x1

    .line 412
    .local v15, "hasCdmaDataConnectionChanged":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v53

    move/from16 v0, v52

    move/from16 v1, v53

    if-eq v0, v1, :cond_35

    const/16 v30, 0x1

    .line 415
    .local v30, "hasVoiceRadioTechnologyChanged":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v53

    move/from16 v0, v52

    move/from16 v1, v53

    if-eq v0, v1, :cond_36

    const/16 v18, 0x1

    .line 418
    .local v18, "hasDataRadioTechnologyChanged":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_37

    const/16 v17, 0x1

    .line 420
    .local v17, "hasChanged":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v52

    if-nez v52, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v52

    if-eqz v52, :cond_38

    const/16 v32, 0x1

    .line 422
    .local v32, "hasVoiceRoamingOn":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v52

    if-eqz v52, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v52

    if-nez v52, :cond_39

    const/16 v31, 0x1

    .line 425
    .local v31, "hasVoiceRoamingOff":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getState()I

    move-result v52

    if-nez v52, :cond_3a

    const/16 v34, 0x1

    .line 428
    .local v34, "isValidPrevRoam":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getInternationalRoaming()Z

    move-result v41

    .line 429
    .local v41, "prevIntlRoaming":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v40

    .line 431
    .local v40, "prevDataRoaming":Z
    const/16 v20, 0x0

    .line 433
    .local v20, "hasDataRoamingOn":Z
    const/16 v19, 0x0

    .line 435
    .local v19, "hasDataRoamingOff":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIsEnhancedDataRoaming:Z

    move/from16 v52, v0

    if-nez v52, :cond_3

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v52

    if-nez v52, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v52

    if-eqz v52, :cond_3b

    const/16 v20, 0x1

    .line 438
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v52

    if-eqz v52, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v52

    if-nez v52, :cond_3c

    const/16 v19, 0x1

    .line 442
    :cond_3
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Landroid/telephony/cdma/CdmaCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_3d

    const/16 v26, 0x1

    .line 444
    .local v26, "hasLocationChanged":Z
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v52

    if-nez v52, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v52

    const/16 v53, 0xe

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v52

    const/16 v53, 0xd

    move/from16 v0, v52

    move/from16 v1, v53

    if-eq v0, v1, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v52

    const/16 v53, 0xd

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v52

    const/16 v53, 0xe

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_3e

    :cond_5
    const/4 v12, 0x1

    .line 451
    .local v12, "has4gHandoff":Z
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v52

    const/16 v53, 0xe

    move/from16 v0, v52

    move/from16 v1, v53

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v52

    const/16 v53, 0xd

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_3f

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v52

    const/16 v53, 0xe

    move/from16 v0, v52

    move/from16 v1, v53

    if-eq v0, v1, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v52

    const/16 v53, 0xd

    move/from16 v0, v52

    move/from16 v1, v53

    if-eq v0, v1, :cond_3f

    const/16 v28, 0x1

    .line 457
    .local v28, "hasMultiApnSupport":Z
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v52

    const/16 v53, 0x4

    move/from16 v0, v52

    move/from16 v1, v53

    if-lt v0, v1, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v52

    const/16 v53, 0x8

    move/from16 v0, v52

    move/from16 v1, v53

    if-gt v0, v1, :cond_40

    const/16 v27, 0x1

    .line 461
    .local v27, "hasLostMultiApnSupport":Z
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v53

    move/from16 v0, v52

    move/from16 v1, v53

    if-eq v0, v1, :cond_41

    const/16 v37, 0x1

    .line 463
    .local v37, "needNotifyData":Z
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v52

    const-string v53, "phone"

    invoke-virtual/range {v52 .. v53}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/telephony/TelephonyManager;

    .line 467
    .local v50, "tm":Landroid/telephony/TelephonyManager;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "pollStateDone: hasRegistered="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " hasDeegistered="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " hasCdmaDataConnectionAttached="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " hasCdmaDataConnectionDetached="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " hasCdmaDataConnectionChanged="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " hasVoiceRadioTechnologyChanged= "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " hasDataRadioTechnologyChanged="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " hasChanged="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " hasVoiceRoamingOn="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " hasVoiceRoamingOff="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " hasDataRoamingOn="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " hasDataRoamingOff="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " hasLocationChanged="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " has4gHandoff = "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " hasMultiApnSupport="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " hasLostMultiApnSupport="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v53

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v53

    move/from16 v0, v52

    move/from16 v1, v53

    if-eq v0, v1, :cond_8

    .line 488
    :cond_7
    const v52, 0xc3c4

    const/16 v53, 0x4

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    invoke-static/range {v52 .. v53}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 493
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v51, v0

    .line 494
    .local v51, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 495
    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v47, v0

    .line 500
    .local v47, "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 501
    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 505
    if-eqz v30, :cond_9

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updatePhoneObject()V

    .line 509
    :cond_9
    if-eqz v18, :cond_a

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v53

    move-object/from16 v0, v50

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    .line 512
    const/16 v52, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 515
    :cond_a
    if-eqz v29, :cond_b

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 519
    :cond_b
    if-eqz v17, :cond_15

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v52, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->getPhoneId()I

    move-result v53

    invoke-virtual/range {v52 .. v53}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v52

    if-nez v52, :cond_42

    const/4 v13, 0x0

    .line 522
    .local v13, "hasBrandOverride":Z
    :goto_13
    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v52, v0

    invoke-interface/range {v52 .. v52}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v52

    if-eqz v52, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isEriFileLoaded()Z

    move-result v52

    if-eqz v52, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v52

    const/16 v53, 0xe

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    const v53, 0x112008f

    invoke-virtual/range {v52 .. v53}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v52

    if-eqz v52, :cond_e

    .line 527
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v10

    .line 530
    .local v10, "eriText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v52

    if-nez v52, :cond_44

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v10

    .line 545
    :cond_d
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v0, v10}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 548
    .end local v10    # "eriText":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v52, v0

    if-eqz v52, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v52

    sget-object v53, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v52, v0

    if-eqz v52, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v52

    if-nez v52, :cond_f

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/RuimRecords;->getCsimSpnDisplayCondition()Z

    move-result v44

    .line 556
    .local v44, "showSpn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v33

    .line 559
    .local v33, "iconIndex":I
    if-eqz v44, :cond_47

    const/16 v46, 0x1

    .line 560
    .local v46, "spnRule":I
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    move/from16 v1, v46

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->adjustRuleIfNeeded(ILandroid/telephony/ServiceState;)I

    move-result v46

    .line 561
    if-eqz v44, :cond_48

    const/16 v52, 0x1

    move/from16 v0, v33

    move/from16 v1, v52

    if-ne v0, v1, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/telephony/ServiceState;->getNetworkId()I

    move-result v53

    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isInHomeSidNid(II)Z

    move-result v52

    if-eqz v52, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v52, v0

    if-eqz v52, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v52

    const/16 v53, 0xe

    move/from16 v0, v52

    move/from16 v1, v53

    if-eq v0, v1, :cond_48

    .line 566
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "Setting PLMN by SPN : "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 580
    .end local v33    # "iconIndex":I
    .end local v44    # "showSpn":Z
    .end local v46    # "spnRule":I
    :cond_f
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    const v53, 0x11200dc

    invoke-virtual/range {v52 .. v53}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v52

    if-eqz v52, :cond_10

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateCdmaOperatorName(Landroid/telephony/ServiceState;)V

    .line 588
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v50

    move/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v52

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v42

    .line 591
    .local v42, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v39

    .line 593
    .local v39, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_11

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v45

    .line 595
    .local v45, "sid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v39

    .line 600
    .end local v45    # "sid":I
    :cond_11
    const-string v52, "sprint"

    const-string v53, "ro.mot.build.customerid"

    const-string v54, "0"

    invoke-static/range {v53 .. v54}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mRegistrationState:I

    move/from16 v52, v0

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v52

    if-nez v52, :cond_12

    .line 603
    const-string v52, "ro.cdma.home.operator.numeric"

    invoke-static/range {v52 .. v52}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 604
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "CDMA SST Set PROPERTY_OPERATOR_NUMERIC to "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 607
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v52

    move-object/from16 v0, v50

    move/from16 v1, v52

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v42

    move-object/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 611
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_49

    .line 612
    const-string v52, "operatorNumeric is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v52

    const-string v53, ""

    move-object/from16 v0, v50

    move/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    .line 614
    const/16 v52, 0x0

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    .line 645
    :cond_13
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v52

    if-nez v52, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v52

    if-eqz v52, :cond_4a

    :cond_14
    const/16 v52, 0x1

    :goto_18
    move-object/from16 v0, v50

    move/from16 v1, v53

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateSpnDisplay()V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v53, v0

    const-string v54, "gsm.operator.isinterroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getInternationalRoaming()Z

    move-result v52

    if-eqz v52, :cond_4b

    const-string v52, "true"

    :goto_19
    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "Broadcasting ServiceState : "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 663
    .end local v13    # "hasBrandOverride":Z
    .end local v39    # "operatorNumeric":Ljava/lang/String;
    .end local v42    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_15
    if-eqz v16, :cond_16

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 667
    :cond_16
    const/4 v9, 0x0

    .line 669
    .local v9, "dataChangedReason":Ljava/lang/String;
    if-nez v15, :cond_17

    if-eqz v18, :cond_18

    .line 670
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 671
    const-string v9, "nwTypeChanged"

    .line 686
    const/16 v37, 0x1

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v52, v0

    const-string v53, "nwTypeChanged"

    invoke-virtual/range {v52 .. v53}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 693
    :cond_18
    if-eqz v37, :cond_19

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 697
    :cond_19
    if-nez v14, :cond_1a

    if-eqz v12, :cond_1b

    .line 698
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 701
    :cond_1b
    if-eqz v32, :cond_1c

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 705
    :cond_1c
    if-eqz v31, :cond_1d

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 709
    :cond_1d
    if-eqz v20, :cond_1e

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 713
    :cond_1e
    if-eqz v19, :cond_1f

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 718
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIsEnhancedDataRoaming:Z

    move/from16 v52, v0

    if-eqz v52, :cond_2a

    .line 719
    const/16 v23, 0x0

    .line 720
    .local v23, "hasDomesticRoamingOn":Z
    const/16 v22, 0x0

    .line 721
    .local v22, "hasDomesticRoamingOff":Z
    const/16 v25, 0x0

    .line 722
    .local v25, "hasInterRoamingOn":Z
    const/16 v24, 0x0

    .line 724
    .local v24, "hasInterRoamingOff":Z
    if-eqz v34, :cond_20

    if-eqz v40, :cond_21

    :cond_20
    if-nez v34, :cond_22

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v52

    if-eqz v52, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getInternationalRoaming()Z

    move-result v52

    if-eqz v52, :cond_23

    :cond_22
    if-eqz v34, :cond_4c

    if-nez v41, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v52

    if-eqz v52, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getInternationalRoaming()Z

    move-result v52

    if-nez v52, :cond_4c

    :cond_23
    const/16 v23, 0x1

    .line 728
    :goto_1a
    if-eqz v34, :cond_24

    if-eqz v41, :cond_25

    :cond_24
    if-nez v34, :cond_4d

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getInternationalRoaming()Z

    move-result v52

    if-eqz v52, :cond_4d

    const/16 v25, 0x1

    .line 731
    :goto_1b
    if-eqz v34, :cond_4e

    if-eqz v40, :cond_4e

    if-nez v41, :cond_4e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v52

    if-eqz v52, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getInternationalRoaming()Z

    move-result v52

    if-eqz v52, :cond_4e

    :cond_26
    const/16 v22, 0x1

    .line 733
    :goto_1c
    if-eqz v34, :cond_4f

    if-eqz v41, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getInternationalRoaming()Z

    move-result v52

    if-nez v52, :cond_4f

    const/16 v24, 0x1

    .line 737
    :goto_1d
    if-eqz v22, :cond_27

    .line 738
    const-string v52, "hasDomesticRoamingOff"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDomesticRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 741
    :cond_27
    if-eqz v24, :cond_28

    .line 742
    const-string v52, "hasInterRoamingOff"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mInterRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 745
    :cond_28
    if-eqz v23, :cond_29

    .line 746
    const-string v52, "hasDomesticRoamingOn"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDomesticRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 749
    :cond_29
    if-eqz v25, :cond_2a

    .line 750
    const-string v52, "hasInterRoamingOn"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mInterRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 756
    .end local v22    # "hasDomesticRoamingOff":Z
    .end local v23    # "hasDomesticRoamingOn":Z
    .end local v24    # "hasInterRoamingOff":Z
    .end local v25    # "hasInterRoamingOn":Z
    :cond_2a
    if-eqz v26, :cond_2b

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    .line 760
    :cond_2b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 761
    .local v6, "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    move-object/from16 v53, v0

    monitor-enter v53

    .line 762
    :try_start_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v8, Landroid/telephony/CellInfoLte;

    .line 764
    .local v8, "cil":Landroid/telephony/CellInfoLte;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v54, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/telephony/CellIdentityLte;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_50

    const/4 v7, 0x1

    .line 765
    .local v7, "cidChanged":Z
    :goto_1e
    if-nez v29, :cond_2c

    if-nez v21, :cond_2c

    if-eqz v7, :cond_2d

    .line 767
    :cond_2c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v54

    const-wide/16 v56, 0x3e8

    mul-long v48, v54, v56

    .line 768
    .local v48, "timeStamp":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v52

    if-nez v52, :cond_51

    const/16 v43, 0x1

    .line 769
    .local v43, "registered":Z
    :goto_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 771
    move/from16 v0, v43

    invoke-virtual {v8, v0}, Landroid/telephony/CellInfoLte;->setRegistered(Z)V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Landroid/telephony/CellInfoLte;->setCellIdentity(Landroid/telephony/CellIdentityLte;)V

    .line 774
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "pollStateDone: hasRegistered="

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v54, " hasDeregistered="

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v54, " cidChanged="

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v54, " mCellInfo="

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    .end local v43    # "registered":Z
    .end local v48    # "timeStamp":J
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/PhoneBase;->notifyCellInfo(Ljava/util/List;)V

    .line 782
    monitor-exit v53
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    return-void

    .line 379
    .end local v6    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .end local v7    # "cidChanged":Z
    .end local v8    # "cil":Landroid/telephony/CellInfoLte;
    .end local v9    # "dataChangedReason":Ljava/lang/String;
    .end local v12    # "has4gHandoff":Z
    .end local v14    # "hasCdmaDataConnectionAttached":Z
    .end local v15    # "hasCdmaDataConnectionChanged":Z
    .end local v16    # "hasCdmaDataConnectionDetached":Z
    .end local v17    # "hasChanged":Z
    .end local v18    # "hasDataRadioTechnologyChanged":Z
    .end local v19    # "hasDataRoamingOff":Z
    .end local v20    # "hasDataRoamingOn":Z
    .end local v21    # "hasDeregistered":Z
    .end local v26    # "hasLocationChanged":Z
    .end local v27    # "hasLostMultiApnSupport":Z
    .end local v28    # "hasMultiApnSupport":Z
    .end local v29    # "hasRegistered":Z
    .end local v30    # "hasVoiceRadioTechnologyChanged":Z
    .end local v31    # "hasVoiceRoamingOff":Z
    .end local v32    # "hasVoiceRoamingOn":Z
    .end local v34    # "isValidPrevRoam":Z
    .end local v37    # "needNotifyData":Z
    .end local v40    # "prevDataRoaming":Z
    .end local v41    # "prevIntlRoaming":Z
    .end local v47    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v50    # "tm":Landroid/telephony/TelephonyManager;
    .end local v51    # "tss":Landroid/telephony/ServiceState;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isMccMncMarkedAsRoaming(Ljava/lang/String;)Z

    move-result v52

    if-nez v52, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v53

    invoke-virtual/range {v52 .. v53}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isSidMarkedAsRoaming(I)Z

    move-result v52

    if-eqz v52, :cond_1

    .line 381
    :cond_2f
    const-string v52, "pollStateDone: override - marked as roaming."

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    const/16 v53, 0x1

    invoke-virtual/range {v52 .. v53}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    const/16 v53, 0x1

    invoke-virtual/range {v52 .. v53}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    goto/16 :goto_0

    .line 395
    :cond_30
    const/16 v29, 0x0

    goto/16 :goto_1

    .line 398
    .restart local v29    # "hasRegistered":Z
    :cond_31
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 401
    .restart local v21    # "hasDeregistered":Z
    :cond_32
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 405
    .restart local v14    # "hasCdmaDataConnectionAttached":Z
    :cond_33
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 409
    .restart local v16    # "hasCdmaDataConnectionDetached":Z
    :cond_34
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 412
    .restart local v15    # "hasCdmaDataConnectionChanged":Z
    :cond_35
    const/16 v30, 0x0

    goto/16 :goto_6

    .line 415
    .restart local v30    # "hasVoiceRadioTechnologyChanged":Z
    :cond_36
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 418
    .restart local v18    # "hasDataRadioTechnologyChanged":Z
    :cond_37
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 420
    .restart local v17    # "hasChanged":Z
    :cond_38
    const/16 v32, 0x0

    goto/16 :goto_9

    .line 422
    .restart local v32    # "hasVoiceRoamingOn":Z
    :cond_39
    const/16 v31, 0x0

    goto/16 :goto_a

    .line 425
    .restart local v31    # "hasVoiceRoamingOff":Z
    :cond_3a
    const/16 v34, 0x0

    goto/16 :goto_b

    .line 436
    .restart local v19    # "hasDataRoamingOff":Z
    .restart local v20    # "hasDataRoamingOn":Z
    .restart local v34    # "isValidPrevRoam":Z
    .restart local v40    # "prevDataRoaming":Z
    .restart local v41    # "prevIntlRoaming":Z
    :cond_3b
    const/16 v20, 0x0

    goto/16 :goto_c

    .line 438
    :cond_3c
    const/16 v19, 0x0

    goto/16 :goto_d

    .line 442
    :cond_3d
    const/16 v26, 0x0

    goto/16 :goto_e

    .line 444
    .restart local v26    # "hasLocationChanged":Z
    :cond_3e
    const/4 v12, 0x0

    goto/16 :goto_f

    .line 451
    .restart local v12    # "has4gHandoff":Z
    :cond_3f
    const/16 v28, 0x0

    goto/16 :goto_10

    .line 457
    .restart local v28    # "hasMultiApnSupport":Z
    :cond_40
    const/16 v27, 0x0

    goto/16 :goto_11

    .line 461
    .restart local v27    # "hasLostMultiApnSupport":Z
    :cond_41
    const/16 v37, 0x0

    goto/16 :goto_12

    .line 520
    .restart local v37    # "needNotifyData":Z
    .restart local v47    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v50    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v51    # "tss":Landroid/telephony/ServiceState;
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v52, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->getPhoneId()I

    move-result v53

    invoke-virtual/range {v52 .. v53}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v52

    if-eqz v52, :cond_43

    const/4 v13, 0x1

    goto/16 :goto_13

    :cond_43
    const/4 v13, 0x0

    goto/16 :goto_13

    .line 532
    .restart local v10    # "eriText":Ljava/lang/String;
    .restart local v13    # "hasBrandOverride":Z
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v52

    const/16 v53, 0x3

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_46

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v52, v0

    if-eqz v52, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v10

    .line 534
    :goto_20
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v52

    if-eqz v52, :cond_d

    .line 537
    const-string v52, "ro.cdma.home.operator.alpha"

    invoke-static/range {v52 .. v52}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_14

    .line 533
    :cond_45
    const/4 v10, 0x0

    goto :goto_20

    .line 539
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v52

    if-eqz v52, :cond_d

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v52

    const v53, 0x10400cb

    invoke-virtual/range {v52 .. v53}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v52

    invoke-interface/range {v52 .. v52}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_14

    .line 559
    .end local v10    # "eriText":Ljava/lang/String;
    .restart local v33    # "iconIndex":I
    .restart local v44    # "showSpn":Z
    :cond_47
    const/16 v46, 0x0

    goto/16 :goto_15

    .line 568
    .restart local v46    # "spnRule":I
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v52

    if-nez v52, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v52

    const/16 v53, 0xe

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_f

    and-int/lit8 v52, v46, 0x1

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_f

    .line 573
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "Setting PLMN by SPN : "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 616
    .end local v33    # "iconIndex":I
    .end local v44    # "showSpn":Z
    .end local v46    # "spnRule":I
    .restart local v39    # "operatorNumeric":Ljava/lang/String;
    .restart local v42    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_49
    const-string v35, ""

    .line 617
    .local v35, "isoCountryCode":Ljava/lang/String;
    const/16 v52, 0x0

    const/16 v53, 0x3

    move-object/from16 v0, v39

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    .line 619
    .local v36, "mcc":Ljava/lang/String;
    const/16 v52, 0x0

    const/16 v53, 0x3

    :try_start_1
    move-object/from16 v0, v39

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v52

    invoke-static/range {v52 .. v52}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v35

    .line 627
    :goto_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v52

    move-object/from16 v0, v50

    move/from16 v1, v52

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    .line 628
    const/16 v52, 0x1

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    .line 630
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setOperatorIdd(Ljava/lang/String;)V

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v52

    invoke-static/range {v52 .. v52}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v38

    .line 635
    .local v38, "networkTypeString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v52

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v35

    move/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setupAssitDialingAndHBPCD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNeedFixZone:Z

    move/from16 v53, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v39

    move-object/from16 v3, v42

    move/from16 v4, v53

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v52

    if-eqz v52, :cond_13

    .line 641
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->fixTimeZone(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 621
    .end local v38    # "networkTypeString":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 622
    .local v11, "ex":Ljava/lang/NumberFormatException;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "countryCodeForMcc error"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_21

    .line 623
    .end local v11    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v11

    .line 624
    .local v11, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "countryCodeForMcc error"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_21

    .line 645
    .end local v11    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v35    # "isoCountryCode":Ljava/lang/String;
    .end local v36    # "mcc":Ljava/lang/String;
    :cond_4a
    const/16 v52, 0x0

    goto/16 :goto_18

    .line 651
    :cond_4b
    const-string v52, "false"

    goto/16 :goto_19

    .line 724
    .end local v13    # "hasBrandOverride":Z
    .end local v39    # "operatorNumeric":Ljava/lang/String;
    .end local v42    # "prevOperatorNumeric":Ljava/lang/String;
    .restart local v9    # "dataChangedReason":Ljava/lang/String;
    .restart local v22    # "hasDomesticRoamingOff":Z
    .restart local v23    # "hasDomesticRoamingOn":Z
    .restart local v24    # "hasInterRoamingOff":Z
    .restart local v25    # "hasInterRoamingOn":Z
    :cond_4c
    const/16 v23, 0x0

    goto/16 :goto_1a

    .line 728
    :cond_4d
    const/16 v25, 0x0

    goto/16 :goto_1b

    .line 731
    :cond_4e
    const/16 v22, 0x0

    goto/16 :goto_1c

    .line 733
    :cond_4f
    const/16 v24, 0x0

    goto/16 :goto_1d

    .line 764
    .end local v22    # "hasDomesticRoamingOff":Z
    .end local v23    # "hasDomesticRoamingOn":Z
    .end local v24    # "hasInterRoamingOff":Z
    .end local v25    # "hasInterRoamingOn":Z
    .restart local v6    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .restart local v8    # "cil":Landroid/telephony/CellInfoLte;
    :cond_50
    const/4 v7, 0x0

    goto/16 :goto_1e

    .line 768
    .restart local v7    # "cidChanged":Z
    .restart local v48    # "timeStamp":J
    :cond_51
    const/16 v43, 0x0

    goto/16 :goto_1f

    .line 782
    .end local v7    # "cidChanged":Z
    .end local v8    # "cil":Landroid/telephony/CellInfoLte;
    .end local v48    # "timeStamp":J
    :catchall_0
    move-exception v52

    :try_start_2
    monitor-exit v53
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v52
.end method

.method public powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 5
    .param p1, "dcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .prologue
    .line 915
    monitor-enter p0

    .line 916
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-nez v2, :cond_1

    .line 917
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 920
    .local v0, "dds":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubId()I

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubId()I

    move-result v2

    if-eq v0, v2, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 925
    :cond_0
    const-string v2, "radioTurnedOff"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 926
    const-string v2, "Data disconnected, turn off radio right away."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 927
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->hangupAndPowerOff()V

    .line 952
    .end local v0    # "dds":I
    :cond_1
    :goto_0
    monitor-exit p0

    .line 953
    return-void

    .line 929
    .restart local v0    # "dds":I
    :cond_2
    const-string v2, "radioTurnedOff"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 930
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubId()I

    move-result v2

    if-eq v0, v2, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 932
    const-string v2, "Data is active on DDS.  Wait for all data disconnect"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 935
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v2

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    invoke-virtual {v2, v0, p0, v3, v4}, Lcom/android/internal/telephony/ProxyController;->registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 937
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 939
    :cond_3
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 940
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x26

    iput v2, v1, Landroid/os/Message;->what:I

    .line 941
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 942
    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 943
    const-string v2, "Wait upto 30s for data to disconnect, then turn off radio."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 944
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto :goto_0

    .line 952
    .end local v0    # "dds":I
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 946
    .restart local v0    # "dds":I
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_4
    :try_start_1
    const-string v2, "Cannot send delayed Msg, turn off radio right away."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 947
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->hangupAndPowerOff()V

    .line 948
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected updateCdmaSubscription()V
    .locals 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 906
    return-void
.end method
