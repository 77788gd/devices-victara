.class public final Landroid/provider/Operator$GsmOperator;
.super Ljava/lang/Object;
.source "Operator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Operator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsmOperator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;
    }
.end annotation


# static fields
.field public static final CONTENT_URI_INFO:Landroid/net/Uri;

.field public static final CONTENT_URI_MCCMNC:Landroid/net/Uri;

.field public static final INFO_PATH:Ljava/lang/String; = "gsm/info"

.field public static final MCCMNC_PATH:Ljava/lang/String; = "gsm/mccmnc_view"

.field private static sLocaleMcc:Ljava/util/Locale;

.field private static sMccMnc:Ljava/lang/String;

.field private static sOperator:Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 763
    const-string v0, "content://operatorinfo/gsm/info"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Operator$GsmOperator;->CONTENT_URI_INFO:Landroid/net/Uri;

    .line 765
    const-string v0, "content://operatorinfo/gsm/mccmnc_view"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Operator$GsmOperator;->CONTENT_URI_MCCMNC:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    return-void
.end method

.method private static getOperatorFromDb(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mccmnc"    # Ljava/lang/String;

    .prologue
    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MCC_MNC_NO = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 865
    .local v3, "sWhere":Ljava/lang/String;
    const/4 v8, 0x0

    .line 867
    .local v8, "info":Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;
    const/4 v6, 0x0

    .line 869
    .local v6, "cur":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Operator$GsmOperator;->CONTENT_URI_MCCMNC:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo$QueryColumns;->COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 875
    :goto_0
    if-eqz v6, :cond_1

    .line 876
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    invoke-static {v6}, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->createFromCursor(Landroid/database/Cursor;)Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;

    move-result-object v8

    .line 890
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 893
    :cond_1
    return-object v8

    .line 871
    :catch_0
    move-exception v7

    .line 872
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "Operator"

    const-string v1, "Exception in getOperatorFromDb"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getOperatorInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mccmnc"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 825
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 854
    :cond_0
    :goto_0
    return-object v2

    .line 828
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 830
    .local v1, "locale":Ljava/util/Locale;
    sget-boolean v3, Landroid/provider/Operator;->DBG:Z

    if-eqz v3, :cond_2

    .line 831
    const-string v3, "Operator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOperatorInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_2
    sget-object v3, Landroid/provider/Operator$GsmOperator;->sMccMnc:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    sget-object v3, Landroid/provider/Operator$GsmOperator;->sLocaleMcc:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 835
    sget-boolean v2, Landroid/provider/Operator;->DBG:Z

    if-eqz v2, :cond_3

    .line 836
    const-string v2, "Operator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Return buffered OperatorInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_3
    sget-object v2, Landroid/provider/Operator$GsmOperator;->sOperator:Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;

    invoke-static {v2}, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->createFrom(Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;)Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;

    move-result-object v2

    goto :goto_0

    .line 841
    :cond_4
    invoke-static {p0, p1}, Landroid/provider/Operator$GsmOperator;->getOperatorFromDb(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;

    move-result-object v0

    .line 843
    .local v0, "info":Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;
    if-eqz v0, :cond_0

    .line 847
    sget-boolean v2, Landroid/provider/Operator;->DBG:Z

    if-eqz v2, :cond_5

    .line 848
    const-string v2, "Operator"

    invoke-virtual {v0}, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_5
    sput-object p1, Landroid/provider/Operator$GsmOperator;->sMccMnc:Ljava/lang/String;

    .line 852
    sput-object v1, Landroid/provider/Operator$GsmOperator;->sLocaleMcc:Ljava/util/Locale;

    .line 853
    sput-object v0, Landroid/provider/Operator$GsmOperator;->sOperator:Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;

    .line 854
    sget-object v2, Landroid/provider/Operator$GsmOperator;->sOperator:Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;

    invoke-static {v2}, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->createFrom(Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;)Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;

    move-result-object v2

    goto :goto_0
.end method

.method public static getOperatorLongName(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "currentLanOnly"    # Z

    .prologue
    const/4 v8, 0x0

    .line 784
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-object v8

    .line 788
    :cond_1
    sget-boolean v0, Landroid/provider/Operator;->DBG:Z

    if-eqz v0, :cond_2

    .line 789
    const-string v0, "Operator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOperatorName:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_2
    const/4 v8, 0x0

    .line 793
    .local v8, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 794
    .local v6, "cur":Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MCC_MNC_NO = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 795
    .local v3, "sWhere":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "OPERATOR_LONG_NAME"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "LANGUAGE_SUPPORT"

    aput-object v1, v2, v0

    .line 800
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Operator$GsmOperator;->CONTENT_URI_MCCMNC:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 806
    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    if-eqz p2, :cond_3

    const-string v0, "LANGUAGE_SUPPORT"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Landroid/provider/Operator;->supportCurrentLanguage(Ljava/lang/String;)Z
    invoke-static {v0}, Landroid/provider/Operator;->access$100(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 809
    :cond_3
    const-string v0, "OPERATOR_LONG_NAME"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 812
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 802
    :catch_0
    move-exception v7

    .line 803
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "Operator"

    const-string v1, "Exception in getOperatorLongName"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static isFilterSpn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spn"    # Ljava/lang/String;
    .param p2, "mccmnc"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 904
    const/4 v4, 0x0

    .line 906
    .local v4, "info":Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 930
    :cond_0
    :goto_0
    return v8

    .line 910
    :cond_1
    sget-boolean v9, Landroid/provider/Operator;->DBG:Z

    if-eqz v9, :cond_2

    .line 911
    const-string v9, "Operator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isFilterSpn: spn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "mccmnc="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_2
    sget-object v9, Landroid/provider/Operator$GsmOperator;->sMccMnc:Ljava/lang/String;

    if-eqz v9, :cond_3

    sget-object v9, Landroid/provider/Operator$GsmOperator;->sMccMnc:Ljava/lang/String;

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 915
    sget-object v4, Landroid/provider/Operator$GsmOperator;->sOperator:Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;

    .line 920
    :goto_1
    if-eqz v4, :cond_0

    iget-object v9, v4, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->mIgnoreSpn:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, v4, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->mIgnoreSpn:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 921
    iget-object v9, v4, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;->mIgnoreSpn:Ljava/lang/String;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 922
    .local v2, "filters":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    .line 923
    .local v1, "filter":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 924
    .local v6, "lowFilter":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 925
    .local v7, "lowSpn":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 926
    const/4 v8, 0x1

    goto :goto_0

    .line 917
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "filter":Ljava/lang/String;
    .end local v2    # "filters":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "lowFilter":Ljava/lang/String;
    .end local v7    # "lowSpn":Ljava/lang/String;
    :cond_3
    invoke-static {p0, p2}, Landroid/provider/Operator$GsmOperator;->getOperatorFromDb(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;

    move-result-object v4

    goto :goto_1

    .line 922
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "filter":Ljava/lang/String;
    .restart local v2    # "filters":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "lowFilter":Ljava/lang/String;
    .restart local v7    # "lowSpn":Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method
