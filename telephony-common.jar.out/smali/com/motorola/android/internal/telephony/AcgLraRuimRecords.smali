.class public Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;
.super Lcom/android/internal/telephony/uicc/RuimRecords;
.source "AcgLraRuimRecords.java"


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
    .line 28
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/RuimRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 29
    iput-object v2, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mAcgLraMccMncList:Ljava/lang/String;

    .line 30
    iput-object v2, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mOperatorNumericSystemProperty:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mOperatorAlphaSystemProperty:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mSpnOverride:Z

    .line 37
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10406f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mAcgLraMccMncList:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mSpnOverride:Z

    .line 41
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mAcgLraMccMncList:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mAcgLraMccMncList:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iput-object v2, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mAcgLraMccMncList:Ljava/lang/String;

    .line 45
    :cond_0
    const-string v0, "ro.cdma.home.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mOperatorNumericSystemProperty:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mOperatorNumericSystemProperty:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iput-object v2, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mOperatorNumericSystemProperty:Ljava/lang/String;

    .line 50
    :cond_1
    const-string v0, "ro.cdma.home.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mOperatorAlphaSystemProperty:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mOperatorAlphaSystemProperty:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    iput-object v2, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mOperatorAlphaSystemProperty:Ljava/lang/String;

    .line 54
    :cond_2
    return-void
.end method

.method private isSIMOverride()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "simOperatorNumeric":Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mOperatorNumericSystemProperty:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mOperatorAlphaSystemProperty:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mAcgLraMccMncList:Ljava/lang/String;

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 156
    :cond_1
    :goto_0
    return v1

    .line 141
    :cond_2
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mAcgLraMccMncList:Ljava/lang/String;

    const-string v4, "000000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    .line 146
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v1, v2

    .line 147
    goto :goto_0

    .line 151
    :cond_4
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mAcgLraMccMncList:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    move v1, v2

    .line 156
    goto :goto_0
.end method


# virtual methods
.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->isSIMOverride()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mOperatorNumericSystemProperty:Ljava/lang/String;

    .line 65
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->isSIMOverride()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mSpnOverride:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mOperatorAlphaSystemProperty:Ljava/lang/String;

    .line 78
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onAllRecordsLoaded()V
    .locals 4

    .prologue
    .line 85
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onAllRecordsLoaded()V

    .line 87
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->isSIMOverride()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const-string v0, "gsm.sim.operator.iso-country"

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mOperatorNumericSystemProperty:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "gsm.sim.operator.numeric"

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mOperatorNumericSystemProperty:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-boolean v0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AcgLraRuimRecords onAllRecordsLoaded ACG SIM card inserted. Operator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->mOperatorNumericSystemProperty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->log(Ljava/lang/String;)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    sget-boolean v0, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "AcgLraRuimRecords onAllRecordsLoaded: Non-ACG SIM card inserted. Will not override SIM parameters"

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/AcgLraRuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
