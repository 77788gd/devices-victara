.class Lcom/android/server/pm/PackageManagerService$MeasureParams$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$MeasureParams;->handleStartCopy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$MeasureParams;)V
    .locals 0

    .prologue
    .line 8910
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 8910
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8914
    new-instance v18, Landroid/os/Environment$UserEnvironment;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$2700(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/PackageStats;->userHandle:I

    move/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 8916
    .local v18, "userEnv":Landroid/os/Environment$UserEnvironment;
    invoke-virtual/range {v18 .. v18}, Landroid/os/Environment$UserEnvironment;->getExternalDirsForApp()[Ljava/io/File;

    move-result-object v5

    .line 8918
    .local v5, "dirsForApp":[Ljava/io/File;
    const-wide/16 v8, 0x0

    .line 8919
    .local v8, "externalCacheSize":J
    const-wide/16 v10, 0x0

    .line 8920
    .local v10, "externalDataSize":J
    const-wide/16 v12, 0x0

    .line 8921
    .local v12, "externalMediaSize":J
    const-wide/16 v14, 0x0

    .line 8923
    .local v14, "externalObbSize":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_5

    .line 8924
    aget-object v4, v5, v7

    .line 8925
    .local v4, "dir":Ljava/io/File;
    invoke-static {v4}, Landroid/os/Environment;->isExternalStorageEmulated(Ljava/io/File;)Z

    move-result v6

    .line 8927
    .local v6, "emulated":Z
    if-eqz v6, :cond_2

    .line 8928
    const/16 v16, 0x1

    .line 8935
    .local v16, "mounted":Z
    :goto_1
    if-eqz v16, :cond_1

    .line 8936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$2700(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v20

    aget-object v20, v20, v7

    # invokes: Lcom/android/server/pm/PackageManagerService;->calculateDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static/range {v19 .. v20}, Lcom/android/server/pm/PackageManagerService;->access$2800(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v8

    .line 8939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$2700(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v20

    aget-object v20, v20, v7

    # invokes: Lcom/android/server/pm/PackageManagerService;->calculateDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static/range {v19 .. v20}, Lcom/android/server/pm/PackageManagerService;->access$2800(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v10

    .line 8943
    sub-long/2addr v10, v8

    .line 8945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$2700(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v20

    aget-object v20, v20, v7

    # invokes: Lcom/android/server/pm/PackageManagerService;->calculateDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static/range {v19 .. v20}, Lcom/android/server/pm/PackageManagerService;->access$2800(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v12

    .line 8948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$2700(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v20

    aget-object v20, v20, v7

    # invokes: Lcom/android/server/pm/PackageManagerService;->calculateDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static/range {v19 .. v20}, Lcom/android/server/pm/PackageManagerService;->access$2800(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v14

    .line 8951
    if-eqz v6, :cond_0

    .line 8952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$2700(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v19

    move-object/from16 v0, v19

    iput-wide v8, v0, Landroid/content/pm/PackageStats;->emulatedCacheSize:J

    .line 8953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$2700(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v19

    move-object/from16 v0, v19

    iput-wide v10, v0, Landroid/content/pm/PackageStats;->emulatedDataSize:J

    .line 8954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$2700(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v19

    move-object/from16 v0, v19

    iput-wide v12, v0, Landroid/content/pm/PackageStats;->emulatedMediaSize:J

    .line 8955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$2700(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v19

    move-object/from16 v0, v19

    iput-wide v14, v0, Landroid/content/pm/PackageStats;->emulatedObbSize:J

    .line 8958
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$2700(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v19

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    move-wide/from16 v20, v0

    add-long v20, v20, v8

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 8959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$2700(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v19

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->externalDataSize:J

    move-wide/from16 v20, v0

    add-long v20, v20, v10

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 8960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$2700(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v19

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->externalMediaSize:J

    move-wide/from16 v20, v0

    add-long v20, v20, v12

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Landroid/content/pm/PackageStats;->externalMediaSize:J

    .line 8961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$2700(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v19

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->externalObbSize:J

    move-wide/from16 v20, v0

    add-long v20, v20, v14

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Landroid/content/pm/PackageStats;->externalObbSize:J

    .line 8923
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 8930
    .end local v16    # "mounted":Z
    :cond_2
    invoke-static {v4}, Landroid/os/Environment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v17

    .line 8931
    .local v17, "state":Ljava/lang/String;
    const-string v19, "mounted"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    const-string v19, "mounted_ro"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    :cond_3
    const/16 v16, 0x1

    .restart local v16    # "mounted":Z
    :goto_2
    goto/16 :goto_1

    .end local v16    # "mounted":Z
    :cond_4
    const/16 v16, 0x0

    goto :goto_2

    .line 8965
    .end local v4    # "dir":Ljava/io/File;
    .end local v6    # "emulated":Z
    .end local v17    # "state":Ljava/lang/String;
    :cond_5
    const/16 v19, 0x0

    return-object v19
.end method
