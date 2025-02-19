.class public Lcom/android/internal/policy/impl/PhoneWindowManagerWithPartialDisplay;
.super Lcom/android/internal/policy/impl/PhoneWindowManager;
.source "PhoneWindowManagerWithPartialDisplay.java"


# static fields
.field static final DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "PhoneWindowManagerWithPartialDisplay"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;-><init>()V

    return-void
.end method

.method private static getPartialDisplayService()Landroid/app/IPartialDisplayService;
    .locals 2

    .prologue
    .line 27
    const-string v1, "partial_display_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IPartialDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IPartialDisplayService;

    move-result-object v0

    .line 30
    .local v0, "partialDisplayService":Landroid/app/IPartialDisplayService;
    return-object v0
.end method


# virtual methods
.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v3

    .line 36
    .local v3, "result":I
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerWithPartialDisplay;->getPartialDisplayService()Landroid/app/IPartialDisplayService;

    move-result-object v2

    .line 37
    .local v2, "partialDisplayService":Landroid/app/IPartialDisplayService;
    const/high16 v4, 0x20000000

    and-int/2addr v4, p2

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 38
    .local v1, "interactive":Z
    :goto_0
    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x1a

    if-ne v4, v5, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 43
    if-eqz v2, :cond_0

    .line 45
    :try_start_0
    invoke-interface {v2}, Landroid/app/IPartialDisplayService;->notifyPowerKeyWakeup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_0
    :goto_1
    return v3

    .line 37
    .end local v1    # "interactive":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 46
    .restart local v1    # "interactive":Z
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "PhoneWindowManagerWithPartialDisplay"

    const-string v5, "remote exception for notifyPowerKeyWakeup"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
