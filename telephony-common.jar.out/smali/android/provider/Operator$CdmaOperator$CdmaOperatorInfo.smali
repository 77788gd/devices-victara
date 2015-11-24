.class public final Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
.super Landroid/provider/Operator$OperatorInfoBasic;
.source "Operator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Operator$CdmaOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CdmaOperatorInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;,
        Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorWaitingInfo;,
        Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;,
        Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;,
        Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$QueryColumns;
    }
.end annotation


# instance fields
.field public mCallForwordInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

.field public mIgnoreSpn:Ljava/lang/String;

.field public mOtherInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;

.field public mPref:Ljava/lang/String;

.field public mVmsInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;

.field public mWaitingInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorWaitingInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/provider/Operator$OperatorInfoBasic;-><init>(Landroid/provider/Operator$1;)V

    .line 343
    new-instance v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    invoke-direct {v0}, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;-><init>()V

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mCallForwordInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    .line 344
    new-instance v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;

    invoke-direct {v0}, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;-><init>()V

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mVmsInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;

    .line 345
    new-instance v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorWaitingInfo;

    invoke-direct {v0}, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorWaitingInfo;-><init>()V

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mWaitingInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorWaitingInfo;

    .line 346
    new-instance v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;

    invoke-direct {v0}, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;-><init>()V

    iput-object v0, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mOtherInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;

    return-void
.end method

.method public static createFrom(Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;)Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    .locals 3
    .param p0, "info"    # Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

    .prologue
    .line 430
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 440
    :goto_0
    return-object v0

    .line 432
    :cond_0
    new-instance v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

    invoke-direct {v0}, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;-><init>()V

    .line 433
    .local v0, "newInfo":Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    invoke-virtual {v0, p0}, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->copyFrom(Landroid/provider/Operator$OperatorInfoBasic;)V

    .line 434
    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mIgnoreSpn:Ljava/lang/String;

    iput-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mIgnoreSpn:Ljava/lang/String;

    .line 435
    iget-object v1, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mPref:Ljava/lang/String;

    iput-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mPref:Ljava/lang/String;

    .line 436
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mCallForwordInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    iget-object v2, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mCallForwordInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    invoke-virtual {v1, v2}, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->copyFrom(Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;)V

    .line 437
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mVmsInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;

    iget-object v2, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mVmsInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;

    invoke-virtual {v1, v2}, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;->copyFrom(Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;)V

    .line 438
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mWaitingInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorWaitingInfo;

    iget-object v2, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mWaitingInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorWaitingInfo;

    invoke-virtual {v1, v2}, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorWaitingInfo;->copyFrom(Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorWaitingInfo;)V

    .line 439
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mOtherInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;

    iget-object v2, p0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mOtherInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;

    invoke-virtual {v1, v2}, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;->copyFrom(Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;)V

    goto :goto_0
.end method

.method public static createFromCursor(Landroid/database/Cursor;)Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    .locals 5
    .param p0, "cur"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 350
    new-instance v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

    invoke-direct {v0}, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;-><init>()V

    .line 351
    .local v0, "info":Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    const-string v1, "OPERATOR_NAME"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mOperatorName:Ljava/lang/String;

    .line 352
    const-string v1, "OPERATOR_LONG_NAME"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mOperatorLongName:Ljava/lang/String;

    .line 353
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mCallForwordInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    const-string v2, "UNCONDITIONAL_CALL_FORWARD_ENABLE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwordEnable:Ljava/lang/String;

    .line 355
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mCallForwordInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    const-string v2, "UNCONDITIONAL_CALL_FORWARD_DISABLE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwordDisable:Ljava/lang/String;

    .line 357
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mCallForwordInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    const-string v2, "DEFAULT_CALL_FORWORD_ENABLE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDefaultCallForwordEnable:Ljava/lang/String;

    .line 359
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mCallForwordInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    const-string v2, "DEFAULT_CALL_FORWORD_DISABLE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDefaultCallForwaordDisable:Ljava/lang/String;

    .line 361
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mCallForwordInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    const-string v2, "BUSY_CALL_FORWORD_ENABLE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwordEnable:Ljava/lang/String;

    .line 363
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mCallForwordInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    const-string v2, "BUSY_CALL_FORWORD_DISABLE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwordDisable:Ljava/lang/String;

    .line 365
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mCallForwordInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    const-string v2, "NO_ANSWER_CALL_FORWORD_ENABLE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwordEnable:Ljava/lang/String;

    .line 367
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mCallForwordInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    const-string v2, "NO_ANSWER_CALL_FORWORD_DISABLE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwordDisable:Ljava/lang/String;

    .line 369
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mCallForwordInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    const-string v2, "CANCEL_ALL_CALL_FORWORD_ENABLE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mCancelAllCallForwordEnable:Ljava/lang/String;

    .line 371
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mCallForwordInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    const-string v2, "CANCEL_ALL_CALL_FORWORD_DISABLE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mCancelAllCallForwordDisable:Ljava/lang/String;

    .line 373
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mCallForwordInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    const-string v2, "INTERNATIONAL_CALL_FORWARD_ENABLE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mInternationalCallForwardEnable:Ljava/lang/String;

    .line 375
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mCallForwordInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    const-string v2, "INTERNATIONAL_CALL_FORWARD_DISABLE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mInternationalCallForwardDisable:Ljava/lang/String;

    .line 377
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mCallForwordInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    const-string v2, "UNCONDITIONAL_CALL_FORWARD_TO_VMS_ENABLE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwardToVmsEnable:Ljava/lang/String;

    .line 379
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mCallForwordInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    const-string v2, "UNCONDITIONAL_CALL_FORWARD_TO_VMS_DISABLE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwardToVmsDisable:Ljava/lang/String;

    .line 381
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mCallForwordInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    const-string v2, "BUSY_CALL_FORWARD_TO_VMS_ENABLE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwardToVmsEnable:Ljava/lang/String;

    .line 383
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mCallForwordInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    const-string v2, "BUSY_CALL_FORWARD_TO_VMS_DISABLE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwardToVmsDisable:Ljava/lang/String;

    .line 385
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mCallForwordInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    const-string v2, "NO_ANSWER_CALL_FORWARD_TO_VMS_ENABLE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwardToVmsEnable:Ljava/lang/String;

    .line 387
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mCallForwordInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    const-string v2, "NO_ANSWER_CALL_FORWARD_TO_VMS_DISABLE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwardToVmsDisable:Ljava/lang/String;

    .line 389
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mCallForwordInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    const-string v2, "DO_NOT_DISTURB_ENABLE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDoNotDisturbEnable:Ljava/lang/String;

    .line 391
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mCallForwordInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    const-string v2, "DO_NOT_DISTURB_DISABLE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDoNotDisturbDisable:Ljava/lang/String;

    .line 393
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mVmsInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;

    const-string v2, "VOICE_MAIL_NOTIFICATION_ENABLE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;->mVoiceMailNotificationEnable:Ljava/lang/String;

    .line 395
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mVmsInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;

    const-string v2, "VOICE_MAIL_NOTIFICATION_DISABLE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;->mVoiceMailNotificationDisable:Ljava/lang/String;

    .line 397
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mVmsInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;

    const-string v2, "VOICE_MAIL_NUMBER"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorVmsInfo;->mVoiceMailNumber:Ljava/lang/String;

    .line 399
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mWaitingInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorWaitingInfo;

    const-string v2, "CALL_WAITTING_ENABLE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorWaitingInfo;->mCallWaitingEnable:Ljava/lang/String;

    .line 401
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mWaitingInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorWaitingInfo;

    const-string v2, "CALL_WAITTING_DISABLE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorWaitingInfo;->mCallWaitingDisable:Ljava/lang/String;

    .line 403
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mOtherInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;

    const-string v2, "THREE_WAY_CALL_FEATURE_CODE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;->mThreeWayCallFeatureCode:Ljava/lang/String;

    .line 405
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mOtherInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;

    const-string v2, "PAUSE_RESUME_FEATURE_CODE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;->mPauseResumeFeatureCode:Ljava/lang/String;

    .line 407
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mOtherInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;

    const-string v2, "EMERGENCY_CALL_BACK"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;->mEmergencyCallBack:Ljava/lang/String;

    .line 409
    iget-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mOtherInfo:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;

    const-string v2, "INTERNATIONAL_ROAMING_CALLBACK"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$CdmaOperatorOtherInfo;->mIntlRoamCallBack:Ljava/lang/String;

    .line 411
    const-string v1, "PREF"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mPref:Ljava/lang/String;

    .line 413
    const-string v1, "IGNORE_SPN"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mIgnoreSpn:Ljava/lang/String;

    .line 416
    sget-boolean v1, Landroid/provider/Operator;->DBG:Z

    if-eqz v1, :cond_0

    .line 417
    const-string v1, "Operator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fillOperatorInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_0
    const-string v1, "0"

    iget-object v2, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mPref:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    iput-object v4, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mOperatorName:Ljava/lang/String;

    .line 424
    iput-object v4, v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->mOperatorLongName:Ljava/lang/String;

    .line 426
    :cond_1
    return-object v0
.end method
