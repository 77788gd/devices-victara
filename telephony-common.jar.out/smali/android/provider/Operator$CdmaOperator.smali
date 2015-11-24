.class public final Landroid/provider/Operator$CdmaOperator;
.super Ljava/lang/Object;
.source "Operator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Operator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CdmaOperator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    }
.end annotation


# static fields
.field public static final CONFLICT_PATH:Ljava/lang/String; = "cdma/conflict_view"

.field public static final CONTENT_URI_CONFLICT:Landroid/net/Uri;

.field public static final CONTENT_URI_INFO:Landroid/net/Uri;

.field public static final CONTENT_URI_MCCMNC:Landroid/net/Uri;

.field public static final CONTENT_URI_SIDNID:Landroid/net/Uri;

.field public static final INFO_PATH:Ljava/lang/String; = "cdma/info"

.field public static final MCCMNC_PATH:Ljava/lang/String; = "cdma/mccmnc_view"

.field public static final SIDNID_PATH:Ljava/lang/String; = "cdma/sidnid_view"

.field private static TMZ:Ljava/lang/String;

.field private static isUpdateByMcc:Z

.field private static sLocaleMcc:Ljava/util/Locale;

.field private static sLocaleSid:Ljava/util/Locale;

.field private static sMccMnc:I

.field private static sNid:I

.field private static sOperatorInfoMcc:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

.field private static sOperatorInfoSid:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

.field private static sSid:I

.field private static sTimeZone:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 448
    const-string v0, "content://operatorinfo/cdma/info"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Operator$CdmaOperator;->CONTENT_URI_INFO:Landroid/net/Uri;

    .line 450
    const-string v0, "content://operatorinfo/cdma/mccmnc_view"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Operator$CdmaOperator;->CONTENT_URI_MCCMNC:Landroid/net/Uri;

    .line 452
    const-string v0, "content://operatorinfo/cdma/sidnid_view"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Operator$CdmaOperator;->CONTENT_URI_SIDNID:Landroid/net/Uri;

    .line 454
    const-string v0, "content://operatorinfo/cdma/conflict_view"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Operator$CdmaOperator;->CONTENT_URI_CONFLICT:Landroid/net/Uri;

    .line 466
    const/4 v0, 0x1

    sput-boolean v0, Landroid/provider/Operator$CdmaOperator;->isUpdateByMcc:Z

    .line 467
    const-string v0, "TIMEZONE"

    sput-object v0, Landroid/provider/Operator$CdmaOperator;->TMZ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static getCurrentOperatorInfo()Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    .locals 1

    .prologue
    .line 660
    sget-boolean v0, Landroid/provider/Operator$CdmaOperator;->isUpdateByMcc:Z

    if-eqz v0, :cond_0

    .line 661
    sget-object v0, Landroid/provider/Operator$CdmaOperator;->sOperatorInfoMcc:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

    invoke-static {v0}, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->createFrom(Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;)Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

    move-result-object v0

    .line 663
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/Operator$CdmaOperator;->sOperatorInfoSid:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

    invoke-static {v0}, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->createFrom(Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;)Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static getOperatorInfo(Landroid/content/Context;I)Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mccmnc"    # I

    .prologue
    .line 611
    const/4 v1, 0x1

    sput-boolean v1, Landroid/provider/Operator$CdmaOperator;->isUpdateByMcc:Z

    .line 612
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 613
    .local v0, "locale":Ljava/util/Locale;
    sget v1, Landroid/provider/Operator$CdmaOperator;->sMccMnc:I

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_1

    sget-object v1, Landroid/provider/Operator$CdmaOperator;->sLocaleMcc:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 614
    sget-boolean v1, Landroid/provider/Operator;->DBG:Z

    if-eqz v1, :cond_0

    .line 615
    const-string v1, "Operator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorInfo use buffered sOperatorInfoMcc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/provider/Operator$CdmaOperator;->sOperatorInfoMcc:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_0
    sget-object v1, Landroid/provider/Operator$CdmaOperator;->sOperatorInfoMcc:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

    invoke-static {v1}, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->createFrom(Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;)Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

    move-result-object v1

    .line 625
    :goto_0
    return-object v1

    .line 619
    :cond_1
    sput p1, Landroid/provider/Operator$CdmaOperator;->sMccMnc:I

    .line 620
    sput-object v0, Landroid/provider/Operator$CdmaOperator;->sLocaleMcc:Ljava/util/Locale;

    .line 621
    sget-boolean v1, Landroid/provider/Operator;->DBG:Z

    if-eqz v1, :cond_2

    .line 622
    const-string v1, "Operator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorInfo use new sOperatorInfoMcc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/provider/Operator$CdmaOperator;->sOperatorInfoMcc:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_2
    invoke-static {p0, p1}, Landroid/provider/Operator$CdmaOperator;->getOperatorInfoFromDB(Landroid/content/Context;I)Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

    move-result-object v1

    sput-object v1, Landroid/provider/Operator$CdmaOperator;->sOperatorInfoMcc:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

    .line 625
    sget-object v1, Landroid/provider/Operator$CdmaOperator;->sOperatorInfoMcc:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

    invoke-static {v1}, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->createFrom(Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;)Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public static getOperatorInfo(Landroid/content/Context;III)Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sid"    # I
    .param p2, "nid"    # I
    .param p3, "timezone"    # I

    .prologue
    .line 584
    const/4 v1, 0x0

    sput-boolean v1, Landroid/provider/Operator$CdmaOperator;->isUpdateByMcc:Z

    .line 585
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 586
    .local v0, "locale":Ljava/util/Locale;
    sget v1, Landroid/provider/Operator$CdmaOperator;->sSid:I

    if-ne p1, v1, :cond_1

    sget v1, Landroid/provider/Operator$CdmaOperator;->sNid:I

    if-ne p2, v1, :cond_1

    sget v1, Landroid/provider/Operator$CdmaOperator;->sTimeZone:I

    if-ne p3, v1, :cond_1

    if-eqz v0, :cond_1

    sget-object v1, Landroid/provider/Operator$CdmaOperator;->sLocaleSid:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 588
    sget-boolean v1, Landroid/provider/Operator;->DBG:Z

    if-eqz v1, :cond_0

    .line 589
    const-string v1, "Operator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorInfo use buffered sOperatorInfoSid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/provider/Operator$CdmaOperator;->sOperatorInfoSid:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    sget-object v1, Landroid/provider/Operator$CdmaOperator;->sOperatorInfoSid:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

    invoke-static {v1}, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->createFrom(Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;)Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

    move-result-object v1

    .line 601
    :goto_0
    return-object v1

    .line 593
    :cond_1
    sput p1, Landroid/provider/Operator$CdmaOperator;->sSid:I

    .line 594
    sput p2, Landroid/provider/Operator$CdmaOperator;->sNid:I

    .line 595
    sput p3, Landroid/provider/Operator$CdmaOperator;->sTimeZone:I

    .line 596
    sput-object v0, Landroid/provider/Operator$CdmaOperator;->sLocaleSid:Ljava/util/Locale;

    .line 597
    sget-boolean v1, Landroid/provider/Operator;->DBG:Z

    if-eqz v1, :cond_2

    .line 598
    const-string v1, "Operator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorInfo use new sOperatorInfoSid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/provider/Operator$CdmaOperator;->sOperatorInfoSid:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Operator$CdmaOperator;->getOperatorInfoFromDB(Landroid/content/Context;III)Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

    move-result-object v1

    sput-object v1, Landroid/provider/Operator$CdmaOperator;->sOperatorInfoSid:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

    .line 601
    sget-object v1, Landroid/provider/Operator$CdmaOperator;->sOperatorInfoSid:Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

    invoke-static {v1}, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->createFrom(Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;)Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public static getOperatorInfo(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "sid"    # I
    .param p3, "nid"    # I
    .param p4, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 630
    const/4 v1, 0x0

    .line 634
    .local v1, "info":Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 635
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 636
    .local v2, "mccmncNum":I
    invoke-static {p0, v2}, Landroid/provider/Operator$CdmaOperator;->getOperatorInfo(Landroid/content/Context;I)Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 642
    .end local v2    # "mccmncNum":I
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 643
    const v3, 0x7fffffff

    .line 644
    .local v3, "timeZoneOffset":I
    if-eqz p4, :cond_1

    .line 645
    invoke-static {p4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 646
    .local v4, "tz":Ljava/util/TimeZone;
    if-eqz v4, :cond_1

    .line 647
    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    const v6, 0xdbba0

    div-int v3, v5, v6

    .line 650
    .end local v4    # "tz":Ljava/util/TimeZone;
    :cond_1
    invoke-static {p0, p2, p3, v3}, Landroid/provider/Operator$CdmaOperator;->getOperatorInfo(Landroid/content/Context;III)Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

    move-result-object v1

    .line 652
    .end local v3    # "timeZoneOffset":I
    :cond_2
    return-object v1

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v5, "Operator"

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getOperatorInfoFromDB(Landroid/content/Context;I)Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mccmnc"    # I

    .prologue
    const/4 v4, 0x0

    .line 554
    const/4 v8, 0x0

    .line 555
    .local v8, "info":Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MCC_MNC_NO = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 556
    .local v3, "sWhere":Ljava/lang/String;
    const/4 v6, 0x0

    .line 557
    .local v6, "cur":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Operator$CdmaOperator;->CONTENT_URI_MCCMNC:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$QueryColumns;->COLUMNS:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 559
    if-eqz v6, :cond_1

    .line 561
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    invoke-static {v6}, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->createFromCursor(Landroid/database/Cursor;)Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 567
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 570
    :cond_1
    :goto_0
    return-object v8

    .line 564
    :catch_0
    move-exception v7

    .line 565
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Operator"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 567
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getOperatorInfoFromDB(Landroid/content/Context;III)Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sid"    # I
    .param p2, "nid"    # I
    .param p3, "timezone"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 471
    const/4 v8, 0x0

    .line 472
    .local v8, "info":Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 473
    .local v3, "sWhere":Ljava/lang/String;
    const/4 v6, 0x0

    .line 475
    .local v6, "cur":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Operator$CdmaOperator;->CONTENT_URI_CONFLICT:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$QueryColumns;->COLUMNS:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 477
    if-eqz v6, :cond_2

    .line 479
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    invoke-static {v6}, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->createFromCursor(Landroid/database/Cursor;)Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;

    move-result-object v8

    .line 481
    sget-boolean v0, Landroid/provider/Operator;->DBG:Z

    if-eqz v0, :cond_0

    .line 482
    const-string v0, "Operator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnresolvableConflict:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v9, v8

    .line 543
    .end local v8    # "info":Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    .local v9, "info":Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    :goto_0
    return-object v9

    .line 489
    .end local v9    # "info":Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    .restart local v8    # "info":Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 494
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIDMIN <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND SIDMAX >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND  NIDMIN <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND NIDMAX >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 497
    sget-object v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$QueryColumns;->COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 498
    .local v2, "columns":[Ljava/lang/String;
    sget-object v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$QueryColumns;->COLUMNS:[Ljava/lang/String;

    sget-object v1, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$QueryColumns;->COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v11, v2, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 500
    sget-object v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$QueryColumns;->COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    sget-object v1, Landroid/provider/Operator$CdmaOperator;->TMZ:Ljava/lang/String;

    aput-object v1, v2, v0

    .line 502
    const/4 v6, 0x0

    .line 503
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Operator$CdmaOperator;->CONTENT_URI_SIDNID:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 506
    if-nez v6, :cond_3

    move-object v9, v8

    .line 507
    .end local v8    # "info":Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    .restart local v9    # "info":Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    goto :goto_0

    .line 486
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v9    # "info":Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    .restart local v8    # "info":Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    :catch_0
    move-exception v7

    .line 487
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Operator"

    const-string v1, ""

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 510
    .restart local v2    # "columns":[Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_8

    .line 511
    sget-boolean v0, Landroid/provider/Operator;->DBG:Z

    if-eqz v0, :cond_4

    .line 512
    const-string v0, "Operator"

    const-string v1, "muti records"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_4
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 516
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 518
    .local v10, "tz":Ljava/lang/String;
    :cond_5
    sget-object v0, Landroid/provider/Operator$CdmaOperator;->TMZ:Ljava/lang/String;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 519
    invoke-static {v6}, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->createFromCursor(Landroid/database/Cursor;)Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    .line 527
    .end local v10    # "tz":Ljava/lang/String;
    :cond_6
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_3
    move-object v9, v8

    .line 543
    .end local v8    # "info":Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    .restart local v9    # "info":Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    goto/16 :goto_0

    .line 522
    .end local v9    # "info":Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    .restart local v8    # "info":Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    .restart local v10    # "tz":Ljava/lang/String;
    :cond_7
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 524
    .end local v10    # "tz":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 525
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "Operator"

    const-string v1, ""

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 527
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 530
    :cond_8
    sget-boolean v0, Landroid/provider/Operator;->DBG:Z

    if-eqz v0, :cond_9

    .line 531
    const-string v0, "Operator"

    const-string v1, "one record"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_9
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 535
    invoke-static {v6}, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;->createFromCursor(Landroid/database/Cursor;)Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v8

    .line 540
    :cond_a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 537
    :catch_2
    move-exception v7

    .line 538
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v0, "Operator"

    const-string v1, ""

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 540
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
