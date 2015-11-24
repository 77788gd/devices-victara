.class public final Landroid/provider/Operator$GsmOperator$GsmOperatorInfo$QueryColumns;
.super Ljava/lang/Object;
.source "Operator.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Operator$GsmOperator$GsmOperatorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueryColumns"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;

.field public static final ignoreSpn:Ljava/lang/String; = "IGNORE_SPN"

.field public static final intlRoamCallBack:Ljava/lang/String; = "INTERNATIONAL_ROAMING_CALLBACK"

.field public static final languageSupport:Ljava/lang/String; = "LANGUAGE_SUPPORT"

.field public static final operatorLongName:Ljava/lang/String; = "OPERATOR_LONG_NAME"

.field public static final operatorName:Ljava/lang/String; = "OPERATOR_NAME"

.field public static final roamingOperatorId:Ljava/lang/String; = "ROAMING_OPERATOR_ID"

.field public static final roamingSpn:Ljava/lang/String; = "ROAMING_SPN"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 681
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "OPERATOR_NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "OPERATOR_LONG_NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "LANGUAGE_SUPPORT"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "IGNORE_SPN"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "INTERNATIONAL_ROAMING_CALLBACK"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ROAMING_SPN"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ROAMING_OPERATOR_ID"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Operator$GsmOperator$GsmOperatorInfo$QueryColumns;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
