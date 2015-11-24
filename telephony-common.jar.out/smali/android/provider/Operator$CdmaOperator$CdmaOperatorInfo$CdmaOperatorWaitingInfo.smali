.class public final Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorWaitingInfo;
.super Ljava/lang/Object;
.source "Operator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CdmaOperatorWaitingInfo"
.end annotation


# instance fields
.field public mCallWaitingDisable:Ljava/lang/String;

.field public mCallWaitingEnable:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method copyFrom(Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorWaitingInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorWaitingInfo;

    .prologue
    .line 302
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorWaitingInfo;->mCallWaitingEnable:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorWaitingInfo;->mCallWaitingEnable:Ljava/lang/String;

    .line 304
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorWaitingInfo;->mCallWaitingDisable:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorWaitingInfo;->mCallWaitingDisable:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n mCallWaitingEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorWaitingInfo;->mCallWaitingEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n mCallWaittingDisable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorWaitingInfo;->mCallWaitingDisable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
