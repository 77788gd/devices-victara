.class public Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;
.super Ljava/lang/Object;
.source "OemCdmaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OemCdmaDataConverter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ActiveProfileToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ACTIVE_PROF;ILjava/lang/String;)[B
    .locals 5
    .param p0, "active_prof"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ACTIVE_PROF;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 6247
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 6248
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 6250
    const/4 v2, 0x4

    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v2, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 6253
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ACTIVE_PROF;->profile:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6254
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActiveProfileToByteArr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ACTIVE_PROF;->profile:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6255
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 6257
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActiveProfileToByteArr: data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6258
    :cond_1
    return-object v1
.end method

.method public static BCToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;ILjava/lang/String;)[B
    .locals 5
    .param p0, "bc"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 6233
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 6234
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 6236
    const/4 v2, 0x4

    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v2, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 6239
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;->status:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6240
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BCToByteArr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6241
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 6242
    .local v1, "data":[B
    return-object v1
.end method

.method public static aKeyInfoToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;ILjava/lang/String;)[B
    .locals 6
    .param p0, "info"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x1a

    .line 5328
    const/16 v3, 0x2c

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5330
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5332
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v4, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5336
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 5337
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;->akey:[B

    aget-byte v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5336
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5339
    :cond_0
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aKeyInfoToByteArr: info.akey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;->akey:[B

    invoke-static {v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5342
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5344
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aKeyInfoToByteArr: data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5346
    :cond_2
    return-object v1
.end method

.method public static byteArrToAKeyInfo(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 8
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 6657
    new-instance v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 6660
    .local v4, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 6662
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v5, v6, :cond_0

    .line 6663
    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 6682
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v4

    .line 6666
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;-><init>()V

    .line 6668
    .local v3, "info":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;
    const/16 v5, 0x1a

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;->akey:[B

    .line 6670
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;->akey:[B

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 6671
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;->akey:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 6670
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6673
    :cond_1
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToAKeyInfo: akey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;->akey:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6676
    :cond_2
    iput-object v3, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6678
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v2    # "i":I
    .end local v3    # "info":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;
    :catch_0
    move-exception v0

    .line 6679
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0
.end method

.method public static byteArrToAKeyInfo([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 6647
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToAKeyInfo: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6649
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToAKeyInfo(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToActiveProfile(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 7392
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 7395
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v2

    .line 7397
    .local v2, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    if-nez v2, :cond_0

    .line 7399
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 7413
    .end local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v3

    .line 7400
    .restart local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    iget-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v4, v5, :cond_1

    .line 7401
    iget-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7409
    .end local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v1

    .line 7410
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0

    .line 7404
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_1
    :try_start_1
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ACTIVE_PROF;

    invoke-direct {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ACTIVE_PROF;-><init>()V

    .line 7405
    .local v0, "active_prof":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ACTIVE_PROF;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ACTIVE_PROF;->profile:I

    .line 7406
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToActiveProfile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ACTIVE_PROF;->profile:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7407
    :cond_2
    iput-object v0, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static byteArrToActiveProfile([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 7379
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToActiveProfile: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7381
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToActiveProfile(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToBC(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 7351
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 7354
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v2

    .line 7356
    .local v2, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    if-nez v2, :cond_0

    .line 7358
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 7372
    .end local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v3

    .line 7359
    .restart local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    iget-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v4, v5, :cond_1

    .line 7360
    iget-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7368
    .end local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v1

    .line 7369
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0

    .line 7363
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_1
    :try_start_1
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;

    invoke-direct {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;-><init>()V

    .line 7364
    .local v0, "bc":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;->status:I

    .line 7365
    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToBC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;->status:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7366
    iput-object v0, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static byteArrToBC([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 7338
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToBC: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7340
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToBC(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToCpStatus(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 6451
    # invokes: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->isSprintProduct()Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6452
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToCpStatusSprint(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    .line 6454
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToCpStatusVZW(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToCpStatus([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 6441
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToCpStatus: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6443
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToCpStatus(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method private static byteArrToCpStatusSprint(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 9
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v8, 0x28

    const/4 v7, 0x6

    .line 6542
    new-instance v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 6545
    .local v4, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v2

    .line 6547
    .local v2, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    if-nez v2, :cond_0

    .line 6549
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 6642
    .end local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v4

    .line 6550
    .restart local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    iget-object v5, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v5, v6, :cond_1

    .line 6551
    iget-object v5, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6638
    .end local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v1

    .line 6639
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0

    .line 6554
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_1
    :try_start_1
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;

    invoke-direct {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;-><init>()V

    .line 6556
    .local v0, "cp":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->fer:I

    .line 6558
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActivePilot:I

    .line 6559
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActiveStrength:I

    .line 6560
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborPilot:I

    .line 6561
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborStrength:I

    .line 6562
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sid:I

    .line 6563
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->nid:I

    .line 6564
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->channel:I

    .line 6565
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->serviceOption:I

    .line 6566
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->droppedCallCounter:I

    .line 6567
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sCallCounter:I

    .line 6568
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->txPower:I

    .line 6569
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->band:I

    .line 6570
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activePilotCount:I

    .line 6571
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->neighborPilotCount:I

    .line 6572
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->candPilotCount:I

    .line 6573
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->cpState:I

    .line 6574
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lastCallIndicator:I

    .line 6575
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lnaStatus:I

    .line 6576
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->rssi:I

    .line 6577
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->callCounter:I

    .line 6578
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    iput-byte v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->is2000System:B

    .line 6580
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 6581
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 6582
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 6584
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->PRevInUse:I

    .line 6585
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bid:I

    .line 6586
    const/4 v5, 0x6

    new-array v5, v5, [I

    iput-object v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activeSetPn:[I

    .line 6587
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v7, :cond_2

    .line 6588
    iget-object v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activeSetPn:[I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aput v6, v5, v3

    .line 6587
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6590
    :cond_2
    const/4 v5, 0x6

    new-array v5, v5, [I

    iput-object v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activeSetStrength:[I

    .line 6591
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v7, :cond_3

    .line 6592
    iget-object v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activeSetStrength:[I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aput v6, v5, v3

    .line 6591
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 6594
    :cond_3
    const/16 v5, 0x28

    new-array v5, v5, [I

    iput-object v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->neighborSetPn:[I

    .line 6595
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v8, :cond_4

    .line 6596
    iget-object v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->neighborSetPn:[I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aput v6, v5, v3

    .line 6595
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 6598
    :cond_4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bsLat:I

    .line 6599
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bsLon:I

    .line 6601
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.fer = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->fer:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6602
    :cond_5
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.bestActivePilot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActivePilot:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6604
    :cond_6
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.bestActiveStrength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActiveStrength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6606
    :cond_7
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.bestNeighborPilot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborPilot:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6608
    :cond_8
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.bestNeighborStrength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborStrength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6610
    :cond_9
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.sid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6611
    :cond_a
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.nid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->nid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6612
    :cond_b
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.channel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->channel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6613
    :cond_c
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.serviceOption = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->serviceOption:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6615
    :cond_d
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.droppedCallCounter = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->droppedCallCounter:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6617
    :cond_e
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.txPower = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->txPower:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6618
    :cond_f
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.band = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->band:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6619
    :cond_10
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.activePilotCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activePilotCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6621
    :cond_11
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.neighborPilotCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->neighborPilotCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6623
    :cond_12
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.candPilotCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->candPilotCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6625
    :cond_13
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.cpState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->cpState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6626
    :cond_14
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.lastCallIndicator = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lastCallIndicator:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6628
    :cond_15
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.lnaStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lnaStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6630
    :cond_16
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.rssi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->rssi:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6631
    :cond_17
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_18

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.callCounter = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->callCounter:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6633
    :cond_18
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_19

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.bsLon = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bsLon:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6636
    :cond_19
    iput-object v0, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static byteArrToCpStatusVZW(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 6460
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 6463
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v2

    .line 6465
    .local v2, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    iget-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v4, v5, :cond_0

    .line 6466
    iget-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 6537
    .end local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v3

    .line 6469
    .restart local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;

    invoke-direct {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;-><init>()V

    .line 6471
    .local v0, "cp":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->fer:I

    .line 6472
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActivePilot:I

    .line 6473
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActiveStrength:I

    .line 6474
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborPilot:I

    .line 6475
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborStrength:I

    .line 6476
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sid:I

    .line 6477
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->nid:I

    .line 6478
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->channel:I

    .line 6479
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->serviceOption:I

    .line 6480
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->droppedCallCounter:I

    .line 6481
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sCallCounter:I

    .line 6482
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->txPower:I

    .line 6483
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->band:I

    .line 6484
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activePilotCount:I

    .line 6485
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->neighborPilotCount:I

    .line 6486
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->candPilotCount:I

    .line 6487
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->cpState:I

    .line 6488
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lastCallIndicator:I

    .line 6489
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lnaStatus:I

    .line 6490
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->rssi:I

    .line 6491
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->callCounter:I

    .line 6492
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->is2000System:B

    .line 6494
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.fer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->fer:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6495
    :cond_1
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.bestActivePilot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActivePilot:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6497
    :cond_2
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.bestActiveStrength = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActiveStrength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6499
    :cond_3
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.bestNeighborPilot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborPilot:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6501
    :cond_4
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.bestNeighborStrength = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborStrength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6503
    :cond_5
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.sid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6504
    :cond_6
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.nid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->nid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6505
    :cond_7
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.channel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->channel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6506
    :cond_8
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.serviceOption = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->serviceOption:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6508
    :cond_9
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.droppedCallCounter = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->droppedCallCounter:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6510
    :cond_a
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.sCallCounter = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sCallCounter:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6512
    :cond_b
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.txPower = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->txPower:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6513
    :cond_c
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.band = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->band:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6514
    :cond_d
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.activePilotCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activePilotCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6516
    :cond_e
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.neighborPilotCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->neighborPilotCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6518
    :cond_f
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.candPilotCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->candPilotCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6520
    :cond_10
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.cpState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->cpState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6521
    :cond_11
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.lastCallIndicator = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lastCallIndicator:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6523
    :cond_12
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.lnaStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lnaStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6525
    :cond_13
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.rssi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->rssi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6526
    :cond_14
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.callCounter = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->callCounter:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6528
    :cond_15
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.is2000System = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->is2000System:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6531
    :cond_16
    iput-object v0, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 6533
    .end local v0    # "cp":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;
    .end local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v1

    .line 6534
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto/16 :goto_0
.end method

.method public static byteArrToDataRate(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 6310
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 6313
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 6315
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v4, v5, :cond_0

    .line 6316
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 6330
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v3

    .line 6319
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_DataRate;->fromInt(I)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_DataRate;

    move-result-object v2

    .line 6322
    .local v2, "rate":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_DataRate;
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToDataRate: rate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_DataRate;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6324
    :cond_1
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6326
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v2    # "rate":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_DataRate;
    :catch_0
    move-exception v0

    .line 6327
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0
.end method

.method public static byteArrToDataRate([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 6300
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToDataRate: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6302
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToDataRate(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToEvdoData(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 6738
    # invokes: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->isSprintProduct()Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6739
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToEvdoDataSprint(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    .line 6741
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToEvdoDataVZW(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToEvdoData([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 6727
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToEvdoData: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6729
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToEvdoData(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method private static byteArrToEvdoDataSprint(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 8
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v7, 0x10

    .line 6812
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 6815
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 6817
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    if-nez v1, :cond_0

    .line 6819
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 6893
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v3

    .line 6820
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v5, v6, :cond_1

    .line 6821
    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6889
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v0

    .line 6890
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0

    .line 6824
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_1
    :try_start_1
    new-instance v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;

    invoke-direct {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;-><init>()V

    .line 6826
    .local v4, "status":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrChanNum:I

    .line 6827
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->uatiColorCode:I

    .line 6828
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->txUati:I

    .line 6829
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->pilotPn:I

    .line 6830
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrRssi:I

    .line 6831
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx0Dbm:I

    .line 6832
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx1Dbm:I

    .line 6833
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->measPkts:I

    .line 6834
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->errPkts:I

    .line 6835
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sessionState:I

    .line 6836
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->atState:I

    .line 6837
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->ip:I

    .line 6838
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->userCount:I

    .line 6840
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hybridMode:I

    .line 6841
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->dropCount:I

    .line 6845
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->macIndex:I

    .line 6846
    const/16 v5, 0x10

    new-array v5, v5, [I

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sectorIds:[I

    .line 6847
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v7, :cond_2

    .line 6848
    iget-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sectorIds:[I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aput v6, v5, v2

    .line 6847
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6850
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->pilotEnergy:I

    .line 6851
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->drcCover:I

    .line 6852
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sinr:I

    .line 6853
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->anAuthStatus:I

    .line 6856
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.hdrChanNum = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrChanNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6858
    :cond_3
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.uatiColorCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->uatiColorCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6860
    :cond_4
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.txUati = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->txUati:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6862
    :cond_5
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.pilotPn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->pilotPn:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6864
    :cond_6
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.hdrRssi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrRssi:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6866
    :cond_7
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.rxPwrRx0Dbm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx0Dbm:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6868
    :cond_8
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.rxPwrRx1Dbm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx1Dbm:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6870
    :cond_9
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.measPkts = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->measPkts:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6872
    :cond_a
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.errPkts = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->errPkts:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6874
    :cond_b
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.sessionState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sessionState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6876
    :cond_c
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.atState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->atState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6878
    :cond_d
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.ip = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->ip:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6879
    :cond_e
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.userCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->userCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6881
    :cond_f
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.hybridMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hybridMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6883
    :cond_10
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.macIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->macIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6885
    :cond_11
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.drcCover = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->drcCover:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6887
    :cond_12
    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static byteArrToEvdoDataVZW(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 6747
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 6750
    .local v2, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 6752
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v4, v5, :cond_0

    .line 6753
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 6807
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v2

    .line 6756
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;-><init>()V

    .line 6758
    .local v3, "status":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrChanNum:I

    .line 6759
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->uatiColorCode:I

    .line 6760
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->txUati:I

    .line 6761
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->pilotPn:I

    .line 6762
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrRssi:I

    .line 6763
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx0Dbm:I

    .line 6764
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx1Dbm:I

    .line 6765
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->measPkts:I

    .line 6766
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->errPkts:I

    .line 6767
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sessionState:I

    .line 6768
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->atState:I

    .line 6769
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->ip:I

    .line 6770
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->userCount:I

    .line 6771
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hybridMode:I

    .line 6773
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.hdrChanNum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrChanNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6775
    :cond_1
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.uatiColorCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->uatiColorCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6777
    :cond_2
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.txUati = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->txUati:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6779
    :cond_3
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.pilotPn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->pilotPn:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6781
    :cond_4
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.hdrRssi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrRssi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6783
    :cond_5
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.rxPwrRx0Dbm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx0Dbm:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6785
    :cond_6
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.rxPwrRx1Dbm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx1Dbm:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6787
    :cond_7
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.measPkts = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->measPkts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6789
    :cond_8
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.errPkts = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->errPkts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6791
    :cond_9
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.sessionState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sessionState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6793
    :cond_a
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.atState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->atState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6795
    :cond_b
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.ip = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->ip:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6796
    :cond_c
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.userCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->userCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6798
    :cond_d
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.hybridMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hybridMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6801
    :cond_e
    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 6803
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v3    # "status":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;
    :catch_0
    move-exception v0

    .line 6804
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto/16 :goto_0
.end method

.method public static byteArrToGetSetDdtmDefaultPreferenceResp(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 7425
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 7427
    .local v2, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 7428
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    if-nez v1, :cond_0

    .line 7430
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 7439
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v2

    .line 7431
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    iget-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v3, v4, :cond_1

    .line 7432
    iget-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7436
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v0

    .line 7437
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0

    .line 7434
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static byteArrToGetSetDdtmDefaultPreferenceResp([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 7417
    if-nez p0, :cond_0

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToGetSetDdtmDefaultPreferenceResp(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "arr"    # [B

    .prologue
    .line 5169
    if-nez p0, :cond_0

    .line 5170
    const-string v2, "null"

    .line 5177
    :goto_0
    return-object v2

    .line 5171
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5173
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "hex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 5175
    const-string v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p0, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5174
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5177
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static byteArrToHybridMode(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 6380
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 6383
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 6385
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v4, v5, :cond_0

    .line 6386
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 6400
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v3

    .line 6389
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HybridModeState;->fromInt(I)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HybridModeState;

    move-result-object v2

    .line 6392
    .local v2, "mode":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HybridModeState;
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToHybridMode: rev = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HybridModeState;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6394
    :cond_1
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6396
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v2    # "mode":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HybridModeState;
    :catch_0
    move-exception v0

    .line 6397
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0
.end method

.method public static byteArrToHybridMode([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 6370
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToHybridMode: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6372
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHybridMode(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToMobilePRev(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 6345
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 6348
    .local v2, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 6350
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v4, v5, :cond_0

    .line 6351
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 6365
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v2

    .line 6354
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_MobilePRev;->fromInt(I)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_MobilePRev;

    move-result-object v3

    .line 6357
    .local v3, "rev":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_MobilePRev;
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToMobilePRev: rev = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_MobilePRev;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6359
    :cond_1
    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6361
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v3    # "rev":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_MobilePRev;
    :catch_0
    move-exception v0

    .line 6362
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0
.end method

.method public static byteArrToMobilePRev([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 6335
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToMobilePRev: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6337
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToMobilePRev(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToNamInfo(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 6908
    # invokes: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->isSprintProduct()Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6909
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToNamInfoSprint(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    .line 6911
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToNamInfoVZW(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToNamInfo([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 6898
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToNamInfo: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6900
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToNamInfo(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method private static byteArrToNamInfoSprint(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 9
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x4

    .line 7042
    new-instance v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 7045
    .local v4, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 7047
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    if-nez v1, :cond_0

    .line 7049
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 7209
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v4

    .line 7050
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v5, v6, :cond_1

    .line 7051
    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7205
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v0

    .line 7206
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0

    .line 7054
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_1
    :try_start_1
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;-><init>()V

    .line 7056
    .local v3, "namInfo":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;
    const/16 v5, 0xa

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    .line 7057
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 7058
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 7057
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7060
    :cond_2
    const/16 v2, 0xa

    :goto_2
    if-ge v2, v8, :cond_3

    .line 7061
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 7060
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 7064
    :cond_3
    const/16 v5, 0xa

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    .line 7065
    const/4 v2, 0x0

    :goto_3
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    array-length v5, v5

    if-ge v2, v5, :cond_4

    .line 7066
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 7065
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 7068
    :cond_4
    const/16 v2, 0xa

    :goto_4
    if-ge v2, v8, :cond_5

    .line 7069
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 7068
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 7072
    :cond_5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_sid:I

    .line 7073
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_nid:I

    .line 7074
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->scm:I

    .line 7076
    const/4 v5, 0x2

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    .line 7077
    const/4 v2, 0x0

    :goto_5
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    array-length v5, v5

    if-ge v2, v5, :cond_6

    .line 7078
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 7077
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 7081
    :cond_6
    const/4 v2, 0x2

    :goto_6
    if-ge v2, v7, :cond_7

    .line 7082
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 7081
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 7085
    :cond_7
    const/4 v5, 0x3

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    .line 7086
    const/4 v2, 0x0

    :goto_7
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    array-length v5, v5

    if-ge v2, v5, :cond_8

    .line 7087
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 7086
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 7090
    :cond_8
    const/4 v2, 0x3

    :goto_8
    if-ge v2, v7, :cond_9

    .line 7091
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 7090
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 7094
    :cond_9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaA:I

    .line 7095
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaB:I

    .line 7096
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaA:I

    .line 7097
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaB:I

    .line 7098
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->vocoderType:I

    .line 7100
    const/4 v5, 0x3

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    .line 7101
    const/4 v2, 0x0

    :goto_9
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    array-length v5, v5

    if-ge v2, v5, :cond_a

    .line 7102
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 7101
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 7104
    :cond_a
    const/4 v2, 0x3

    :goto_a
    if-ge v2, v7, :cond_b

    .line 7105
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 7104
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 7108
    :cond_b
    const/16 v5, 0xf

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    .line 7109
    const/4 v2, 0x0

    :goto_b
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    array-length v5, v5

    if-ge v2, v5, :cond_c

    .line 7110
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 7109
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 7112
    :cond_c
    const/16 v2, 0xf

    :goto_c
    if-ge v2, v8, :cond_d

    .line 7113
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 7112
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 7116
    :cond_d
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->accessOverloadClass:I

    .line 7120
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMAddrNum:I

    .line 7121
    iget v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMAddrNum:I

    const/16 v6, 0xff

    if-ne v5, v6, :cond_e

    .line 7122
    const/4 v5, 0x0

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMAddrNum:I

    .line 7125
    :cond_e
    const/4 v5, 0x4

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS1_0:[B

    .line 7126
    const/4 v2, 0x0

    :goto_d
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS1_0:[B

    array-length v5, v5

    if-ge v2, v5, :cond_f

    .line 7127
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS1_0:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 7126
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 7130
    :cond_f
    const/4 v5, 0x4

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS2:[B

    .line 7131
    const/4 v2, 0x0

    :goto_e
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS2:[B

    array-length v5, v5

    if-ge v2, v5, :cond_10

    .line 7132
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS2:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 7131
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 7136
    :cond_10
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mob_term_home:I

    .line 7137
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mob_term_sid:I

    .line 7138
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mob_term_nid:I

    .line 7144
    const/4 v5, 0x6

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    .line 7145
    const/4 v2, 0x0

    :goto_f
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    array-length v5, v5

    if-ge v2, v5, :cond_11

    .line 7146
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 7145
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 7150
    :cond_11
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_12

    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.mdn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7152
    :cond_12
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.min = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7154
    :cond_13
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.h_sid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_sid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7156
    :cond_14
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.h_nid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_nid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7158
    :cond_15
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.scm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->scm:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7160
    :cond_16
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.imsi11_12 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7162
    :cond_17
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_18

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.imsiMcc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7164
    :cond_18
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_19

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.priCdmaA = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaA:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7166
    :cond_19
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_1a

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.priCdmaB = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaB:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7168
    :cond_1a
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_1b

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.secCdmaA = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaA:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7170
    :cond_1b
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_1c

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.secCdmaB = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaB:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7172
    :cond_1c
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_1d

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.vocoderType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->vocoderType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7174
    :cond_1d
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_1e

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.imsiMccT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7176
    :cond_1e
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_1f

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.imsiT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7178
    :cond_1f
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_20

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.accessOverloadClass = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->accessOverloadClass:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7183
    :cond_20
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_21

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.imsiMAddrNum = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMAddrNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7185
    :cond_21
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_22

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.imsiMS2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS2:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7187
    :cond_22
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_23

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.imsiMS1_0 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS1_0:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7191
    :cond_23
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_24

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.mob_term_home = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mob_term_home:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7193
    :cond_24
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_25

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.mob_term_sid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mob_term_sid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7195
    :cond_25
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_26

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.mob_term_nid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mob_term_nid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7200
    :cond_26
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_27

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.newSpcCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7203
    :cond_27
    iput-object v3, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static byteArrToNamInfoVZW(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 9
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x4

    .line 6917
    new-instance v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 6920
    .local v4, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 6922
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v5, v6, :cond_0

    .line 6923
    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 7037
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v4

    .line 6926
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;-><init>()V

    .line 6928
    .local v3, "namInfo":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;
    const/16 v5, 0xa

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    .line 6929
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 6930
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 6929
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6932
    :cond_1
    const/16 v2, 0xa

    :goto_2
    if-ge v2, v8, :cond_2

    .line 6933
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 6932
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6936
    :cond_2
    const/16 v5, 0xa

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    .line 6937
    const/4 v2, 0x0

    :goto_3
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 6938
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 6937
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 6940
    :cond_3
    const/16 v2, 0xa

    :goto_4
    if-ge v2, v8, :cond_4

    .line 6941
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 6940
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 6944
    :cond_4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_sid:I

    .line 6945
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_nid:I

    .line 6946
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->scm:I

    .line 6948
    const/4 v5, 0x2

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    .line 6949
    const/4 v2, 0x0

    :goto_5
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    array-length v5, v5

    if-ge v2, v5, :cond_5

    .line 6950
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 6949
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 6953
    :cond_5
    const/4 v2, 0x2

    :goto_6
    if-ge v2, v7, :cond_6

    .line 6954
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 6953
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 6957
    :cond_6
    const/4 v5, 0x3

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    .line 6958
    const/4 v2, 0x0

    :goto_7
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    array-length v5, v5

    if-ge v2, v5, :cond_7

    .line 6959
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 6958
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 6962
    :cond_7
    const/4 v2, 0x3

    :goto_8
    if-ge v2, v7, :cond_8

    .line 6963
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 6962
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 6966
    :cond_8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaA:I

    .line 6967
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaB:I

    .line 6968
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaA:I

    .line 6969
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaB:I

    .line 6970
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->vocoderType:I

    .line 6972
    const/4 v5, 0x3

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    .line 6973
    const/4 v2, 0x0

    :goto_9
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    array-length v5, v5

    if-ge v2, v5, :cond_9

    .line 6974
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 6973
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 6976
    :cond_9
    const/4 v2, 0x3

    :goto_a
    if-ge v2, v7, :cond_a

    .line 6977
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 6976
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 6980
    :cond_a
    const/16 v5, 0xf

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    .line 6981
    const/4 v2, 0x0

    :goto_b
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    array-length v5, v5

    if-ge v2, v5, :cond_b

    .line 6982
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 6981
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 6984
    :cond_b
    const/16 v2, 0xf

    :goto_c
    if-ge v2, v8, :cond_c

    .line 6985
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 6984
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 6988
    :cond_c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->accessOverloadClass:I

    .line 6990
    const/4 v5, 0x6

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    .line 6991
    const/4 v2, 0x0

    :goto_d
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    array-length v5, v5

    if-ge v2, v5, :cond_d

    .line 6992
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 6991
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 6996
    :cond_d
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.mdn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6998
    :cond_e
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.min = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7000
    :cond_f
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.h_sid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_sid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7002
    :cond_10
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.h_nid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_nid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7004
    :cond_11
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.scm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->scm:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7007
    :cond_12
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.imsi11_12 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7009
    :cond_13
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.imsiMcc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7011
    :cond_14
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.priCdmaA = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaA:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7013
    :cond_15
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.priCdmaB = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaB:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7015
    :cond_16
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.secCdmaA = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaA:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7017
    :cond_17
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_18

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.secCdmaB = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaB:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7019
    :cond_18
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_19

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.vocoderType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->vocoderType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7021
    :cond_19
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_1a

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.imsiMccT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7023
    :cond_1a
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_1b

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.imsiT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7025
    :cond_1b
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_1c

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.accessOverloadClass = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->accessOverloadClass:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7028
    :cond_1c
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_1d

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.newSpcCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7031
    :cond_1d
    iput-object v3, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 7033
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v2    # "i":I
    .end local v3    # "namInfo":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;
    :catch_0
    move-exception v0

    .line 7034
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto/16 :goto_0
.end method

.method public static byteArrToNamPrlVersion(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 7276
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 7279
    .local v2, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 7281
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v4, v5, :cond_0

    .line 7282
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 7297
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v2

    .line 7285
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_PrlVersion;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_PrlVersion;-><init>()V

    .line 7286
    .local v3, "ver":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_PrlVersion;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_PrlVersion;->prlVerison:I

    .line 7288
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToNamPrlVersion: prlVerison = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_PrlVersion;->prlVerison:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7291
    :cond_1
    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7293
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v3    # "ver":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_PrlVersion;
    :catch_0
    move-exception v0

    .line 7294
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0
.end method

.method public static byteArrToNamPrlVersion([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 7265
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToNamPrlVersion: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7268
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToNamPrlVersion(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToRdeData(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 6
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 7312
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 7315
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 7318
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    if-nez v1, :cond_1

    .line 7320
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 7326
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    move-result-object v2

    .line 7327
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;

    .line 7334
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v2    # "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    :goto_1
    return-object v3

    .line 7321
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_1
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v4, v5, :cond_0

    .line 7323
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7329
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v0

    .line 7330
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "OemCdmaTelephonyManager"

    const-string v5, "byteArrToRdeData: buffer underflow"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7331
    :cond_2
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_1
.end method

.method public static byteArrToRdeData([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 7302
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToRdeData: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7304
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToRdeData(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToRevOption(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 6415
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 6418
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 6420
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v4, v5, :cond_0

    .line 6421
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 6436
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v3

    .line 6424
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_RevOption;->fromInt(I)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_RevOption;

    move-result-object v2

    .line 6427
    .local v2, "option":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_RevOption;
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToRevOption: option = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_RevOption;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6430
    :cond_1
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6432
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v2    # "option":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_RevOption;
    :catch_0
    move-exception v0

    .line 6433
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0
.end method

.method public static byteArrToRevOption([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 6405
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToRevOption: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6407
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToRevOption(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToServiceOption(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 6274
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 6277
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 6279
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v4, v5, :cond_0

    .line 6280
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 6295
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v3

    .line 6283
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ServiceOption;->fromInt(I)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ServiceOption;

    move-result-object v2

    .line 6286
    .local v2, "option":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ServiceOption;
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToServiceOption: option = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ServiceOption;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6289
    :cond_1
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6291
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v2    # "option":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ServiceOption;
    :catch_0
    move-exception v0

    .line 6292
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0
.end method

.method public static byteArrToServiceOption([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 6263
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToServiceOption: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6266
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToServiceOption(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToSidNidPairs(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 9
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v8, 0x14

    .line 7230
    new-instance v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 7233
    .local v4, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 7235
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v5, v6, :cond_0

    .line 7236
    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 7260
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v4

    .line 7239
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;-><init>()V

    .line 7241
    .local v3, "pairs":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;
    const/16 v5, 0x14

    new-array v5, v5, [Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->sidNid:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    .line 7243
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v8, :cond_3

    .line 7244
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->sidNid:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    new-instance v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    invoke-direct {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;-><init>()V

    aput-object v6, v5, v2

    .line 7245
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->sidNid:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    iput v6, v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;->sid:I

    .line 7246
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->sidNid:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    iput v6, v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;->nid:I

    .line 7248
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToSidNidPairs: pairs.sidNid["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "].sid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->sidNid:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;->sid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7250
    :cond_1
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToSidNidPairs: pairs.sidNid["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "].nid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->sidNid:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;->nid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7243
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7254
    :cond_3
    iput-object v3, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 7256
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v2    # "i":I
    .end local v3    # "pairs":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;
    :catch_0
    move-exception v0

    .line 7257
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto/16 :goto_0
.end method

.method public static byteArrToSidNidPairs([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 7217
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToSidNidPairs: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7219
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToSidNidPairs(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToString([B)Ljava/lang/String;
    .locals 4
    .param p0, "arr"    # [B

    .prologue
    .line 5196
    const/4 v0, 0x0

    .line 5197
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget-byte v2, p0, v0

    if-eqz v2, :cond_0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_0
    move v0, v1

    .line 5198
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v2
.end method

.method private static byteArrToStringLog([B)Ljava/lang/String;
    .locals 6
    .param p0, "arr"    # [B

    .prologue
    .line 5181
    if-nez p0, :cond_0

    .line 5182
    const-string v2, "null"

    .line 5189
    :goto_0
    return-object v2

    .line 5183
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5185
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "hex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 5187
    const-string v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p0, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5186
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5189
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static byteArrToSubsidyPasswd(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 8
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 6698
    new-instance v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 6701
    .local v4, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 6703
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v5, v6, :cond_0

    .line 6704
    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 6722
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v4

    .line 6707
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;-><init>()V

    .line 6709
    .local v3, "password":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;
    const/4 v5, 0x6

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;->password:[B

    .line 6710
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;->password:[B

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 6711
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;->password:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 6710
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6713
    :cond_1
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToSubsidyPasswd: password = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;->password:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6716
    :cond_2
    iput-object v3, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6718
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v2    # "i":I
    .end local v3    # "password":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;
    :catch_0
    move-exception v0

    .line 6719
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0
.end method

.method public static byteArrToSubsidyPasswd([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 6687
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToSubsidyPasswd: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6690
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToSubsidyPasswd(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static cpStatusToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;ILjava/lang/String;)[B
    .locals 1
    .param p0, "cp"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 5903
    # invokes: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->isSprintProduct()Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5904
    invoke-static {p0, p1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->cpStatusToByteArrSprint(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;ILjava/lang/String;)[B

    move-result-object v0

    .line 5906
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->cpStatusToByteArrVZW(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;ILjava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static cpStatusToByteArrSprint(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;ILjava/lang/String;)[B
    .locals 6
    .param p0, "cp"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x6

    .line 5989
    const/16 v3, 0x142

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5991
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5993
    const/16 v3, 0x130

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v3, v4, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5997
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->fer:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5998
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activePilotCount:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5999
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->neighborPilotCount:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6000
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->candPilotCount:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6001
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActivePilot:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6002
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActiveStrength:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6003
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborPilot:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6004
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborStrength:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6005
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sid:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6006
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->nid:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6007
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->channel:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6008
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->serviceOption:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6009
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->droppedCallCounter:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6010
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->callCounter:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6011
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lastCallIndicator:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6012
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->PRevInUse:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6013
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->band:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6014
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lnaStatus:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6015
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->cpState:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6016
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->txPower:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6017
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->rssi:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6019
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bid:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6021
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 6022
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activeSetPn:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6021
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6024
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    .line 6025
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activeSetStrength:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6024
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6027
    :cond_1
    const/4 v2, 0x0

    :goto_2
    const/16 v3, 0x28

    if-ge v2, v3, :cond_2

    .line 6028
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->neighborSetPn:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6027
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6030
    :cond_2
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bsLat:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6031
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bsLon:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6033
    iget-byte v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->is2000System:B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 6035
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.fer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->fer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6036
    :cond_3
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.bestActivePilot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActivePilot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6038
    :cond_4
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.bestActiveStrength = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActiveStrength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6040
    :cond_5
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.bestNeighborPilot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborPilot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6042
    :cond_6
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.bestNeighborStrength = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborStrength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6044
    :cond_7
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.sid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6045
    :cond_8
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.nid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->nid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6046
    :cond_9
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.channel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->channel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6047
    :cond_a
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.serviceOption = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->serviceOption:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6049
    :cond_b
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.droppedCallCounter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->droppedCallCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6051
    :cond_c
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.txPower = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->txPower:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6052
    :cond_d
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.band = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->band:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6053
    :cond_e
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.activePilotCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activePilotCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6055
    :cond_f
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.neighborPilotCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->neighborPilotCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6057
    :cond_10
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.candPilotCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->candPilotCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6059
    :cond_11
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.cpState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->cpState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6060
    :cond_12
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.lastCallIndicator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lastCallIndicator:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6062
    :cond_13
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.lnaStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lnaStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6063
    :cond_14
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.rssi = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->rssi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6064
    :cond_15
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.callCounter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->callCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6066
    :cond_16
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 6068
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6070
    :cond_17
    return-object v1
.end method

.method private static cpStatusToByteArrVZW(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;ILjava/lang/String;)[B
    .locals 5
    .param p0, "cp"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 5913
    const/16 v2, 0x67

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5915
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5917
    const/16 v2, 0x55

    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v2, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5921
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->fer:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5922
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActivePilot:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5923
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActiveStrength:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5924
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborPilot:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5925
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborStrength:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5926
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sid:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5927
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->nid:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5928
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->channel:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5929
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->serviceOption:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5930
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->droppedCallCounter:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5931
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sCallCounter:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5932
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->txPower:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5933
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->band:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5934
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activePilotCount:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5935
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->neighborPilotCount:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5936
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->candPilotCount:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5937
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->cpState:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5938
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lastCallIndicator:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5939
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lnaStatus:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5940
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->rssi:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5941
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->callCounter:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5942
    iget-byte v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->is2000System:B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5944
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.fer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->fer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5945
    :cond_0
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.bestActivePilot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActivePilot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5947
    :cond_1
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.bestActiveStrength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActiveStrength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5949
    :cond_2
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.bestNeighborPilot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborPilot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5951
    :cond_3
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.bestNeighborStrength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborStrength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5953
    :cond_4
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.sid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5954
    :cond_5
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.nid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->nid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5955
    :cond_6
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.channel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->channel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5956
    :cond_7
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.serviceOption = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->serviceOption:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5958
    :cond_8
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.droppedCallCounter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->droppedCallCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5960
    :cond_9
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.sCallCounter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sCallCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5962
    :cond_a
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.txPower = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->txPower:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5963
    :cond_b
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.band = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->band:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5964
    :cond_c
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.activePilotCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activePilotCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5966
    :cond_d
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.neighborPilotCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->neighborPilotCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5968
    :cond_e
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.candPilotCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->candPilotCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5970
    :cond_f
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.cpState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->cpState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5971
    :cond_10
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.lastCallIndicator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lastCallIndicator:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5973
    :cond_11
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.lnaStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lnaStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5974
    :cond_12
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.rssi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->rssi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5975
    :cond_13
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.callCounter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->callCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5976
    :cond_14
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.is2000System = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->is2000System:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5979
    :cond_15
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5981
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5983
    :cond_16
    return-object v1
.end method

.method public static dataRateToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_DataRate;ILjava/lang/String;)[B
    .locals 5
    .param p0, "dataRate"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_DataRate;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 5302
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5304
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5306
    const/4 v2, 0x4

    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v2, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5310
    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_DataRate;->toInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5312
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataRateToByteArr: dataRate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_DataRate;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5314
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5316
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataRateToByteArr: data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5318
    :cond_1
    return-object v1
.end method

.method public static evdoDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;ILjava/lang/String;)[B
    .locals 1
    .param p0, "status"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 6076
    # invokes: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->isSprintProduct()Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6077
    invoke-static {p0, p1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->evdoDataToByteArrSprint(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;ILjava/lang/String;)[B

    move-result-object v0

    .line 6079
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->evdoDataToByteArrVZW(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;ILjava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static evdoDataToByteArrSprint(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;ILjava/lang/String;)[B
    .locals 6
    .param p0, "status"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 6142
    const/16 v3, 0xa2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 6144
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 6146
    const/16 v3, 0x90

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v3, v4, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 6150
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrChanNum:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6151
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->uatiColorCode:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6152
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->txUati:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6153
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->pilotPn:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6154
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrRssi:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6155
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx0Dbm:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6156
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx1Dbm:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6157
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->measPkts:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6158
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->errPkts:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6159
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sessionState:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6160
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->atState:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6161
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->ip:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6162
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->userCount:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6163
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->dropCount:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6164
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hybridMode:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6165
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->macIndex:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6167
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 6168
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sectorIds:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6170
    :cond_0
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->pilotEnergy:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6171
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->drcCover:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6172
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sinr:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6173
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->anAuthStatus:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6176
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.hdrChanNum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrChanNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6178
    :cond_1
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.uatiColorCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->uatiColorCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6180
    :cond_2
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.txUati = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->txUati:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6181
    :cond_3
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.pilotPn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->pilotPn:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6182
    :cond_4
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.hdrRssi = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrRssi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6183
    :cond_5
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.rxPwrRx0Dbm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx0Dbm:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6185
    :cond_6
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.rxPwrRx1Dbm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx1Dbm:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6187
    :cond_7
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.measPkts = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->measPkts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6189
    :cond_8
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.errPkts = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->errPkts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6190
    :cond_9
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.sessionState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sessionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6192
    :cond_a
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.atState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->atState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6193
    :cond_b
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.ip = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->ip:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6194
    :cond_c
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.userCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->userCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6196
    :cond_d
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.hybridMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hybridMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6199
    :cond_e
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.macIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->macIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6201
    :cond_f
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.drcCover = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->drcCover:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6204
    :cond_10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 6205
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6206
    :cond_11
    return-object v1
.end method

.method private static evdoDataToByteArrVZW(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;ILjava/lang/String;)[B
    .locals 5
    .param p0, "status"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 6086
    const/16 v2, 0x4a

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 6088
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 6090
    const/16 v2, 0x38

    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v2, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 6094
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrChanNum:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6095
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->uatiColorCode:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6096
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->txUati:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6097
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->pilotPn:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6098
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrRssi:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6099
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx0Dbm:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6100
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx1Dbm:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6101
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->measPkts:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6102
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->errPkts:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6103
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sessionState:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6104
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->atState:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6105
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->ip:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6106
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->userCount:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6107
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hybridMode:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6109
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.hdrChanNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrChanNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6111
    :cond_0
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.uatiColorCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->uatiColorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6113
    :cond_1
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.txUati = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->txUati:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6114
    :cond_2
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.pilotPn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->pilotPn:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6115
    :cond_3
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.hdrRssi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrRssi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6116
    :cond_4
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.rxPwrRx0Dbm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx0Dbm:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6118
    :cond_5
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.rxPwrRx1Dbm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx1Dbm:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6120
    :cond_6
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.measPkts = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->measPkts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6122
    :cond_7
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.errPkts = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->errPkts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6123
    :cond_8
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.sessionState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sessionState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6125
    :cond_9
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.atState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->atState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6126
    :cond_a
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.ip = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->ip:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6127
    :cond_b
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.userCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->userCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6129
    :cond_c
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.hybridMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hybridMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6132
    :cond_d
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 6134
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6136
    :cond_e
    return-object v1
.end method

.method public static genericSIMToByteArr(I[B)[B
    .locals 5
    .param p0, "len"    # I
    .param p1, "command"    # [B

    .prologue
    .line 6212
    add-int/lit8 v2, p0, 0x8

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 6215
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const v2, 0x2050013

    add-int/lit8 v3, p0, 0x1

    invoke-static {v0, v2, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeGenericHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 6220
    int-to-byte v2, p0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 6221
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 6223
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 6225
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "genericSIMToByteArr: data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6227
    :cond_0
    return-object v1
.end method

.method public static hybridModeToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HybridModeState;ILjava/lang/String;)[B
    .locals 5
    .param p0, "hybridModeState"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HybridModeState;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 5820
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5822
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5824
    const/4 v2, 0x4

    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v2, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5828
    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HybridModeState;->toInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5830
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hybridModeToByteArr: hybridModeState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5833
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5835
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hybridModeToByteArr: data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5837
    :cond_1
    return-object v1
.end method

.method public static mobilePRevToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_MobilePRev;ILjava/lang/String;)[B
    .locals 5
    .param p0, "rev"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_MobilePRev;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 5792
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5794
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5796
    const/4 v2, 0x4

    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v2, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5800
    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_MobilePRev;->toInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5802
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobilePRevToByteArr: rev = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5804
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5806
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobilePRevToByteArr: data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5808
    :cond_1
    return-object v1
.end method

.method public static namInfoToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;ILjava/lang/String;)[B
    .locals 1
    .param p0, "namInfo"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 5416
    # invokes: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->isSprintProduct()Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5417
    invoke-static {p0, p1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->namInfoToByteArrSprint(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;ILjava/lang/String;)[B

    move-result-object v0

    .line 5419
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->namInfoToByteArrVZW(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;ILjava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static namInfoToByteArrSprint(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;ILjava/lang/String;)[B
    .locals 11
    .param p0, "namInfo"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/16 v9, 0x10

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 5610
    const/16 v4, 0x90

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5612
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5614
    const/16 v4, 0x7e

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v4, v5, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5618
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    array-length v3, v4

    .line 5619
    .local v3, "len":I
    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 5782
    :cond_0
    :goto_0
    return-object v1

    .line 5622
    :cond_1
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.mdn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5624
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 5625
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5624
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5627
    :cond_3
    const/16 v2, 0xa

    :goto_2
    if-ge v2, v9, :cond_4

    .line 5628
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5627
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5631
    :cond_4
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    array-length v3, v4

    .line 5632
    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 5635
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.min = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5637
    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_6

    .line 5638
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5637
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5640
    :cond_6
    const/16 v2, 0xa

    :goto_4
    if-ge v2, v9, :cond_7

    .line 5641
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5640
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 5644
    :cond_7
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_sid:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5645
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_nid:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5646
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->scm:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5648
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.h_sid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_sid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5649
    :cond_8
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.h_nid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_nid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5650
    :cond_9
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.scm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->scm:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5652
    :cond_a
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    array-length v3, v4

    .line 5653
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 5656
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.imsi11_12 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5658
    :cond_b
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_c

    .line 5659
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5658
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 5662
    :cond_c
    const/4 v2, 0x2

    :goto_6
    if-ge v2, v8, :cond_d

    .line 5663
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5662
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 5666
    :cond_d
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    array-length v3, v4

    .line 5667
    if-ne v3, v10, :cond_0

    .line 5670
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.imsiMcc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5672
    :cond_e
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_f

    .line 5673
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5672
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 5676
    :cond_f
    const/4 v2, 0x3

    :goto_8
    if-ge v2, v8, :cond_10

    .line 5677
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5676
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 5680
    :cond_10
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaA:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5681
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaB:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5682
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaA:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5683
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaB:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5684
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->vocoderType:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5686
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.priCdmaA = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaA:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5688
    :cond_11
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.priCdmaB = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaB:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5690
    :cond_12
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.secCdmaA = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaA:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5692
    :cond_13
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.secCdmaB = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaB:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5694
    :cond_14
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.vocoderType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->vocoderType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5697
    :cond_15
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    array-length v3, v4

    .line 5698
    if-ne v3, v10, :cond_0

    .line 5701
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.imsiMccT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5703
    :cond_16
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v3, :cond_17

    .line 5704
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5703
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 5706
    :cond_17
    const/4 v2, 0x3

    :goto_a
    if-ge v2, v8, :cond_18

    .line 5707
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5706
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 5710
    :cond_18
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    array-length v3, v4

    .line 5711
    const/16 v4, 0xf

    if-ne v3, v4, :cond_0

    .line 5714
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.imsiT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5716
    :cond_19
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v3, :cond_1a

    .line 5717
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5716
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 5719
    :cond_1a
    const/16 v2, 0xf

    :goto_c
    if-ge v2, v9, :cond_1b

    .line 5720
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5719
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 5723
    :cond_1b
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->accessOverloadClass:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5724
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.accessOverloadClass = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->accessOverloadClass:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5729
    :cond_1c
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMAddrNum:I

    if-nez v4, :cond_1d

    .line 5730
    const/16 v4, 0xff

    iput v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMAddrNum:I

    .line 5732
    :cond_1d
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMAddrNum:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5733
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.imsiMAddrNum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMAddrNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5736
    :cond_1e
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS1_0:[B

    array-length v3, v4

    .line 5737
    if-ne v3, v8, :cond_0

    .line 5740
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.imsiMS1_0 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS1_0:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5741
    :cond_1f
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v3, :cond_20

    .line 5742
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS1_0:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5741
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 5745
    :cond_20
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS2:[B

    array-length v3, v4

    .line 5746
    if-ne v3, v8, :cond_0

    .line 5749
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.imsiMS2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS2:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5750
    :cond_21
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v3, :cond_22

    .line 5751
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS2:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5750
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 5755
    :cond_22
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mob_term_home:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5756
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_23

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.mob_term_home = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mob_term_home:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5758
    :cond_23
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mob_term_sid:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5759
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_24

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.mob_term_sid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mob_term_sid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5761
    :cond_24
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mob_term_nid:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5762
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_25

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.mob_term_nid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mob_term_nid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5768
    :cond_25
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    array-length v3, v4

    .line 5769
    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 5772
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_26

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.newSpcCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5774
    :cond_26
    const/4 v2, 0x0

    :goto_f
    if-ge v2, v3, :cond_27

    .line 5775
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5774
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 5778
    :cond_27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5780
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: data = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static namInfoToByteArrVZW(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;ILjava/lang/String;)[B
    .locals 11
    .param p0, "namInfo"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/16 v9, 0x10

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 5426
    const/16 v4, 0x78

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5428
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5430
    const/16 v4, 0x66

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v4, v5, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5434
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    array-length v3, v4

    .line 5435
    .local v3, "len":I
    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 5604
    :cond_0
    :goto_0
    return-object v1

    .line 5438
    :cond_1
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.mdn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5440
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 5441
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5440
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5443
    :cond_3
    const/16 v2, 0xa

    :goto_2
    if-ge v2, v9, :cond_4

    .line 5444
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5443
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5447
    :cond_4
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    array-length v3, v4

    .line 5448
    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 5451
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.min = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5453
    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_6

    .line 5454
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5453
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5456
    :cond_6
    const/16 v2, 0xa

    :goto_4
    if-ge v2, v9, :cond_7

    .line 5457
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5456
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 5460
    :cond_7
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_sid:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5461
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_nid:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5462
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->scm:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5464
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.h_sid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_sid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5465
    :cond_8
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.h_nid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_nid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5466
    :cond_9
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.scm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->scm:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5468
    :cond_a
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    array-length v3, v4

    .line 5469
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 5472
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.imsi11_12 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5474
    :cond_b
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_c

    .line 5475
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5474
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 5478
    :cond_c
    const/4 v2, 0x2

    :goto_6
    if-ge v2, v8, :cond_d

    .line 5479
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5478
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 5482
    :cond_d
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    array-length v3, v4

    .line 5483
    if-ne v3, v10, :cond_0

    .line 5486
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.imsiMcc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5488
    :cond_e
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_f

    .line 5489
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5488
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 5492
    :cond_f
    const/4 v2, 0x3

    :goto_8
    if-ge v2, v8, :cond_10

    .line 5493
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5492
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 5496
    :cond_10
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaA:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5497
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaB:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5498
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaA:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5499
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaB:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5500
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->vocoderType:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5502
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.priCdmaA = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaA:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5504
    :cond_11
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.priCdmaB = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaB:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5506
    :cond_12
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.secCdmaA = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaA:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5508
    :cond_13
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.secCdmaB = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaB:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5510
    :cond_14
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.vocoderType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->vocoderType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5513
    :cond_15
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    array-length v3, v4

    .line 5514
    if-ne v3, v10, :cond_0

    .line 5517
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.imsiMccT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5519
    :cond_16
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v3, :cond_17

    .line 5520
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5519
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 5522
    :cond_17
    const/4 v2, 0x3

    :goto_a
    if-ge v2, v8, :cond_18

    .line 5523
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5522
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 5526
    :cond_18
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    array-length v3, v4

    .line 5527
    const/16 v4, 0xf

    if-ne v3, v4, :cond_0

    .line 5530
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.imsiT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5532
    :cond_19
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v3, :cond_1a

    .line 5533
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5532
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 5535
    :cond_1a
    const/16 v2, 0xf

    :goto_c
    if-ge v2, v9, :cond_1b

    .line 5536
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5535
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 5539
    :cond_1b
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->accessOverloadClass:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5540
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.accessOverloadClass = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->accessOverloadClass:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5590
    :cond_1c
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    array-length v3, v4

    .line 5591
    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 5594
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.newSpcCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5596
    :cond_1d
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v3, :cond_1e

    .line 5597
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5596
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 5600
    :cond_1e
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5602
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: data = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static namPrlVersionToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_PrlVersion;ILjava/lang/String;)[B
    .locals 5
    .param p0, "prl"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_PrlVersion;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 5874
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5876
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5878
    const/4 v2, 0x4

    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v2, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5882
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_PrlVersion;->prlVerison:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5884
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "namPrlVersionToByteArr: prlVerison = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_PrlVersion;->prlVerison:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5888
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5890
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "namPrlVersionToByteArr: data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5893
    :cond_1
    return-object v1
.end method

.method public static rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B
    .locals 1
    .param p0, "rde"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 5204
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {p0, p1, p2, v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)[B

    move-result-object v0

    return-object v0
.end method

.method public static rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)[B
    .locals 5
    .param p0, "rde"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;
    .param p3, "err"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .prologue
    const/4 v3, 0x0

    .line 5211
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->SIZE()I

    move-result v2

    :goto_0
    add-int/lit8 v2, v2, 0x12

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5213
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5215
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->SIZE()I

    move-result v2

    :goto_1
    invoke-static {v0, p1, v2, p3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5219
    if-eqz p0, :cond_0

    .line 5220
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5221
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5222
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5223
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    if-eqz v2, :cond_4

    .line 5224
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    invoke-interface {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5226
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    invoke-interface {v2, v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;->serialize(Ljava/nio/ByteBuffer;)V

    .line 5233
    :cond_0
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5234
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rdeDataToByteArr: data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5235
    :cond_1
    return-object v1

    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "data":[B
    :cond_2
    move v2, v3

    .line 5211
    goto :goto_0

    .restart local v0    # "buf":Ljava/nio/ByteBuffer;
    :cond_3
    move v2, v3

    .line 5215
    goto :goto_1

    .line 5228
    :cond_4
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5229
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_2
.end method

.method public static final readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .locals 6
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 7520
    new-instance v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    invoke-direct {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;-><init>()V

    .line 7523
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->msgId:I

    .line 7524
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->msgLength:I

    .line 7525
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->fromInt(I)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    move-result-object v3

    iput-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 7526
    const/4 v3, 0x6

    new-array v3, v3, [B

    iput-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->spcLockCode:[B

    .line 7527
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->spcLockCode:[B

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 7528
    iget-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->spcLockCode:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    aput-byte v4, v3, v2

    .line 7527
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7531
    :cond_0
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readHookHeader: msgId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->msgId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7532
    :cond_1
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readHookHeader: msgLength = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->msgLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7533
    :cond_2
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readHookHeader: error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-virtual {v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7536
    :cond_3
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readHookHeader: spcLockCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->spcLockCode:[B

    invoke-static {v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7542
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v2    # "i":I
    :cond_4
    :goto_1
    return-object v1

    .line 7538
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v0

    .line 7539
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static final readHookHeader([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 7514
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v0

    goto :goto_0
.end method

.method public static revOptionToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_RevOption;ILjava/lang/String;)[B
    .locals 5
    .param p0, "evdoRev"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_RevOption;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 5848
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5850
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5852
    const/4 v2, 0x4

    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v2, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5856
    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_RevOption;->toInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5858
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "revOptionToByteArr: evdoRev = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5860
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5862
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "revOptionToByteArr: data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5864
    :cond_1
    return-object v1
.end method

.method public static roamingListToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;ILjava/lang/String;)[B
    .locals 5
    .param p0, "roaming_list"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 5393
    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5395
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5397
    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;->size()I

    move-result v2

    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v2, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5399
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;->serialize(Ljava/nio/ByteBuffer;)V

    .line 5401
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5403
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "roamingListToByteArr: data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5405
    :cond_0
    return-object v1
.end method

.method public static serviceOptionToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ServiceOption;ILjava/lang/String;)[B
    .locals 5
    .param p0, "serviceOption"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ServiceOption;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 5246
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5248
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5250
    const/4 v2, 0x4

    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v2, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5254
    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ServiceOption;->toInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5256
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serviceOptionToByteArr: serviceOption = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ServiceOption;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5259
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5261
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serviceOptionToByteArr: data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5264
    :cond_1
    return-object v1
.end method

.method public static sidNidPairsToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;ILjava/lang/String;)[B
    .locals 6
    .param p0, "sidNidPairs"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 5358
    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->SIZE()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5360
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5362
    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->SIZE()I

    move-result v3

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v3, v4, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5366
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->sidNid:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 5367
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->sidNid:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;->sid:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5368
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->sidNid:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;->nid:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5370
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sidNidPairsToByteArr: sidNidPairs.sidNid["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "].sid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->sidNid:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;->sid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5372
    :cond_0
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sidNidPairsToByteArr: sidNidPairs.sidNid["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "].nid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->sidNid:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;->nid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5366
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5376
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5378
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sidNidPairsToByteArr: data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5380
    :cond_3
    return-object v1
.end method

.method public static subsidyPasswdToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;)[B
    .locals 7
    .param p0, "password"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;

    .prologue
    const/4 v6, 0x6

    .line 5271
    const/16 v3, 0x18

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5273
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5275
    const v3, 0x200000a

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;->password:[B

    invoke-static {v0, v3, v6, v4, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;[B)V

    .line 5281
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 5282
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;->password:[B

    aget-byte v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5281
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5284
    :cond_0
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subsidyPasswdToByteArr: password.password = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;->password:[B

    invoke-static {v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5287
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5289
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subsidyPasswdToByteArr: data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5292
    :cond_2
    return-object v1
.end method

.method public static writeGenericHookHeader(Ljava/nio/ByteBuffer;II)V
    .locals 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "msgId"    # I
    .param p2, "len"    # I

    .prologue
    .line 7504
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 7505
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 7507
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeGenericHookHeader: msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7508
    :cond_0
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeGenericHookHeader: msgLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7509
    :cond_1
    return-void
.end method

.method public static writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "msgId"    # I
    .param p2, "len"    # I
    .param p3, "err"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .prologue
    .line 7468
    const-string v0, "000000"

    invoke-static {p0, p1, p2, p3, v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 7470
    return-void
.end method

.method public static writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V
    .locals 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "msgId"    # I
    .param p2, "len"    # I
    .param p3, "err"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .param p4, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 7475
    const/4 v2, 0x6

    new-array v0, v2, [B

    .line 7476
    .local v0, "arrSpcLockCode":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 7477
    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 7476
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7480
    :cond_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;[B)V

    .line 7481
    return-void
.end method

.method public static writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;[B)V
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "msgId"    # I
    .param p2, "len"    # I
    .param p3, "err"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .param p4, "spcLockCode"    # [B

    .prologue
    .line 7486
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 7487
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 7488
    invoke-virtual {p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->toInt()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 7490
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 7491
    aget-byte v1, p4, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 7490
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7494
    :cond_0
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "OemCdmaTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeHookHeader: msgId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7495
    :cond_1
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "OemCdmaTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeHookHeader: msgLength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7496
    :cond_2
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "OemCdmaTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeHookHeader: error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7497
    :cond_3
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "OemCdmaTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeHookHeader: spcLockCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7499
    :cond_4
    return-void
.end method

.method public static writeHookHeader(Ljava/nio/ByteBuffer;Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;)V
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "header"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    .prologue
    .line 7461
    iget v0, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->msgId:I

    iget v1, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->msgLength:I

    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iget-object v3, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->spcLockCode:[B

    invoke-static {p0, v0, v1, v2, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;[B)V

    .line 7463
    return-void
.end method

.method public static writeHookHeader(I)[B
    .locals 2
    .param p0, "msgId"    # I

    .prologue
    .line 7444
    const/4 v0, 0x0

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {p0, v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)[B

    move-result-object v0

    return-object v0
.end method

.method public static writeHookHeader(IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)[B
    .locals 2
    .param p0, "msgId"    # I
    .param p1, "len"    # I
    .param p2, "err"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .prologue
    .line 7451
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 7452
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 7454
    invoke-static {v0, p0, p1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    .line 7455
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method
