.class public final Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;
.super Landroid/provider/Operator$OperatorInfoBasic;
.source "Operator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Operator$GsmOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsmOperatorInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Operator$GsmOperator$GsmOperatorInfo$QueryColumns;
    }
.end annotation


# instance fields
.field public mIgnoreSpn:Ljava/lang/String;

.field public mIntlRoamCallBack:Ljava/lang/String;

.field public mRoamingOperatorId:Ljava/lang/String;

.field public mRoamingSpn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 669
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/provider/Operator$OperatorInfoBasic;-><init>(Landroid/provider/Operator$1;)V

    .line 672
    return-void
.end method

.method public static createFrom(Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;)Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;
    .locals 2
    .param p0, "info"    # Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;

    .prologue
    .line 751
    new-instance v0, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;

    invoke-direct {v0}, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;-><init>()V

    .line 752
    .local v0, "newInfo":Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;
    invoke-virtual {v0, p0}, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->copyFrom(Landroid/provider/Operator$OperatorInfoBasic;)V

    .line 753
    iget-object v1, p0, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->mIgnoreSpn:Ljava/lang/String;

    iput-object v1, v0, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->mIgnoreSpn:Ljava/lang/String;

    .line 754
    iget-object v1, p0, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->mIntlRoamCallBack:Ljava/lang/String;

    iput-object v1, v0, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->mIntlRoamCallBack:Ljava/lang/String;

    .line 755
    iget-object v1, p0, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->mRoamingSpn:Ljava/lang/String;

    iput-object v1, v0, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->mRoamingSpn:Ljava/lang/String;

    .line 756
    iget-object v1, p0, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->mRoamingOperatorId:Ljava/lang/String;

    iput-object v1, v0, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->mRoamingOperatorId:Ljava/lang/String;

    .line 757
    return-object v0
.end method

.method public static createFromCursor(Landroid/database/Cursor;)Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;
    .locals 8
    .param p0, "cur"    # Landroid/database/Cursor;

    .prologue
    .line 712
    new-instance v3, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;

    invoke-direct {v3}, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;-><init>()V

    .line 714
    .local v3, "info":Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;
    const-string v5, "OPERATOR_NAME"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->mOperatorName:Ljava/lang/String;

    .line 716
    const-string v5, "OPERATOR_LONG_NAME"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->mOperatorLongName:Ljava/lang/String;

    .line 718
    const-string v5, "LANGUAGE_SUPPORT"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->mLanguageSupport:Ljava/lang/String;

    .line 720
    const-string v5, "IGNORE_SPN"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 722
    .local v2, "ignoreSpn":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 724
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 726
    .local v0, "bytes":[B
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v6, "utf-16"

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, v3, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->mIgnoreSpn:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    .end local v0    # "bytes":[B
    :cond_0
    :goto_0
    const-string v5, "INTERNATIONAL_ROAMING_CALLBACK"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->mIntlRoamCallBack:Ljava/lang/String;

    .line 733
    const-string v5, "ROAMING_SPN"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 735
    .local v4, "proRoamSpn":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 738
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 740
    .restart local v0    # "bytes":[B
    :try_start_1
    new-instance v5, Ljava/lang/String;

    const-string v6, "utf-16"

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, v3, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->mRoamingSpn:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 745
    .end local v0    # "bytes":[B
    :cond_1
    :goto_1
    const-string v5, "ROAMING_OPERATOR_ID"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->mRoamingOperatorId:Ljava/lang/String;

    .line 747
    return-object v3

    .line 727
    .end local v4    # "proRoamSpn":Ljava/lang/String;
    .restart local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 728
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "Operator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnsupportedEncodingException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 741
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v4    # "proRoamSpn":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 742
    .restart local v1    # "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "Operator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnsupportedEncodingException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nmOperatorName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmOperatorLongName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->mOperatorLongName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmLanguageSuppport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->mLanguageSupport:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmIgnoreSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->mIgnoreSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmIntlRoamCallBack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->mIntlRoamCallBack:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmRoamingSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->mRoamingSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmRoamingOperatorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->mRoamingOperatorId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
