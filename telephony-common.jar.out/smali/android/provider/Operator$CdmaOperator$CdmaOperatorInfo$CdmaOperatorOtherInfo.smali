.class public final Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;
.super Ljava/lang/Object;
.source "Operator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CdmaOperatorOtherInfo"
.end annotation


# instance fields
.field public mEmergencyCallBack:Ljava/lang/String;

.field public mIntlRoamCallBack:Ljava/lang/String;

.field public mPauseResumeFeatureCode:Ljava/lang/String;

.field public mThreeWayCallFeatureCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method copyFrom(Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;

    .prologue
    .line 322
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;->mThreeWayCallFeatureCode:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;->mThreeWayCallFeatureCode:Ljava/lang/String;

    .line 324
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;->mPauseResumeFeatureCode:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;->mPauseResumeFeatureCode:Ljava/lang/String;

    .line 326
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;->mEmergencyCallBack:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;->mEmergencyCallBack:Ljava/lang/String;

    .line 328
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;->mIntlRoamCallBack:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;->mIntlRoamCallBack:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nmThreeWayCallFeatureCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;->mThreeWayCallFeatureCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmPauseResumeFeatureCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;->mPauseResumeFeatureCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmEmergencyCallBack = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;->mEmergencyCallBack:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmIntlRoamCallBack = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;->mIntlRoamCallBack:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
