.class public Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "GsmInboundSmsHandler.java"


# instance fields
.field private final mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 50
    const-string v1, "GsmInboundSmsHandler"

    invoke-static {p1, p3}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V

    .line 52
    iget-object v0, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 53
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    iget-object v1, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    .line 54
    return-void
.end method

.method public static makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 73
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;)V

    .line 74
    .local v0, "handler":Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->start()V

    .line 75
    return-object v0
.end method

.method private static resultToCause(I)I
    .locals 1
    .param p0, "rc"    # I

    .prologue
    .line 185
    packed-switch p0, :pswitch_data_0

    .line 194
    :pswitch_0
    const/16 v0, 0xff

    :goto_0
    return v0

    .line 189
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 191
    :pswitch_2
    const/16 v0, 0xd3

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->resultToCause(I)I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 161
    return-void
.end method

.method protected dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 8
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 97
    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    .line 100
    .local v2, "sms":Lcom/android/internal/telephony/gsm/SmsMessage;
    if-eqz v2, :cond_3

    .line 101
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v1

    .line 102
    .local v1, "rawPdu":[B
    if-eqz v1, :cond_2

    .line 103
    sget-boolean v6, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v6, :cond_0

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rawPdu.length= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", rawPdu= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexStringWithSpaceSep([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 115
    .end local v1    # "rawPdu":[B
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 118
    const-string v4, "Received short message type 0, Don\'t display or store it. Send Ack"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 149
    :cond_1
    :goto_1
    return v5

    .line 108
    .restart local v1    # "rawPdu":[B
    :cond_2
    const-string v6, "warning! rawPdu is null"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    .end local v1    # "rawPdu":[B
    :cond_3
    const-string v6, "warning! sms is null"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_4
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isUsimDataDownload()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 124
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v3

    .line 125
    .local v3, "ust":Lcom/android/internal/telephony/uicc/UsimServiceTable;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    invoke-virtual {v4, v3, v2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->handleUsimDataDownload(Lcom/android/internal/telephony/uicc/UsimServiceTable;Lcom/android/internal/telephony/gsm/SmsMessage;)I

    move-result v5

    goto :goto_1

    .line 128
    .end local v3    # "ust":Lcom/android/internal/telephony/uicc/UsimServiceTable;
    :cond_5
    const/4 v0, 0x0

    .line 129
    .local v0, "handled":Z
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 130
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getNumOfVoicemails()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->updateMessageWaitingIndicator(I)V

    .line 131
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v0

    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received voice mail indicator set SMS shouldStore="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v0, :cond_6

    move v4, v5

    :cond_6
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 138
    :cond_7
    :goto_2
    if-nez v0, :cond_1

    .line 142
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v4, v5, :cond_a

    .line 146
    const/4 v5, 0x3

    goto :goto_1

    .line 133
    :cond_8
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 134
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->updateMessageWaitingIndicator(I)V

    .line 135
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v0

    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received voice mail indicator clear SMS shouldStore="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v0, :cond_9

    move v4, v5

    :cond_9
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 149
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v5

    goto/16 :goto_1
.end method

.method protected is3gpp2()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmSms(Landroid/os/Handler;)V

    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispose()V

    .line 64
    const-string v0, "unregistered for 3GPP SMS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 65
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->onQuitting()V

    .line 66
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 173
    const-string v0, "onUpdatePhoneObject: dispose of old CellBroadcastHandler and make a new one"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispose()V

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    .line 177
    return-void
.end method

.method public updateMessageWaitingIndicator(I)V
    .locals 5
    .param p1, "mwi"    # I

    .prologue
    const/4 v4, 0x1

    .line 203
    if-gez p1, :cond_1

    .line 204
    const/4 p1, -0x1

    .line 211
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageCount(I)V

    .line 213
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 215
    .local v1, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_2

    .line 216
    const-string v2, "updateMessageWaitingIndicator: updating SIM Records"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 217
    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 218
    .local v0, "onComplete":Landroid/os/Message;
    invoke-virtual {v1, v4, p1, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMessageWaiting(IILandroid/os/Message;)V

    .line 222
    .end local v0    # "onComplete":Landroid/os/Message;
    :goto_1
    const-string v2, "save VM count to preference"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->storeVoiceMailCount()V

    .line 224
    return-void

    .line 205
    .end local v1    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    const/16 v2, 0xff

    if-le p1, v2, :cond_0

    .line 208
    const/16 p1, 0xff

    goto :goto_0

    .line 220
    .restart local v1    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    const-string v2, "updateMessageWaitingIndicator: SIM Records not found"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_1
.end method
