.class final Lcom/motorola/android/camera/CameraMotExt$EnvCallback;
.super Ljava/lang/Object;
.source "CameraMotExt.java"

# interfaces
.implements Landroid/hardware/Camera$EnvDetectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/camera/CameraMotExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EnvCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/camera/CameraMotExt;


# direct methods
.method private constructor <init>(Lcom/motorola/android/camera/CameraMotExt;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/motorola/android/camera/CameraMotExt$EnvCallback;->this$0:Lcom/motorola/android/camera/CameraMotExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/camera/CameraMotExt;Lcom/motorola/android/camera/CameraMotExt$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/android/camera/CameraMotExt;
    .param p2, "x1"    # Lcom/motorola/android/camera/CameraMotExt$1;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/motorola/android/camera/CameraMotExt$EnvCallback;-><init>(Lcom/motorola/android/camera/CameraMotExt;)V

    return-void
.end method


# virtual methods
.method public onEnvDetectEvent(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/hardware/Camera;)V
    .locals 1
    .param p1, "EnvDetectEvent"    # Ljava/lang/Integer;
    .param p2, "EventData1"    # Ljava/lang/Integer;
    .param p3, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/motorola/android/camera/CameraMotExt$EnvCallback;->this$0:Lcom/motorola/android/camera/CameraMotExt;

    # getter for: Lcom/motorola/android/camera/CameraMotExt;->mEnvDetectCallback:Lcom/motorola/android/camera/CameraMotExt$EnvDetectCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/CameraMotExt;->access$100(Lcom/motorola/android/camera/CameraMotExt;)Lcom/motorola/android/camera/CameraMotExt$EnvDetectCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/motorola/android/camera/CameraMotExt$EnvCallback;->this$0:Lcom/motorola/android/camera/CameraMotExt;

    # getter for: Lcom/motorola/android/camera/CameraMotExt;->mEnvDetectCallback:Lcom/motorola/android/camera/CameraMotExt$EnvDetectCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/CameraMotExt;->access$100(Lcom/motorola/android/camera/CameraMotExt;)Lcom/motorola/android/camera/CameraMotExt$EnvDetectCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/motorola/android/camera/CameraMotExt$EnvDetectCallback;->onEnvDetectEvent(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/hardware/Camera;)V

    .line 33
    :cond_0
    return-void
.end method
