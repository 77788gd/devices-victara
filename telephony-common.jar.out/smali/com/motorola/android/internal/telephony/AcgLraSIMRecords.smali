.class public Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;
.super Lcom/android/internal/telephony/uicc/SIMRecords;
.source "AcgLraSIMRecords.java"


# static fields
.field protected static final DBG:Z

.field static final PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String; = "ro.cdma.home.operator.numeric"

.field static final PROPERTY_CDMA_OPERATOR_ALPHA:Ljava/lang/String; = "ro.cdma.home.operator.alpha"


# instance fields
.field private mAcgLraMccMncList:Ljava/lang/String;

.field private mOperatorAlphaSystemProperty:Ljava/lang/String;

.field private mOperatorNumericSystemProperty:Ljava/lang/String;

.field private mSpnOverride:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 28
    iput-object v2, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mAcgLraMccMncList:Ljava/lang/String;

    .line 29
    iput-object v2, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mOperatorNumericSystemProperty:Ljava/lang/String;

    .line 30
    iput-object v2, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mOperatorAlphaSystemProperty:Ljava/lang/String;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mSpnOverride:Z

    .line 36
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10406f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mAcgLraMccMncList:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mSpnOverride:Z

    .line 40
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mAcgLraMccMncList:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mAcgLraMccMncList:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iput-object v2, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mAcgLraMccMncList:Ljava/lang/String;

    .line 44
    :cond_0
    const-string v0, "ro.cdma.home.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mOperatorNumericSystemProperty:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mOperatorNumericSystemProperty:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iput-object v2, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mOperatorNumericSystemProperty:Ljava/lang/String;

    .line 49
    :cond_1
    const-string v0, "ro.cdma.home.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mOperatorAlphaSystemProperty:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mOperatorAlphaSystemProperty:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    iput-object v2, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mOperatorAlphaSystemProperty:Ljava/lang/String;

    .line 53
    :cond_2
    return-void
.end method

.method private isSIMOverride()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "simOperatorNumeric":Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mOperatorNumericSystemProperty:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mOperatorAlphaSystemProperty:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mAcgLraMccMncList:Ljava/lang/String;

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 157
    :cond_1
    :goto_0
    return v1

    .line 142
    :cond_2
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mAcgLraMccMncList:Ljava/lang/String;

    const-string v4, "000000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    .line 147
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v1, v2

    .line 148
    goto :goto_0

    .line 152
    :cond_4
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mAcgLraMccMncList:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    move v1, v2

    .line 157
    goto :goto_0
.end method


# virtual methods
.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->isSIMOverride()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mOperatorNumericSystemProperty:Ljava/lang/String;

    .line 64
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->isSIMOverride()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mSpnOverride:Z

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mOperatorAlphaSystemProperty:Ljava/lang/String;

    .line 77
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onAllRecordsLoaded()V
    .locals 4

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onAllRecordsLoaded()V

    .line 89
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->isSIMOverride()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    const-string v0, "gsm.sim.operator.iso-country"

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mOperatorNumericSystemProperty:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-boolean v0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AcgLraSIMRecords onAllRecordsLoaded ACG SIM card inserted. Operator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mOperatorNumericSystemProperty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spn= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->log(Ljava/lang/String;)V

    .line 95
    :cond_0
    const-string v0, "gsm.sim.operator.numeric"

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mOperatorNumericSystemProperty:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "gsm.sim.operator.alpha"

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mOperatorAlphaSystemProperty:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    sget-boolean v0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "AcgLraSIMRecords onAllRecordsLoaded: Non-ACG SIM card inserted. Will not override SIM parameters"

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
