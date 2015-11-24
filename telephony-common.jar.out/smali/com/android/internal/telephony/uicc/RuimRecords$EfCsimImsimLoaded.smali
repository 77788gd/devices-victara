.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimImsimLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/RuimRecords$1;

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    const-string v0, "EF_CSIM_IMSIM"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/16 v8, 0xf

    const/4 v7, 0x5

    .line 447
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    .line 448
    .local v0, "data":[B
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CSIM_IMSIM="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 451
    const/4 v4, 0x7

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_2

    const/4 v3, 0x1

    .line 453
    .local v3, "provisioned":Z
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v4, v4, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200e0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 455
    .local v1, "enableMinByConfig":Z
    if-nez v3, :cond_0

    if-eqz v1, :cond_4

    .line 456
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # invokes: Lcom/android/internal/telephony/uicc/RuimRecords;->decodeImsi([B)Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$300(Lcom/android/internal/telephony/uicc/RuimRecords;[B)Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, "imsiFromIMSI_M":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mConfigImsiFromImsiM:Z
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$400(Lcom/android/internal/telephony/uicc/RuimRecords;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 459
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iput-object v2, v4, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    .line 460
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set mImsi from IMSI_M : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v6, v6, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 462
    :cond_1
    if-eqz v3, :cond_3

    .line 463
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$502(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 464
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "min present="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$500(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 473
    .end local v2    # "imsiFromIMSI_M":Ljava/lang/String;
    :goto_1
    return-void

    .line 451
    .end local v1    # "enableMinByConfig":Z
    .end local v3    # "provisioned":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 466
    .restart local v1    # "enableMinByConfig":Z
    .restart local v2    # "imsiFromIMSI_M":Ljava/lang/String;
    .restart local v3    # "provisioned":Z
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/RuimRecords;->mUnProvisionedMin:Ljava/lang/String;

    .line 467
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "min present when not provisioned="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v6, v6, Lcom/android/internal/telephony/uicc/RuimRecords;->mUnProvisionedMin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 471
    .end local v2    # "imsiFromIMSI_M":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v5, "min not present"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_1
.end method
