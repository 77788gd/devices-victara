.class Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
.super Ljava/lang/Object;
.source "CheckinLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventPair"
.end annotation


# instance fields
.field mName:Ljava/lang/String;

.field mValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;


# direct methods
.method private constructor <init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;->this$0:Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput-object p2, p0, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;->mName:Ljava/lang/String;

    .line 327
    iput-object p3, p0, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;->mValue:Ljava/lang/String;

    .line 328
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;

    .prologue
    .line 321
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
