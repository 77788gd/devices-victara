.class public Lcom/android/internal/telephony/msim/MSimTelephonyIntents;
.super Ljava/lang/Object;
.source "MSimTelephonyIntents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;
    }
.end annotation


# static fields
.field public static final ACTION_INTERNAL_SUB_STATE_INACTIVE:Ljava/lang/String; = "com.motorola.intent.action.INTERNAL_SUB_STATE_INACTIVE"

.field public static final ACTION_NEW_UICC_CARD_AVAILABLE:Ljava/lang/String; = "com.motorola.intent.action.ACTION_NEW_UICC_CARD_AVAILABLE"

.field public static final ACTION_REINSERTION_SAME_CARD:Ljava/lang/String; = "com.motorola.intent.action.ACTION_REINSERTION_SAME_CARD"

.field public static final ACTION_SUBSCRIPTION_NETWORKTYPE_AUTOSWITCH:Ljava/lang/String; = "com.motorola.intent.action.SUBSCRIPTION_NETWORKTYPE_AUTOSWITCH"

.field public static final ACTION_TUNEAWAY_STATE_RESPONSE:Ljava/lang/String; = "com.motorola.intent.action.TUNEAWAY_STATE_RESPONSE"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "status"

.field public static final EXTRA_TUNEAWAY_SELECTION:Ljava/lang/String; = "tuneAwayChoice"

.field public static final EXTRA_TUNEAWAY_SELECTION_CHANGED:Ljava/lang/String; = "tuneAwaySet"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method
