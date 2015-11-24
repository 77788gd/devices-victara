.class public final Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;
.super Ljava/lang/Object;
.source "Operator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CdmaOperatorCallForwordInfo"
.end annotation


# instance fields
.field public mBusyCallForwardToVmsDisable:Ljava/lang/String;

.field public mBusyCallForwardToVmsEnable:Ljava/lang/String;

.field public mBusyCallForwordDisable:Ljava/lang/String;

.field public mBusyCallForwordEnable:Ljava/lang/String;

.field public mCancelAllCallForwordDisable:Ljava/lang/String;

.field public mCancelAllCallForwordEnable:Ljava/lang/String;

.field public mDefaultCallForwaordDisable:Ljava/lang/String;

.field public mDefaultCallForwordEnable:Ljava/lang/String;

.field public mDoNotDisturbDisable:Ljava/lang/String;

.field public mDoNotDisturbEnable:Ljava/lang/String;

.field public mInternationalCallForwardDisable:Ljava/lang/String;

.field public mInternationalCallForwardEnable:Ljava/lang/String;

.field public mNoAnswerCallForwardToVmsDisable:Ljava/lang/String;

.field public mNoAnswerCallForwardToVmsEnable:Ljava/lang/String;

.field public mNoAnswerCallForwordDisable:Ljava/lang/String;

.field public mNoAnswerCallForwordEnable:Ljava/lang/String;

.field public mUnconditionalCallForwardToVmsDisable:Ljava/lang/String;

.field public mUnconditionalCallForwardToVmsEnable:Ljava/lang/String;

.field public mUnconditionalCallForwordDisable:Ljava/lang/String;

.field public mUnconditionalCallForwordEnable:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method copyFrom(Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    .prologue
    .line 208
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwordEnable:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwordEnable:Ljava/lang/String;

    .line 210
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwordDisable:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwordDisable:Ljava/lang/String;

    .line 212
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDefaultCallForwordEnable:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDefaultCallForwordEnable:Ljava/lang/String;

    .line 214
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDefaultCallForwaordDisable:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDefaultCallForwaordDisable:Ljava/lang/String;

    .line 216
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwordEnable:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwordEnable:Ljava/lang/String;

    .line 218
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwordDisable:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwordDisable:Ljava/lang/String;

    .line 220
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwordEnable:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwordEnable:Ljava/lang/String;

    .line 222
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwordDisable:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwordDisable:Ljava/lang/String;

    .line 224
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mCancelAllCallForwordEnable:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mCancelAllCallForwordEnable:Ljava/lang/String;

    .line 226
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mCancelAllCallForwordDisable:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mCancelAllCallForwordDisable:Ljava/lang/String;

    .line 228
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mInternationalCallForwardEnable:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mInternationalCallForwardEnable:Ljava/lang/String;

    .line 230
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mInternationalCallForwardDisable:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mInternationalCallForwardDisable:Ljava/lang/String;

    .line 232
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwardToVmsEnable:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwardToVmsEnable:Ljava/lang/String;

    .line 234
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwardToVmsDisable:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwardToVmsDisable:Ljava/lang/String;

    .line 236
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwardToVmsEnable:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwardToVmsEnable:Ljava/lang/String;

    .line 238
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwardToVmsDisable:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwardToVmsDisable:Ljava/lang/String;

    .line 240
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwardToVmsEnable:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwardToVmsEnable:Ljava/lang/String;

    .line 242
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwardToVmsDisable:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwardToVmsDisable:Ljava/lang/String;

    .line 244
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDoNotDisturbEnable:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDoNotDisturbEnable:Ljava/lang/String;

    .line 246
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDoNotDisturbDisable:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDoNotDisturbDisable:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUnconditionalCallForwordEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwordEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmUnconditionalCallForwordDisable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwordDisable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmDefaultCallForwordEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDefaultCallForwordEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmDefaultCallForwaordDisable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDefaultCallForwaordDisable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmBusyCallForwordEnable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwordEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmBusyCallForwordDisable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwordDisable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmNoAnswerCallForwordEnable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwordEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmNoAnswerCallForwordDisable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwordDisable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmCancelAllCallForwordEnable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mCancelAllCallForwordEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmCancelAllCallForwordDisable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mCancelAllCallForwordDisable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmInternationalCallForwardEnable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mInternationalCallForwardEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmInternationalCallForwardDisable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mInternationalCallForwardDisable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmUnconditionalCallForwardToVmsEnable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwardToVmsEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmUnconditionalCallForwardToVmsDisable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwardToVmsDisable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmBusyCallForwardToVmsEnable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwardToVmsEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmBusyCallForwardToVmsDisable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwardToVmsDisable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmNoAnswerCallForwardToVmsEnable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwardToVmsEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmNoAnswerCallForwardToVmsDisable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwardToVmsDisable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmDoNotDisturbEnable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDoNotDisturbEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmDoNotDisturbDisable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDoNotDisturbDisable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
