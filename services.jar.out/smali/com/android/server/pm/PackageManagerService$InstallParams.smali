.class Lcom/android/server/pm/PackageManagerService$InstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field installFlags:I

.field final installerPackageName:Ljava/lang/String;

.field private mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private mRet:I

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final packageAbiOverride:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final verificationParams:Landroid/content/pm/VerificationParams;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0
    .param p2, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p4, "installFlags"    # I
    .param p5, "installerPackageName"    # Ljava/lang/String;
    .param p6, "verificationParams"    # Landroid/content/pm/VerificationParams;
    .param p7, "user"    # Landroid/os/UserHandle;
    .param p8, "packageAbiOverride"    # Ljava/lang/String;

    .prologue
    .line 9109
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 9110
    invoke-direct {p0, p1, p7}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 9111
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 9112
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 9113
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 9114
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 9115
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    .line 9116
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 9117
    return-void
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I
    .locals 9
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 9133
    iget-object v3, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 9134
    .local v3, "packageName":Ljava/lang/String;
    iget v1, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 9135
    .local v1, "installLocation":I
    iget v7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_1

    move v2, v5

    .line 9137
    .local v2, "onSd":Z
    :goto_0
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 9138
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    .line 9139
    .local v4, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_6

    .line 9140
    iget v8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_9

    .line 9142
    iget v8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v8, v8, 0x80

    if-nez v8, :cond_0

    .line 9144
    :try_start_1
    # invokes: Lcom/android/server/pm/PackageManagerService;->checkDowngrade(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageInfoLite;)V
    invoke-static {v4, p1}, Lcom/android/server/pm/PackageManagerService;->access$2900(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageInfoLite;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9151
    :cond_0
    :try_start_2
    iget-object v8, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    .line 9152
    if-eqz v2, :cond_2

    .line 9153
    const-string v5, "PackageManager"

    const-string v6, "Cannot install update to system app on sdcard"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9154
    const/4 v5, -0x3

    monitor-exit v7

    .line 9187
    :goto_1
    return v5

    .line 9135
    .end local v2    # "onSd":Z
    .end local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 9145
    .restart local v2    # "onSd":Z
    .restart local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catch_0
    move-exception v0

    .line 9146
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Downgrade detected: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9147
    const/4 v5, -0x7

    monitor-exit v7

    goto :goto_1

    .line 9181
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 9156
    .restart local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_2
    :try_start_3
    monitor-exit v7

    goto :goto_1

    .line 9158
    :cond_3
    if-eqz v2, :cond_4

    .line 9160
    monitor-exit v7

    move v5, v6

    goto :goto_1

    .line 9163
    :cond_4
    if-ne v1, v5, :cond_5

    .line 9165
    monitor-exit v7

    goto :goto_1

    .line 9166
    :cond_5
    if-ne v1, v6, :cond_7

    .line 9181
    :cond_6
    monitor-exit v7

    .line 9184
    if-eqz v2, :cond_a

    move v5, v6

    .line 9185
    goto :goto_1

    .line 9170
    :cond_7
    # invokes: Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$900(Landroid/content/pm/PackageParser$Package;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 9171
    monitor-exit v7

    move v5, v6

    goto :goto_1

    .line 9173
    :cond_8
    monitor-exit v7

    goto :goto_1

    .line 9178
    :cond_9
    const/4 v5, -0x4

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 9187
    :cond_a
    iget v5, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_1
.end method


# virtual methods
.method public getManifestDigest()Landroid/content/pm/ManifestDigest;
    .locals 1

    .prologue
    .line 9126
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    if-nez v0, :cond_0

    .line 9127
    const/4 v0, 0x0

    .line 9129
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v0}, Landroid/content/pm/VerificationParams;->getManifestDigest()Landroid/content/pm/ManifestDigest;

    move-result-object v0

    goto :goto_0
.end method

.method handleReturnCode()V
    .locals 3

    .prologue
    .line 9446
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_0

    .line 9447
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$1800(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 9449
    :cond_0
    return-void
.end method

.method handleServiceError()V
    .locals 1

    .prologue
    .line 9453
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->createInstallArgs(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->access$3000(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 9454
    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 9455
    return-void
.end method

.method public handleStartCopy()V
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 9197
    const/16 v25, 0x1

    .line 9200
    .local v25, "ret":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-eqz v4, :cond_0

    .line 9201
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    if-eqz v4, :cond_b

    .line 9202
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x10

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 9203
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x9

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 9212
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_d

    const/16 v20, 0x1

    .line 9213
    .local v20, "onSd":Z
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_e

    const/16 v17, 0x1

    .line 9215
    .local v17, "onInt":Z
    :goto_2
    const/16 v21, 0x0

    .line 9217
    .local v21, "pkgLite":Landroid/content/pm/PackageInfoLite;
    if-eqz v17, :cond_f

    if-eqz v20, :cond_f

    .line 9219
    const-string v4, "PackageManager"

    const-string v6, "Conflicting flags specified for installing on both internal and external"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9220
    const/16 v25, -0x13

    .line 9259
    :cond_1
    :goto_3
    const/4 v4, 0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_2

    .line 9260
    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    move/from16 v16, v0

    .line 9261
    .local v16, "loc":I
    const/4 v4, -0x3

    move/from16 v0, v16

    if-ne v0, v4, :cond_11

    .line 9262
    const/16 v25, -0x13

    .line 9294
    .end local v16    # "loc":I
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    # invokes: Lcom/android/server/pm/PackageManagerService;->createInstallArgs(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->access$3000(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v14

    .line 9295
    .local v14, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 9297
    const/4 v4, 0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_a

    .line 9302
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v31

    .line 9303
    .local v31, "userIdentifier":I
    const/4 v4, -0x1

    move/from16 v0, v31

    if-ne v0, v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_3

    .line 9305
    const/16 v31, 0x0

    .line 9312
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$3100(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_19

    const/16 v23, -0x1

    .line 9314
    .local v23, "requiredUid":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    if-nez v4, :cond_1b

    const/4 v4, -0x1

    move/from16 v0, v23

    if-eq v0, v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v0, v31

    # invokes: Lcom/android/server/pm/PackageManagerService;->isVerificationEnabled(II)Z
    invoke-static {v4, v0, v6}, Lcom/android/server/pm/PackageManagerService;->access$3200(Lcom/android/server/pm/PackageManagerService;II)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 9316
    new-instance v5, Landroid/content/Intent;

    const-string v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9318
    .local v5, "verification":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9319
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v6, "application/vnd.android.package-archive"

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 9321
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v6, "application/vnd.android.package-archive"

    const/16 v7, 0x200

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v22

    .line 9333
    .local v22, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # operator++ for: Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$3308(Lcom/android/server/pm/PackageManagerService;)I

    move-result v32

    .line 9335
    .local v32, "verificationId":I
    const-string v4, "android.content.pm.extra.VERIFICATION_ID"

    move/from16 v0, v32

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9337
    const-string v4, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9340
    const-string v4, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9343
    const-string v4, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9346
    const-string v4, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    move-object/from16 v0, v21

    iget v6, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9349
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    if-eqz v4, :cond_8

    .line 9350
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getVerificationURI()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 9351
    const-string v4, "android.content.pm.extra.VERIFICATION_URI"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v6}, Landroid/content/pm/VerificationParams;->getVerificationURI()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 9354
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getOriginatingURI()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 9355
    const-string v4, "android.intent.extra.ORIGINATING_URI"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v6}, Landroid/content/pm/VerificationParams;->getOriginatingURI()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 9358
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getReferrer()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 9359
    const-string v4, "android.intent.extra.REFERRER"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v6}, Landroid/content/pm/VerificationParams;->getReferrer()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 9362
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getOriginatingUid()I

    move-result v4

    if-ltz v4, :cond_7

    .line 9363
    const-string v4, "android.intent.extra.ORIGINATING_UID"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v6}, Landroid/content/pm/VerificationParams;->getOriginatingUid()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9366
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v4

    if-ltz v4, :cond_8

    .line 9367
    const-string v4, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v6}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9372
    :cond_8
    new-instance v33, Lcom/android/server/pm/PackageVerificationState;

    move-object/from16 v0, v33

    move/from16 v1, v23

    invoke-direct {v0, v1, v14}, Lcom/android/server/pm/PackageVerificationState;-><init>(ILcom/android/server/pm/PackageManagerService$InstallArgs;)V

    .line 9375
    .local v33, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 9377
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v33

    # invokes: Lcom/android/server/pm/PackageManagerService;->matchVerifiers(Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$3400(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v30

    .line 9384
    .local v30, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v30, :cond_9

    .line 9385
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v13

    .line 9386
    .local v13, "N":I
    if-nez v13, :cond_1a

    .line 9387
    const-string v4, "PackageManager"

    const-string v6, "Additional verifiers required, but none installed."

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9388
    const/16 v25, -0x16

    .line 9401
    .end local v13    # "N":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$3100(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    # invokes: Lcom/android/server/pm/PackageManagerService;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;
    invoke-static {v4, v6, v0}, Lcom/android/server/pm/PackageManagerService;->access$3500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v24

    .line 9403
    .local v24, "requiredVerifierComponent":Landroid/content/ComponentName;
    const/4 v4, 0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$3100(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 9410
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    const-string v7, "android.permission.PACKAGE_VERIFICATION_AGENT"

    new-instance v8, Lcom/android/server/pm/PackageManagerService$InstallParams$1;

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v8, v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams$1;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 9427
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 9438
    .end local v5    # "verification":Landroid/content/Intent;
    .end local v22    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v23    # "requiredUid":I
    .end local v24    # "requiredVerifierComponent":Landroid/content/ComponentName;
    .end local v30    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v31    # "userIdentifier":I
    .end local v32    # "verificationId":I
    .end local v33    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_a
    :goto_6
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 9439
    return-void

    .line 9204
    .end local v14    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v17    # "onInt":Z
    .end local v20    # "onSd":Z
    .end local v21    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 9205
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 9206
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x11

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_0

    .line 9208
    :cond_c
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v6, "Invalid stage location"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 9212
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 9213
    .restart local v20    # "onSd":Z
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 9222
    .restart local v17    # "onInt":Z
    .restart local v21    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v21

    .line 9229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-nez v4, :cond_1

    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 9232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v28

    .line 9233
    .local v28, "storage":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v18

    .line 9236
    .local v18, "lowThreshold":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->isForwardLocked()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lcom/android/internal/app/IMediaContainerService;->calculateInstalledSize(Ljava/lang/String;ZLjava/lang/String;)J

    move-result-wide v26

    .line 9239
    .local v26, "sizeBytes":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    add-long v6, v26, v18

    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/Installer;->freeCache(J)I

    move-result v4

    if-ltz v4, :cond_10

    .line 9240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v21

    .line 9251
    :cond_10
    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v6, -0x6

    if-ne v4, v6, :cond_1

    .line 9253
    const/4 v4, -0x1

    move-object/from16 v0, v21

    iput v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto/16 :goto_3

    .line 9263
    .end local v18    # "lowThreshold":J
    .end local v26    # "sizeBytes":J
    .end local v28    # "storage":Landroid/os/storage/StorageManager;
    .restart local v16    # "loc":I
    :cond_11
    const/4 v4, -0x4

    move/from16 v0, v16

    if-ne v0, v4, :cond_12

    .line 9264
    const/16 v25, -0x1

    goto/16 :goto_4

    .line 9265
    :cond_12
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_13

    .line 9266
    const/16 v25, -0x4

    goto/16 :goto_4

    .line 9267
    :cond_13
    const/4 v4, -0x2

    move/from16 v0, v16

    if-ne v0, v4, :cond_14

    .line 9268
    const/16 v25, -0x2

    goto/16 :goto_4

    .line 9269
    :cond_14
    const/4 v4, -0x6

    move/from16 v0, v16

    if-ne v0, v4, :cond_15

    .line 9270
    const/16 v25, -0x3

    goto/16 :goto_4

    .line 9271
    :cond_15
    const/4 v4, -0x5

    move/from16 v0, v16

    if-ne v0, v4, :cond_16

    .line 9272
    const/16 v25, -0x14

    goto/16 :goto_4

    .line 9275
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I

    move-result v16

    .line 9276
    const/4 v4, -0x7

    move/from16 v0, v16

    if-ne v0, v4, :cond_17

    .line 9277
    const/16 v25, -0x19

    goto/16 :goto_4

    .line 9278
    :cond_17
    if-nez v20, :cond_2

    if-nez v17, :cond_2

    .line 9280
    const/4 v4, 0x2

    move/from16 v0, v16

    if-ne v0, v4, :cond_18

    .line 9282
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 9283
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x11

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_4

    .line 9287
    :cond_18
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x10

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 9288
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x9

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_4

    .line 9312
    .end local v16    # "loc":I
    .restart local v14    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .restart local v31    # "userIdentifier":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$3100(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v4, v6, v0}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v23

    goto/16 :goto_5

    .line 9390
    .restart local v5    # "verification":Landroid/content/Intent;
    .restart local v13    # "N":I
    .restart local v22    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v23    # "requiredUid":I
    .restart local v30    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v32    # "verificationId":I
    .restart local v33    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_1a
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_7
    if-ge v15, v13, :cond_9

    .line 9391
    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/ComponentName;

    .line 9393
    .local v34, "verifierComponent":Landroid/content/ComponentName;
    new-instance v29, Landroid/content/Intent;

    move-object/from16 v0, v29

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 9394
    .local v29, "sufficientIntent":Landroid/content/Intent;
    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9396
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 9390
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 9434
    .end local v5    # "verification":Landroid/content/Intent;
    .end local v13    # "N":I
    .end local v15    # "i":I
    .end local v22    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v29    # "sufficientIntent":Landroid/content/Intent;
    .end local v30    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v32    # "verificationId":I
    .end local v33    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .end local v34    # "verifierComponent":Landroid/content/ComponentName;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v14, v4, v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v25

    goto/16 :goto_6
.end method

.method public isForwardLocked()Z
    .locals 1

    .prologue
    .line 9458
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
