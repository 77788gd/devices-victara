.class Landroid/provider/Operator$OperatorInfoBasic;
.super Ljava/lang/Object;
.source "Operator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Operator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OperatorInfoBasic"
.end annotation


# instance fields
.field public mLanguageSupport:Ljava/lang/String;

.field public mOperatorLongName:Ljava/lang/String;

.field public mOperatorName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/provider/Operator$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/provider/Operator$1;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/provider/Operator$OperatorInfoBasic;-><init>()V

    return-void
.end method


# virtual methods
.method copyFrom(Landroid/provider/Operator$OperatorInfoBasic;)V
    .locals 1
    .param p1, "info"    # Landroid/provider/Operator$OperatorInfoBasic;

    .prologue
    .line 44
    iget-object v0, p1, Landroid/provider/Operator$OperatorInfoBasic;->mOperatorName:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$OperatorInfoBasic;->mOperatorName:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Landroid/provider/Operator$OperatorInfoBasic;->mOperatorLongName:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$OperatorInfoBasic;->mOperatorLongName:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Landroid/provider/Operator$OperatorInfoBasic;->mLanguageSupport:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/Operator$OperatorInfoBasic;->mLanguageSupport:Ljava/lang/String;

    .line 47
    return-void
.end method
