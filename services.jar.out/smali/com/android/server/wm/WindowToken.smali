.class Lcom/android/server/wm/WindowToken;
.super Ljava/lang/Object;
.source "WindowToken.java"


# instance fields
.field appWindowToken:Lcom/android/server/wm/AppWindowToken;

.field final explicit:Z

.field hasVisible:Z

.field hidden:Z

.field paused:Z

.field sendingToBottom:Z

.field final service:Lcom/android/server/wm/WindowManagerService;

.field stringName:Ljava/lang/String;

.field final token:Landroid/os/IBinder;

.field waitingToHide:Z

.field waitingToShow:Z

.field final windowType:I

.field final windows:Lcom/android/server/wm/WindowList;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZ)V
    .locals 1
    .param p1, "_service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "_token"    # Landroid/os/IBinder;
    .param p3, "type"    # I
    .param p4, "_explicit"    # Z

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/server/wm/WindowList;

    invoke-direct {v0}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 75
    iput-object p1, p0, Lcom/android/server/wm/WindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    .line 76
    iput-object p2, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 77
    iput p3, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    .line 78
    iput-boolean p4, p0, Lcom/android/server/wm/WindowToken;->explicit:Z

    .line 79
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "windows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "windowType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 93
    const-string v0, " hidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->hidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 94
    const-string v0, " hasVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 95
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->waitingToHide:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->sendingToBottom:Z

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "waitingToShow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 97
    const-string v0, " waitingToHide="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->waitingToHide:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 98
    const-string v0, " sendingToBottom="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->sendingToBottom:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 100
    :cond_1
    return-void
.end method

.method removeAllWindows()V
    .locals 5

    .prologue
    .line 82
    iget-object v2, p0, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "winNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 83
    iget-object v2, p0, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 86
    .local v0, "win":Lcom/android/server/wm/WindowState;
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;Z)V

    .line 82
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 88
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "WindowToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    .line 111
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    return-object v1
.end method
