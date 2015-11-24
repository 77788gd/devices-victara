.class public final Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$QueryColumns;
.super Ljava/lang/Object;
.source "Operator.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueryColumns"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;

.field public static final busyCallForwardDisable:Ljava/lang/String; = "BUSY_CALL_FORWORD_DISABLE"

.field public static final busyCallForwardEnable:Ljava/lang/String; = "BUSY_CALL_FORWORD_ENABLE"

.field public static final busyCallForwardToVmsDisable:Ljava/lang/String; = "BUSY_CALL_FORWARD_TO_VMS_DISABLE"

.field public static final busyCallForwardToVmsEnable:Ljava/lang/String; = "BUSY_CALL_FORWARD_TO_VMS_ENABLE"

.field public static final callWaitingDisable:Ljava/lang/String; = "CALL_WAITTING_DISABLE"

.field public static final callWaitingEnable:Ljava/lang/String; = "CALL_WAITTING_ENABLE"

.field public static final cancelAllCallForwardDisable:Ljava/lang/String; = "CANCEL_ALL_CALL_FORWORD_DISABLE"

.field public static final cancelAllCallForwardEnable:Ljava/lang/String; = "CANCEL_ALL_CALL_FORWORD_ENABLE"

.field public static final defaultCallForwardDisable:Ljava/lang/String; = "DEFAULT_CALL_FORWORD_DISABLE"

.field public static final defaultCallForwardEnable:Ljava/lang/String; = "DEFAULT_CALL_FORWORD_ENABLE"

.field public static final doNotDisturbDisable:Ljava/lang/String; = "DO_NOT_DISTURB_DISABLE"

.field public static final doNotDisturbEnable:Ljava/lang/String; = "DO_NOT_DISTURB_ENABLE"

.field public static final emergencyCallBack:Ljava/lang/String; = "EMERGENCY_CALL_BACK"

.field public static final ignoreSpn:Ljava/lang/String; = "IGNORE_SPN"

.field public static final internationalCallForwardDisable:Ljava/lang/String; = "INTERNATIONAL_CALL_FORWARD_DISABLE"

.field public static final internationalCallForwardEnable:Ljava/lang/String; = "INTERNATIONAL_CALL_FORWARD_ENABLE"

.field public static final internationalRoamingCallBack:Ljava/lang/String; = "INTERNATIONAL_ROAMING_CALLBACK"

.field public static final noAnswerCallForwardDisable:Ljava/lang/String; = "NO_ANSWER_CALL_FORWORD_DISABLE"

.field public static final noAnswerCallForwardEnable:Ljava/lang/String; = "NO_ANSWER_CALL_FORWORD_ENABLE"

.field public static final noAnswerCallForwardToVmsDisable:Ljava/lang/String; = "NO_ANSWER_CALL_FORWARD_TO_VMS_DISABLE"

.field public static final noAnswerCallForwardToVmsEnable:Ljava/lang/String; = "NO_ANSWER_CALL_FORWARD_TO_VMS_ENABLE"

.field public static final operatorLongName:Ljava/lang/String; = "OPERATOR_LONG_NAME"

.field public static final operatorName:Ljava/lang/String; = "OPERATOR_NAME"

.field public static final pauseResumeFeatureCode:Ljava/lang/String; = "PAUSE_RESUME_FEATURE_CODE"

.field public static final preferred:Ljava/lang/String; = "PREF"

.field public static final threeWayCallFeatureCode:Ljava/lang/String; = "THREE_WAY_CALL_FEATURE_CODE"

.field public static final unconditionalCallForwardDisable:Ljava/lang/String; = "UNCONDITIONAL_CALL_FORWARD_DISABLE"

.field public static final unconditionalCallForwardEnable:Ljava/lang/String; = "UNCONDITIONAL_CALL_FORWARD_ENABLE"

.field public static final unconditionalCallForwardToVmsDisable:Ljava/lang/String; = "UNCONDITIONAL_CALL_FORWARD_TO_VMS_DISABLE"

.field public static final unconditionalCallForwardToVmsEnable:Ljava/lang/String; = "UNCONDITIONAL_CALL_FORWARD_TO_VMS_ENABLE"

.field public static final voiceMailNotificationDisable:Ljava/lang/String; = "VOICE_MAIL_NOTIFICATION_DISABLE"

.field public static final voiceMailNotificationEnable:Ljava/lang/String; = "VOICE_MAIL_NOTIFICATION_ENABLE"

.field public static final voiceMailNumber:Ljava/lang/String; = "VOICE_MAIL_NUMBER"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 148
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "OPERATOR_NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "OPERATOR_LONG_NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "UNCONDITIONAL_CALL_FORWARD_ENABLE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UNCONDITIONAL_CALL_FORWARD_DISABLE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DEFAULT_CALL_FORWORD_ENABLE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DEFAULT_CALL_FORWORD_DISABLE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BUSY_CALL_FORWORD_ENABLE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BUSY_CALL_FORWORD_DISABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NO_ANSWER_CALL_FORWORD_ENABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "NO_ANSWER_CALL_FORWORD_DISABLE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CANCEL_ALL_CALL_FORWORD_ENABLE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "CANCEL_ALL_CALL_FORWORD_DISABLE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "INTERNATIONAL_CALL_FORWARD_ENABLE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "INTERNATIONAL_CALL_FORWARD_DISABLE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "UNCONDITIONAL_CALL_FORWARD_TO_VMS_ENABLE"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "UNCONDITIONAL_CALL_FORWARD_TO_VMS_DISABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "BUSY_CALL_FORWARD_TO_VMS_ENABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "BUSY_CALL_FORWARD_TO_VMS_DISABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "NO_ANSWER_CALL_FORWARD_TO_VMS_ENABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "NO_ANSWER_CALL_FORWARD_TO_VMS_DISABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "DO_NOT_DISTURB_ENABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "DO_NOT_DISTURB_DISABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "VOICE_MAIL_NOTIFICATION_ENABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "VOICE_MAIL_NOTIFICATION_DISABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "VOICE_MAIL_NUMBER"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "CALL_WAITTING_ENABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "CALL_WAITTING_DISABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "THREE_WAY_CALL_FEATURE_CODE"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "PAUSE_RESUME_FEATURE_CODE"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "EMERGENCY_CALL_BACK"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "PREF"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "IGNORE_SPN"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "INTERNATIONAL_ROAMING_CALLBACK"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Operator$CdmaOperator$CdmaOperatorInfo$QueryColumns;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
