.class public Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;
.super Landroid/os/Handler;
.source "PreferredNetworkSwitcher.java"


# static fields
.field static final EVENT_DISCONNECT_CURRENT_DSS_LINK:I = 0x0

.field static final EVENT_ORGINAL_PREFFERED_NETWORK_TYPE:I = 0x1

.field static final EVENT_SET_2G_PREFFERED_NETWORK_TYPE:I = 0x2

.field static final EVENT_SET_ADVANCED_PREFFERED_NETWORK_TYPE:I = 0x4

.field static final EVENT_TIME_OUT:I = 0x6

.field static final EVENT_VERIFY_2G_PREFFERED_NETWORK_TYPE:I = 0x3

.field static final EVENT_VERRIFY_ADVANCED_PREFFERED_NETWORK_TYPE:I = 0x5

.field static final LOG_TAG:Ljava/lang/String; = "PreferredNetworkSwitcher"

.field public static final PERMISSION:Ljava/lang/String; = "com.motorola.SUBSCRIPTION_NETWORKTYPE_AUTOSWITCH"

.field static final TIME_DELAY:I = 0x1f4

.field static final TIME_OUT:I = 0xea60

.field private static mInProcess:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private m2GPhoneId:I

.field private m2GSubId:I

.field private mAdvancedPhoneId:I

.field private mAdvancedSub:I

.field private mContext:Landroid/content/Context;

.field mPhones:[Lcom/android/internal/telephony/Phone;

.field private mSubCtrl:Lcom/android/internal/telephony/SubscriptionController;

.field private mUiccCtrl:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mInProcess:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 63
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 66
    iput-object p1, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mContext:Landroid/content/Context;

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    aput-object v2, v1, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    const-string v1, "PreferredNetworkSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PreferredNetworkSwitcher mPhones.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mSubCtrl:Lcom/android/internal/telephony/SubscriptionController;

    .line 73
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mUiccCtrl:Lcom/android/internal/telephony/uicc/UiccController;

    .line 75
    return-void
.end method

.method private isSubActive(I)Z
    .locals 7
    .param p1, "subId"    # I

    .prologue
    .line 315
    const/4 v2, 0x0

    .line 316
    .local v2, "subActive":Z
    iget-object v4, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mSubCtrl:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 318
    .local v0, "activeSubList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v0, :cond_1

    .line 319
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 320
    .local v3, "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 321
    const-string v4, "PreferredNetworkSwitcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSubActive, found active sub "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v2, 0x1

    .line 327
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return v2
.end method

.method private setNwModeToSettings(II)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "nwMode"    # I

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mSubCtrl:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 168
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferred_network_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    :goto_0
    return-void

    .line 173
    :cond_0
    const-string v1, "PreferredNetworkSwitcher"

    const-string v2, "subId is not valid, this shouldn\'t happened."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v1, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, p1, p2}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method


# virtual methods
.method broadcastResult(Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;)V
    .locals 4
    .param p1, "status"    # Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    .prologue
    .line 152
    const-string v1, "PreferredNetworkSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastResult: status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v1, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mInProcess:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 154
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->removeMessages(I)V

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.intent.action.SUBSCRIPTION_NETWORKTYPE_AUTOSWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "status"

    invoke-virtual {p1}, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    iget-object v1, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 164
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 183
    const-string v4, "PreferredNetworkSwitcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msg.what="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 312
    :goto_0
    return-void

    .line 187
    :pswitch_0
    const-string v4, "PreferredNetworkSwitcher"

    const-string v5, "disconnect done success "

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v4, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    iget v5, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    aget-object v4, v4, v5

    invoke-static {p0, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0

    .line 192
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 193
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    .line 194
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    aget v3, v4, v8

    .line 196
    .local v3, "type":I
    const-string v4, "PreferredNetworkSwitcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAdvancedSub="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v4, "ro.telephony.default_network"

    sget v5, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 199
    .local v1, "defaultPrefNetwork":I
    if-ne v3, v1, :cond_0

    .line 200
    const-string v4, "PreferredNetworkSwitcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "existing sub already in advanced network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v4, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->SUCCESS:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->broadcastResult(Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    iget v5, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->m2GPhoneId:I

    aget-object v4, v4, v5

    const/4 v5, 0x2

    invoke-static {p0, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v7, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 206
    iget v4, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->m2GPhoneId:I

    invoke-direct {p0, v4, v7}, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->setNwModeToSettings(II)V

    goto/16 :goto_0

    .line 210
    .end local v1    # "defaultPrefNetwork":I
    .end local v3    # "type":I
    :cond_1
    const-string v4, "PreferredNetworkSwitcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error to get preferred network type on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object v4, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->FAIL:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->broadcastResult(Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;)V

    goto/16 :goto_0

    .line 215
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 216
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 217
    iget-object v4, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    iget v5, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->m2GPhoneId:I

    aget-object v4, v4, v5

    invoke-static {p0, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 222
    :cond_2
    iget v4, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->m2GSubId:I

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->isSubActive(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 223
    const-string v4, "PreferredNetworkSwitcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The card is not activated, continue get preferred network type for sub "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->m2GPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v4, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    iget v5, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->m2GPhoneId:I

    aget-object v4, v4, v5

    invoke-static {p0, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 227
    :cond_3
    const-string v4, "PreferredNetworkSwitcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error to set 2G only on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->m2GPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object v4, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->FAIL:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->broadcastResult(Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;)V

    goto/16 :goto_0

    .line 234
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 235
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_6

    .line 236
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    aget v3, v4, v8

    .line 237
    .restart local v3    # "type":I
    const-string v4, "PreferredNetworkSwitcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "m2GSub="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->m2GPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v4, "ro.telephony.default_network"

    sget v5, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 241
    .local v2, "defaultType":I
    if-ne v3, v7, :cond_4

    .line 242
    iget-object v4, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    iget v5, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    aget-object v4, v4, v5

    invoke-static {p0, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 245
    iget v4, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->setNwModeToSettings(II)V

    goto/16 :goto_0

    .line 250
    :cond_4
    iget v4, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->m2GSubId:I

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->isSubActive(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 252
    const-string v4, "PreferredNetworkSwitcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The card is not activate, so ignore it, continue set advanced network sub "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v4, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    iget v5, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    aget-object v4, v4, v5

    invoke-static {p0, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 257
    iget v4, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->setNwModeToSettings(II)V

    goto/16 :goto_0

    .line 260
    :cond_5
    const-string v4, "PreferredNetworkSwitcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not desired 2g network type on m2GSub="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->m2GPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sget-object v4, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->FAIL:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->broadcastResult(Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;)V

    goto/16 :goto_0

    .line 266
    .end local v2    # "defaultType":I
    .end local v3    # "type":I
    :cond_6
    const-string v4, "PreferredNetworkSwitcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error to set 2g network type on m2GSub="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->m2GPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    sget-object v4, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->FAIL:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->broadcastResult(Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;)V

    goto/16 :goto_0

    .line 272
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 273
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_7

    .line 274
    iget-object v4, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    iget v5, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    aget-object v4, v4, v5

    const/4 v5, 0x5

    invoke-static {p0, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 277
    :cond_7
    const-string v4, "PreferredNetworkSwitcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error to set advanced network on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    sget-object v4, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->FAIL:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->broadcastResult(Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;)V

    goto/16 :goto_0

    .line 282
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 283
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_9

    .line 284
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    aget v3, v4, v8

    .line 285
    .restart local v3    # "type":I
    const-string v4, "PreferredNetworkSwitcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "m3GSub="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v4, "ro.telephony.default_network"

    sget v5, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_8

    .line 288
    const-string v4, "PreferredNetworkSwitcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "success to set 3g on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    sget-object v4, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->SUCCESS:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->broadcastResult(Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;)V

    goto/16 :goto_0

    .line 291
    :cond_8
    const-string v4, "PreferredNetworkSwitcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not desired advanced network type on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    sget-object v4, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->FAIL:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->broadcastResult(Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;)V

    goto/16 :goto_0

    .line 295
    .end local v3    # "type":I
    :cond_9
    const-string v4, "PreferredNetworkSwitcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error to set advanced network on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget-object v4, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->FAIL:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->broadcastResult(Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;)V

    goto/16 :goto_0

    .line 302
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v4, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200dd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 304
    const-string v4, "PreferredNetworkSwitcher"

    const-string v5, "broadcast fake SUCCESS"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    sget-object v4, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->SUCCESS:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->broadcastResult(Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;)V

    goto/16 :goto_0

    .line 307
    :cond_a
    sget-object v4, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->TIMEOUT:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->broadcastResult(Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;)V

    goto/16 :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setNetworkTypeAutoSwitch(I)Z
    .locals 9
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 79
    iget-object v6, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x11200dd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 81
    const-string v5, "PreferredNetworkSwitcher"

    const-string v6, "setNetworkTypeAutoSwitch: fake return"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v5, 0x6

    const-wide/16 v6, 0x1f4

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->sendEmptyMessageDelayed(IJ)Z

    .line 148
    :goto_0
    return v4

    .line 86
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mInProcess:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 87
    const-string v4, "PreferredNetworkSwitcher"

    const-string v6, "setNetworkTypeAutoSwitch: in process now"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 88
    goto :goto_0

    .line 90
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mInProcess:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 92
    iput p1, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedSub:I

    .line 93
    iget-object v6, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mSubCtrl:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    .line 95
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v6, v6

    if-ge v3, v6, :cond_2

    .line 96
    iget v6, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    if-eq v3, v6, :cond_4

    .line 97
    iput v3, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->m2GPhoneId:I

    .line 101
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mSubCtrl:Lcom/android/internal/telephony/SubscriptionController;

    iget v7, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->m2GPhoneId:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->m2GSubId:I

    .line 103
    const-string v6, "PreferredNetworkSwitcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setNetworkTypeAutoSwitch: m3GSub="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", m2GSub="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->m2GPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget v6, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    if-ltz v6, :cond_3

    iget v6, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    iget-object v7, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-le v6, v7, :cond_5

    .line 107
    :cond_3
    const-string v4, "PreferredNetworkSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNetworkTypeAutoSwitch: sub "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not valid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v4, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mInProcess:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v4, v5

    .line 109
    goto/16 :goto_0

    .line 95
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 111
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mUiccCtrl:Lcom/android/internal/telephony/uicc/UiccController;

    iget v7, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 112
    .local v1, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v6, v7, :cond_6

    .line 113
    const-string v4, "PreferredNetworkSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNetworkTypeAutoSwitch: card "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not present"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v4, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mInProcess:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v4, v5

    .line 116
    goto/16 :goto_0

    .line 120
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->isSubActive(I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 122
    const-string v4, "PreferredNetworkSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNetworkTypeAutoSwitch: sub "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not active"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object v4, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mInProcess:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v4, v5

    .line 124
    goto/16 :goto_0

    .line 126
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mUiccCtrl:Lcom/android/internal/telephony/uicc/UiccController;

    iget v7, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    invoke-virtual {v6, v7, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 128
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v0, :cond_8

    .line 129
    const-string v4, "PreferredNetworkSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNetworkTypeAutoSwitch: can not find app on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v4, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mInProcess:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v4, v5

    .line 131
    goto/16 :goto_0

    .line 133
    :cond_8
    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v7

    if-eq v6, v7, :cond_9

    .line 134
    const-string v4, "PreferredNetworkSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNetworkTypeAutoSwitch: app on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mAdvancedPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not ready"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v4, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->mInProcess:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v4, v5

    .line 137
    goto/16 :goto_0

    .line 140
    :cond_9
    sget-object v6, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->START:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->broadcastResult(Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;)V

    .line 141
    iget v6, p0, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->m2GPhoneId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 146
    .local v2, "dataLinkCleanedUpMsg":Landroid/os/Message;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/PreferredNetworkSwitcher;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
