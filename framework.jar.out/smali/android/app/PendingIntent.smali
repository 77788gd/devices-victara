.class public final Landroid/app/PendingIntent;
.super Ljava/lang/Object;
.source "PendingIntent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PendingIntent$FinishedDispatcher;,
        Landroid/app/PendingIntent$OnFinished;,
        Landroid/app/PendingIntent$CanceledException;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_CANCEL_CURRENT:I = 0x10000000

.field public static final FLAG_NO_CREATE:I = 0x20000000

.field public static final FLAG_ONE_SHOT:I = 0x40000000

.field public static final FLAG_UPDATE_CURRENT:I = 0x8000000


# instance fields
.field private final mTarget:Landroid/content/IIntentSender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 947
    new-instance v0, Landroid/app/PendingIntent$1;

    invoke-direct {v0}, Landroid/app/PendingIntent$1;-><init>()V

    sput-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/content/IIntentSender;)V
    .locals 0
    .param p1, "target"    # Landroid/content/IIntentSender;

    .prologue
    .line 989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 990
    iput-object p1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    .line 991
    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "target"    # Landroid/os/IBinder;

    .prologue
    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 994
    invoke-static {p1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    .line 995
    return-void
.end method

.method public static getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intents"    # [Landroid/content/Intent;
    .param p3, "flags"    # I

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intents"    # [Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 425
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, "packageName":Ljava/lang/String;
    array-length v0, p2

    new-array v7, v0, [Ljava/lang/String;

    .line 427
    .local v7, "resolvedTypes":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    array-length v0, p2

    if-ge v11, v0, :cond_0

    .line 428
    aget-object v0, p2, v11

    invoke-virtual {v0}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 429
    aget-object v0, p2, v11

    invoke-virtual {v0}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 430
    aget-object v0, p2, v11

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v11

    .line 427
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 433
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    move v5, p1

    move-object v6, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v12

    .line 438
    .local v12, "target":Landroid/content/IIntentSender;
    if-eqz v12, :cond_1

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v12}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .end local v12    # "target":Landroid/content/IIntentSender;
    :goto_1
    return-object v0

    .line 438
    .restart local v12    # "target":Landroid/content/IIntentSender;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 439
    .end local v12    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v0

    .line 441
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getActivitiesAsUser(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intents"    # [Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 451
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, "packageName":Ljava/lang/String;
    array-length v0, p2

    new-array v7, v0, [Ljava/lang/String;

    .line 453
    .local v7, "resolvedTypes":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    array-length v0, p2

    if-ge v11, v0, :cond_0

    .line 454
    aget-object v0, p2, v11

    invoke-virtual {v0}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 455
    aget-object v0, p2, v11

    invoke-virtual {v0}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 456
    aget-object v0, p2, v11

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v11

    .line 453
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 459
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    move v5, p1

    move-object v6, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v12

    .line 464
    .local v12, "target":Landroid/content/IIntentSender;
    if-eqz v12, :cond_1

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v12}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    .end local v12    # "target":Landroid/content/IIntentSender;
    :goto_1
    return-object v0

    .line 464
    .restart local v12    # "target":Landroid/content/IIntentSender;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 465
    .end local v12    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v0

    .line 467
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v11

    .line 289
    .local v11, "resolvedType":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 290
    invoke-virtual {p2}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 291
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object p2, v6, v5

    if-eqz v11, :cond_1

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v7, v5

    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    move v5, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v12

    .line 297
    .local v12, "target":Landroid/content/IIntentSender;
    if-eqz v12, :cond_2

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v12}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v12    # "target":Landroid/content/IIntentSender;
    :goto_2
    return-object v0

    .line 286
    .end local v11    # "resolvedType":Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 291
    .restart local v11    # "resolvedType":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 297
    .restart local v12    # "target":Landroid/content/IIntentSender;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 298
    .end local v12    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v0

    .line 300
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v11

    .line 314
    .local v11, "resolvedType":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 315
    invoke-virtual {p2}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 316
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object p2, v6, v5

    if-eqz v11, :cond_1

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v7, v5

    :goto_1
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    move v5, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v12

    .line 322
    .local v12, "target":Landroid/content/IIntentSender;
    if-eqz v12, :cond_2

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v12}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v12    # "target":Landroid/content/IIntentSender;
    :goto_2
    return-object v0

    .line 311
    .end local v11    # "resolvedType":Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 316
    .restart local v11    # "resolvedType":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 322
    .restart local v12    # "target":Landroid/content/IIntentSender;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 323
    .end local v12    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v0

    .line 325
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .prologue
    .line 495
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 506
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 507
    .local v2, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v11

    .line 510
    .local v11, "resolvedType":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 511
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object p2, v6, v5

    if-eqz v11, :cond_1

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v7, v5

    :goto_1
    const/4 v9, 0x0

    invoke-virtual/range {p4 .. p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    move v5, p1

    move/from16 v8, p3

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v12

    .line 517
    .local v12, "target":Landroid/content/IIntentSender;
    if-eqz v12, :cond_2

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v12}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    .end local v12    # "target":Landroid/content/IIntentSender;
    :goto_2
    return-object v0

    .line 507
    .end local v11    # "resolvedType":Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 511
    .restart local v11    # "resolvedType":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 517
    .restart local v12    # "target":Landroid/content/IIntentSender;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 518
    .end local v12    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v0

    .line 520
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .prologue
    .line 549
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v11

    .line 553
    .local v11, "resolvedType":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 554
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object p2, v6, v5

    if-eqz v11, :cond_1

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v7, v5

    :goto_1
    const/4 v9, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    move v5, p1

    move/from16 v8, p3

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v12

    .line 560
    .local v12, "target":Landroid/content/IIntentSender;
    if-eqz v12, :cond_2

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v12}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    .end local v12    # "target":Landroid/content/IIntentSender;
    :goto_2
    return-object v0

    .line 550
    .end local v11    # "resolvedType":Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 554
    .restart local v11    # "resolvedType":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 560
    .restart local v12    # "target":Landroid/content/IIntentSender;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 561
    .end local v12    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v0

    .line 563
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 985
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 986
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/app/PendingIntent;

    invoke-direct {v1, v0}, Landroid/app/PendingIntent;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "sender"    # Landroid/app/PendingIntent;
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 969
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 971
    return-void

    .line 969
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 582
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->cancelIntentSender(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :goto_0
    return-void

    .line 583
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 940
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    .line 916
    instance-of v0, p1, Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    check-cast p1, Landroid/app/PendingIntent;

    .end local p1    # "otherObj":Ljava/lang/Object;
    iget-object v1, p1, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 920
    :goto_0
    return v0

    .restart local p1    # "otherObj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCreatorPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 781
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 785
    :goto_0
    return-object v1

    .line 783
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCreatorUid()I
    .locals 3

    .prologue
    .line 809
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 813
    :goto_0
    return v1

    .line 811
    :catch_0
    move-exception v0

    .line 813
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getCreatorUserHandle()Landroid/os/UserHandle;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 840
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v4, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v2, v4}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v1

    .line 842
    .local v1, "uid":I
    if-lez v1, :cond_0

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    .end local v1    # "uid":I
    :goto_0
    return-object v2

    .restart local v1    # "uid":I
    :cond_0
    move-object v2, v3

    .line 842
    goto :goto_0

    .line 843
    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    move-object v2, v3

    .line 845
    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 883
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 887
    :goto_0
    return-object v1

    .line 885
    :catch_0
    move-exception v0

    .line 887
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIntentSender()Landroid/content/IntentSender;
    .locals 2

    .prologue
    .line 573
    new-instance v0, Landroid/content/IntentSender;

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-direct {v0, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v0
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 897
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 901
    :goto_0
    return-object v1

    .line 899
    :catch_0
    move-exception v0

    .line 901
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTarget()Landroid/content/IIntentSender;
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    return-object v0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 752
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 756
    :goto_0
    return-object v1

    .line 754
    :catch_0
    move-exception v0

    .line 756
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isActivity()Z
    .locals 3

    .prologue
    .line 869
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 873
    :goto_0
    return v1

    .line 871
    :catch_0
    move-exception v0

    .line 873
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTargetedToPackage()Z
    .locals 3

    .prologue
    .line 855
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 859
    :goto_0
    return v1

    .line 857
    :catch_0
    move-exception v0

    .line 859
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyEquals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 1006
    :try_start_0
    instance-of v1, p1, Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 1007
    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1}, Landroid/content/IIntentSender;->getKey()I

    move-result v1

    check-cast p1, Landroid/app/PendingIntent;

    .end local p1    # "otherObj":Ljava/lang/Object;
    iget-object v2, p1, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v2}, Landroid/content/IIntentSender;->getKey()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1010
    :cond_0
    :goto_0
    return v0

    .line 1009
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public send()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 596
    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method public send(I)V
    .locals 7
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 610
    move-object v0, p0

    move v2, p1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method public send(ILandroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "onFinished"    # Landroid/app/PendingIntent$OnFinished;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 651
    move-object v0, p0

    move v2, p1

    move-object v3, v1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 630
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 631
    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "onFinished"    # Landroid/app/PendingIntent$OnFinished;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    .line 687
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 688
    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "onFinished"    # Landroid/app/PendingIntent$OnFinished;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 730
    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 733
    .local v3, "resolvedType":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    if-eqz p4, :cond_0

    new-instance v4, Landroid/app/PendingIntent$FinishedDispatcher;

    invoke-direct {v4, p0, p4, p5}, Landroid/app/PendingIntent$FinishedDispatcher;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    :cond_0
    move v1, p2

    move-object v2, p3

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/content/IIntentSender;->send(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;)I

    move-result v7

    .line 738
    .local v7, "res":I
    if-gez v7, :cond_2

    .line 739
    new-instance v0, Landroid/app/PendingIntent$CanceledException;

    invoke-direct {v0}, Landroid/app/PendingIntent$CanceledException;-><init>()V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    .end local v3    # "resolvedType":Ljava/lang/String;
    .end local v7    # "res":I
    :catch_0
    move-exception v6

    .line 742
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v0, Landroid/app/PendingIntent$CanceledException;

    invoke-direct {v0, v6}, Landroid/app/PendingIntent$CanceledException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_1
    move-object v3, v4

    .line 730
    goto :goto_0

    .line 744
    .restart local v3    # "resolvedType":Ljava/lang/String;
    .restart local v7    # "res":I
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 931
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "PendingIntent{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 935
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 936
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 934
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 944
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 945
    return-void
.end method
