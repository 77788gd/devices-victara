.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;
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
    name = "EfCsimSpnLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/RuimRecords$1;

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    const-string v0, "EF_CSIM_SPN"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 13
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v9, 0x1

    const/16 v4, 0x20

    const/4 v10, 0x0

    .line 339
    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    move-object v0, v8

    check-cast v0, [B

    .line 340
    .local v0, "data":[B
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CSIM_SPN="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 344
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    aget-byte v8, v0, v10

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    move v8, v9

    :goto_0
    iput-boolean v8, v11, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    .line 346
    aget-byte v2, v0, v9

    .line 347
    .local v2, "encoding":I
    const/4 v8, 0x2

    aget-byte v3, v0, v8

    .line 348
    .local v3, "language":I
    new-array v7, v4, [B

    .line 349
    .local v7, "spnData":[B
    array-length v8, v0

    add-int/lit8 v8, v8, -0x3

    if-ge v8, v4, :cond_0

    array-length v8, v0

    add-int/lit8 v4, v8, -0x3

    .line 350
    .local v4, "len":I
    :cond_0
    const/4 v8, 0x3

    invoke-static {v0, v8, v7, v10, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 353
    const/4 v5, 0x0

    .local v5, "numBytes":I
    :goto_1
    array-length v8, v7

    if-ge v5, v8, :cond_1

    .line 354
    aget-byte v8, v7, v5

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0xff

    if-ne v8, v9, :cond_3

    .line 357
    :cond_1
    if-nez v5, :cond_4

    .line 358
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v9, ""

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 419
    :goto_2
    return-void

    .end local v2    # "encoding":I
    .end local v3    # "language":I
    .end local v4    # "len":I
    .end local v5    # "numBytes":I
    .end local v7    # "spnData":[B
    :cond_2
    move v8, v10

    .line 344
    goto :goto_0

    .line 353
    .restart local v2    # "encoding":I
    .restart local v3    # "language":I
    .restart local v4    # "len":I
    .restart local v5    # "numBytes":I
    .restart local v7    # "spnData":[B
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 362
    :cond_4
    packed-switch v2, :pswitch_data_0

    .line 400
    :pswitch_0
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v9, "SPN encoding not supported"

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_3
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "spn="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 406
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "spnCondition="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-boolean v10, v10, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 409
    const-string v8, "usc"

    const-string v9, "ro.mot.build.customerid"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "311230"

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "GEMALTO"

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v9, v9, Lcom/android/internal/telephony/uicc/RuimRecords;->mSpn:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 412
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v9, "ro.cdma.home.operator.alpha"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/RuimRecords;->mSpn:Ljava/lang/String;

    .line 413
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " SPN for USC or C SPIRE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v10, v10, Lcom/android/internal/telephony/uicc/RuimRecords;->mSpn:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 417
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v8, v8, Lcom/android/internal/telephony/uicc/RuimRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v9, v9, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 365
    :pswitch_1
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "ISO-8859-1"

    invoke-direct {v9, v7, v10, v5, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 402
    :catch_0
    move-exception v1

    .line 403
    .local v1, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "spn decode error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 369
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const/4 v9, 0x0

    mul-int/lit8 v10, v5, 0x8

    div-int/lit8 v10, v10, 0x7

    invoke-static {v7, v9, v10}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\r"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 377
    :pswitch_3
    new-instance v6, Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "US-ASCII"

    invoke-direct {v6, v7, v8, v5, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 383
    .local v6, "spn":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 384
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v8, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 386
    :cond_7
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Some corruption in SPN decoding = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 387
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v9, "Using ENCODING_GSM_7BIT_ALPHABET scheme..."

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 388
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const/4 v9, 0x0

    mul-int/lit8 v10, v5, 0x8

    div-int/lit8 v10, v10, 0x7

    invoke-static {v7, v9, v10}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\r"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 397
    .end local v6    # "spn":Ljava/lang/String;
    :pswitch_4
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "utf-16"

    invoke-direct {v9, v7, v10, v5, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 362
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
