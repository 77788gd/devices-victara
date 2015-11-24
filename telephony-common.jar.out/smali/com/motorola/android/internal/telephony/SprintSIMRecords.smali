.class public Lcom/motorola/android/internal/telephony/SprintSIMRecords;
.super Lcom/android/internal/telephony/uicc/SIMRecords;
.source "SprintSIMRecords.java"


# static fields
.field static final PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String; = "ro.cdma.home.operator.numeric"

.field static final PROPERTY_CDMA_OPERATOR_ALPHA:Ljava/lang/String; = "ro.cdma.home.operator.alpha"


# instance fields
.field private mSprintMccMncList:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->mSprintMccMncList:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10406f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->mSprintMccMncList:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private getSprintMccMnc()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    const-string v1, "ro.cdma.home.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "operatorNumeric":Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->mMncLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->mMncLength:I

    if-eqz v1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->isSprintSIM()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSprintMccMnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->log(Ljava/lang/String;)V

    .line 111
    return-object v0
.end method

.method private getSprintServiceProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "ro.cdma.home.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isSprintSIM()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->mImsi:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v1

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->mImsi:Ljava/lang/String;

    iget v3, p0, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->mMncLength:I

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "simOperatorNumeric":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->mSprintMccMncList:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->mSprintMccMncList:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->mSprintMccMncList:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 89
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setSimAlphaSystemProperty()V
    .locals 3

    .prologue
    .line 121
    const-string v1, "ro.cdma.home.operator.alpha"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "alpha":Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->mMncLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->mMncLength:I

    if-eqz v1, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->isSprintSIM()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set system property for operator alpha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->log(Ljava/lang/String;)V

    .line 131
    const-string v1, "gsm.sim.operator.alpha"

    invoke-virtual {p0, v1, v0}, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method


# virtual methods
.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->getSprintMccMnc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "spn":Ljava/lang/String;
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->isSprintSIM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->getSprintServiceProviderName()Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_0
    return-object v0
.end method

.method protected onAllRecordsLoaded()V
    .locals 4

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onAllRecordsLoaded()V

    .line 50
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "operator":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 52
    const-string v1, "gsm.sim.operator.iso-country"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->setSimAlphaSystemProperty()V

    .line 57
    return-void
.end method
