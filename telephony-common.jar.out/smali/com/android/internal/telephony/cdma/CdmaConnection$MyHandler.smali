.class Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;
.super Landroid/os/Handler;
.source "CdmaConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaConnection;Landroid/os/Looper;)V
    .locals 0
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 110
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 114
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processNextPostDialChar()V

    goto :goto_0

    .line 117
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CdmaConnection;

    # invokes: Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->access$000(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    goto :goto_0

    .line 121
    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    # invokes: Lcom/android/internal/telephony/cdma/CdmaConnection;->onLineControlInfo(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->access$100(Lcom/android/internal/telephony/cdma/CdmaConnection;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 110
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method
