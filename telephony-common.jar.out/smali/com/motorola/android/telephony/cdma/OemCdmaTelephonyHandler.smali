.class public Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;
.super Landroid/os/Handler;
.source "OemCdmaTelephonyHandler.java"


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_UNSOL_OEM_HOOK_RAW:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "OemCdmaTelephonyHandler"


# instance fields
.field private mCM:Lcom/android/internal/telephony/BaseCommands;

.field private mIsConcurrentVoiceAndDataAllowed:Z

.field private mIsDataSuspended:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;->mIsDataSuspended:Z

    .line 50
    iput-boolean v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;->mIsConcurrentVoiceAndDataAllowed:Z

    .line 55
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 56
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/BaseCommands;

    check-cast v0, Lcom/android/internal/telephony/BaseCommands;

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;->mCM:Lcom/android/internal/telephony/BaseCommands;

    .line 57
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;->mCM:Lcom/android/internal/telephony/BaseCommands;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/BaseCommands;->setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 58
    return-void
.end method

.method private handleUnsolicitedOemHookRaw([B)V
    .locals 6
    .param p1, "rawData"    # [B

    .prologue
    .line 81
    array-length v4, p1

    if-gtz v4, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 84
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 86
    .local v1, "cdmaHdr":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    if-eqz v1, :cond_0

    .line 88
    iget v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->msgId:I

    const v5, 0x20001b0

    if-ne v4, v5, :cond_2

    .line 90
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sprint.mip.error.notification"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "errorcode"

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    const-string v4, "OemCdmaTelephonyHandler"

    const-string v5, "MIP ErrorNotify fails."

    invoke-static {v4, v5, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 100
    .end local v2    # "e":Ljava/nio/BufferUnderflowException;
    :cond_2
    iget v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->msgId:I

    const v5, 0x20001b2

    if-ne v4, v5, :cond_0

    .line 102
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sprint.vsncp.error.notification"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v4, "errorcode"

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 106
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 107
    .restart local v2    # "e":Ljava/nio/BufferUnderflowException;
    const-string v4, "OemCdmaTelephonyHandler"

    const-string v5, "VSNCP ErrorNotify fails."

    invoke-static {v4, v5, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;->mCM:Lcom/android/internal/telephony/BaseCommands;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/BaseCommands;->unSetOnUnsolOemHookRaw(Landroid/os/Handler;)V

    .line 62
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 67
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 74
    const-string v1, "OemCdmaTelephonyHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled message with number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 70
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {p0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;->handleUnsolicitedOemHookRaw([B)V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
