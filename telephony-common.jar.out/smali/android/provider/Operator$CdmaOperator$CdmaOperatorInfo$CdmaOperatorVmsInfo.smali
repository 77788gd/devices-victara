.class public final Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;
.super Ljava/lang/Object;
.source "Operator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CdmaOperatorVmsInfo"
.end annotation


# instance fields
.field public mVoiceMailNotificationDisable:Ljava/lang/String;

.field public mVoiceMailNotificationEnable:Ljava/lang/String;

.field public mVoiceMailNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method copyFrom(Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;

    .prologue
    .line 282
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;->mVoiceMailNotificationEnable:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;->mVoiceMailNotificationEnable:Ljava/lang/String;

    .line 284
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;->mVoiceMailNotificationDisable:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;->mVoiceMailNotificationDisable:Ljava/lang/String;

    .line 286
    iget-object v0, p1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;->mVoiceMailNumber:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;->mVoiceMailNumber:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nmVoiceMailNotificationEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;->mVoiceMailNotificationEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmVoiceMailNotificationDisable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;->mVoiceMailNotificationDisable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmVoiceMailNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;->mVoiceMailNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
