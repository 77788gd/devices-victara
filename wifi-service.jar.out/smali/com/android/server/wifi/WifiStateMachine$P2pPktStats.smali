.class Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pPktStats"
.end annotation


# instance fields
.field private pktRate:Landroid/net/wifi/WifiInfo;

.field private rxPackets:J

.field private rxPrevSuccessRate:D

.field private skipScanCount:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;

.field private txPackets:J

.field private txPrevSuccessRate:D


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    .line 9682
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9683
    iput-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->txPrevSuccessRate:D

    .line 9684
    iput-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->rxPrevSuccessRate:D

    .line 9685
    iput-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->txPackets:J

    .line 9686
    iput-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->rxPackets:J

    .line 9687
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->skipScanCount:I

    .line 9688
    new-instance v0, Landroid/net/wifi/WifiInfo;

    invoke-direct {v0}, Landroid/net/wifi/WifiInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->pktRate:Landroid/net/wifi/WifiInfo;

    .line 9689
    return-void
.end method

.method private calculateP2pPacketRate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 9692
    const-string v0, "p2p0"

    invoke-static {v0}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->txPackets:J

    .line 9693
    const-string v0, "p2p0"

    invoke-static {v0}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->rxPackets:J

    .line 9695
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->pktRate:Landroid/net/wifi/WifiInfo;

    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->txPackets:J

    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->rxPackets:J

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/net/wifi/WifiInfo;->updatePacketRates(JJ)V

    .line 9696
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%.2f"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->pktRate:Landroid/net/wifi/WifiInfo;

    iget-wide v4, v4, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%.2f"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->pktRate:Landroid/net/wifi/WifiInfo;

    iget-wide v4, v4, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%.2f"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->txPrevSuccessRate:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%.2f"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->rxPrevSuccessRate:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->txPackets:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->rxPackets:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$30400(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9701
    return-void
.end method


# virtual methods
.method public isPktSuccessRateHigh()Z
    .locals 8

    .prologue
    .line 9704
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->pktRate:Landroid/net/wifi/WifiInfo;

    iget-wide v4, v4, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    iput-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->txPrevSuccessRate:D

    .line 9705
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->pktRate:Landroid/net/wifi/WifiInfo;

    iget-wide v4, v4, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    iput-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->rxPrevSuccessRate:D

    .line 9706
    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->txPrevSuccessRate:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->rxPrevSuccessRate:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 9707
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->txPrevSuccessRate:D

    .line 9708
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->rxPrevSuccessRate:D

    .line 9710
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->calculateP2pPacketRate()V

    .line 9712
    const-wide/16 v2, 0x0

    .local v2, "tx":D
    const-wide/16 v0, 0x0

    .line 9713
    .local v0, "rx":D
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->pktRate:Landroid/net/wifi/WifiInfo;

    iget-wide v4, v4, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    iget-wide v6, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->txPrevSuccessRate:D

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v2, v4, v6

    .line 9714
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->pktRate:Landroid/net/wifi/WifiInfo;

    iget-wide v4, v4, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    iget-wide v6, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->rxPrevSuccessRate:D

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v0, v4, v6

    .line 9716
    const-wide v4, 0x4051800000000000L    # 70.0

    cmpl-double v4, v2, v4

    if-gtz v4, :cond_1

    const-wide v4, 0x4051800000000000L    # 70.0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_5

    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->pktRate:Landroid/net/wifi/WifiInfo;

    iget-wide v4, v4, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    const-wide v6, 0x40b3880000000000L    # 5000.0

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->pktRate:Landroid/net/wifi/WifiInfo;

    iget-wide v4, v4, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    const-wide v6, 0x40b3880000000000L    # 5000.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_5

    .line 9717
    :cond_2
    iget v4, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->skipScanCount:I

    if-nez v4, :cond_4

    .line 9718
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v4

    sget-object v5, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v4, v5, :cond_3

    .line 9719
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->skipScanCount:I

    .line 9727
    :goto_0
    iget v4, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->skipScanCount:I

    if-gtz v4, :cond_6

    const/4 v4, 0x0

    :goto_1
    return v4

    .line 9721
    :cond_3
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->skipScanCount:I

    goto :goto_0

    .line 9723
    :cond_4
    iget v4, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->skipScanCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->skipScanCount:I

    goto :goto_0

    .line 9725
    :cond_5
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wifi/WifiStateMachine$P2pPktStats;->skipScanCount:I

    goto :goto_0

    .line 9727
    :cond_6
    const/4 v4, 0x1

    goto :goto_1
.end method
