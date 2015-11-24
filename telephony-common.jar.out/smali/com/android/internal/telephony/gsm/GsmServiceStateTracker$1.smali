.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 214
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    if-nez v2, :cond_1

    .line 215
    const-string v2, "GsmSST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received Intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " while being destroyed. Ignoring."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 225
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handleLocaleChanged()V

    goto :goto_0

    .line 229
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto :goto_0

    .line 231
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.ACTION_RADIO_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 232
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$102(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z

    .line 233
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v2

    iget-object v0, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 234
    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto :goto_0

    .line 235
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "Received Intent ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 240
    const-string v2, "rafs"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 243
    .local v1, "newPhoneRcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 245
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "EXTRA_RADIO_ACCESS_FAMILY not present."

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSetPhoneRCDone(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
