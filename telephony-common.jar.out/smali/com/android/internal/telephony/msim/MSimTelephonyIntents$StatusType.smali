.class public final enum Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;
.super Ljava/lang/Enum;
.source "MSimTelephonyIntents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/msim/MSimTelephonyIntents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

.field public static final enum FAIL:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

.field public static final enum START:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

.field public static final enum SUCCESS:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

.field public static final enum TIMEOUT:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    const-string v1, "START"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->START:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    new-instance v0, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->FAIL:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    new-instance v0, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->SUCCESS:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    new-instance v0, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->TIMEOUT:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    sget-object v1, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->START:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->FAIL:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->SUCCESS:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->TIMEOUT:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->$VALUES:[Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    const-class v0, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->$VALUES:[Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    return-object v0
.end method
