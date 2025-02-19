.class Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;
.super Ljava/lang/Thread;
.source "CheckinProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/server/checkin/CheckinProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventInsertThread"
.end annotation


# static fields
.field private static final QUEUE_FLUSH:Ljava/lang/String; = "QUEUE_FLUSH"


# instance fields
.field private mInsertValues:[Landroid/content/ContentValues;

.field private mMaxWaitDuration:J

.field private mNumInsertValues:I

.field private mTransfer:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitThreshold:J

.field final synthetic this$0:Lcom/motorola/android/server/checkin/CheckinProvider;


# direct methods
.method constructor <init>(Lcom/motorola/android/server/checkin/CheckinProvider;IJ)V
    .locals 3
    .param p2, "capacity"    # I
    .param p3, "maxWait"    # J

    .prologue
    .line 850
    iput-object p1, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->this$0:Lcom/motorola/android/server/checkin/CheckinProvider;

    .line 851
    const-string v0, "EventInsertThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 852
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mTransfer:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 853
    new-array v0, p2, [Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mInsertValues:[Landroid/content/ContentValues;

    .line 854
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mNumInsertValues:I

    .line 855
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mWaitThreshold:J

    .line 856
    iput-wide p3, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mMaxWaitDuration:J

    .line 857
    return-void
.end method

.method private isFlushRequest(Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 981
    if-nez p1, :cond_0

    .line 982
    const/4 v0, 0x0

    .line 983
    :goto_0
    return v0

    :cond_0
    const-string v0, "QUEUE_FLUSH"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private isReadyToInsert(Landroid/content/ContentValues;)Z
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v0, 0x1

    .line 963
    iget v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mNumInsertValues:I

    iget-object v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mInsertValues:[Landroid/content/ContentValues;

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 973
    :cond_0
    :goto_0
    return v0

    .line 968
    :cond_1
    iget v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mNumInsertValues:I

    if-lez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->isFlushRequest(Landroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mWaitThreshold:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 973
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private waitForValues()Landroid/content/ContentValues;
    .locals 10

    .prologue
    .line 934
    const/4 v4, 0x0

    .line 937
    .local v4, "values":Landroid/content/ContentValues;
    :try_start_0
    iget v5, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mNumInsertValues:I

    if-lez v5, :cond_1

    .line 940
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 941
    .local v2, "now":J
    iget-wide v6, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mWaitThreshold:J

    cmp-long v5, v6, v2

    if-lez v5, :cond_0

    .line 942
    iget-object v5, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mTransfer:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-wide v6, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mWaitThreshold:J

    sub-long/2addr v6, v2

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/content/ContentValues;

    move-object v4, v0

    .line 954
    .end local v2    # "now":J
    :cond_0
    :goto_0
    return-object v4

    .line 946
    :cond_1
    iget-object v5, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mTransfer:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/content/ContentValues;

    move-object v4, v0

    .line 948
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mMaxWaitDuration:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mWaitThreshold:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 950
    :catch_0
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method public queueFlush()V
    .locals 3

    .prologue
    .line 879
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 880
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "QUEUE_FLUSH"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 881
    invoke-virtual {p0, v0}, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->queueInsert(Landroid/content/ContentValues;)V

    .line 882
    monitor-enter v0

    .line 885
    :goto_0
    :try_start_0
    const-string v1, "QUEUE_FLUSH"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 887
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 888
    :catch_0
    move-exception v1

    goto :goto_0

    .line 892
    :cond_0
    :try_start_2
    monitor-exit v0

    .line 893
    return-void

    .line 892
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public queueInsert(Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 867
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mTransfer:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    :goto_0
    return-void

    .line 868
    :catch_0
    move-exception v0

    .line 869
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "CheckinProvider"

    const-string/jumbo v2, "queueInsert interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 899
    const-string v1, "CheckinProvider"

    const-string v2, "EventInsertThread started"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->waitForValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 905
    .local v0, "values":Landroid/content/ContentValues;
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->isFlushRequest(Landroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 906
    iget-object v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mInsertValues:[Landroid/content/ContentValues;

    iget v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mNumInsertValues:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mNumInsertValues:I

    aput-object v0, v1, v2

    .line 909
    :cond_1
    invoke-direct {p0, v0}, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->isReadyToInsert(Landroid/content/ContentValues;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 910
    iget-object v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->this$0:Lcom/motorola/android/server/checkin/CheckinProvider;

    iget-object v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mInsertValues:[Landroid/content/ContentValues;

    iget v3, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mNumInsertValues:I

    # invokes: Lcom/motorola/android/server/checkin/CheckinProvider;->insertEvents([Landroid/content/ContentValues;I)V
    invoke-static {v1, v2, v3}, Lcom/motorola/android/server/checkin/CheckinProvider;->access$000(Lcom/motorola/android/server/checkin/CheckinProvider;[Landroid/content/ContentValues;I)V

    .line 913
    :goto_1
    iget v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mNumInsertValues:I

    if-lez v1, :cond_2

    .line 914
    iget-object v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mInsertValues:[Landroid/content/ContentValues;

    iget v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mNumInsertValues:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mNumInsertValues:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_1

    .line 918
    :cond_2
    invoke-direct {p0, v0}, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->isFlushRequest(Landroid/content/ContentValues;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 920
    monitor-enter v0

    .line 921
    :try_start_0
    const-string v1, "QUEUE_FLUSH"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 922
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 923
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
