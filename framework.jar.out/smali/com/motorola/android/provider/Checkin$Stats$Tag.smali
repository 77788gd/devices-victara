.class public final enum Lcom/motorola/android/provider/Checkin$Stats$Tag;
.super Ljava/lang/Enum;
.source "Checkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/provider/Checkin$Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/android/provider/Checkin$Stats$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum BROWSER_SNAP_CENTER:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum BROWSER_TEXT_SIZE_CHANGE:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum BROWSER_TIME_LANDSCAPE:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum BROWSER_TIME_PORTRAIT:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum BROWSER_ZOOM_OVERVIEW:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum CG_ADD_COMMENT:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum CG_ADD_RATING:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum CG_ADD_TAG:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum CG_COMMENT_NOTF_RECV:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum CG_RAT_NOTF_RECV:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum CG_TAG_NOTF_RECV:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum CG_VIEW_MEDIA_ID:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum CG_VIEW_MY_FRIEND_MEDIA:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum CG_VIEW_MY_WEB_ALBUM:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum CG_WID2DASH:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum CRASHES_REPORTED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum CRASHES_TRUNCATED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum ELAPSED_REALTIME_SEC:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum ELAPSED_UPTIME_SEC:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum EVENTS_DROPPED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum HTTP_REQUEST:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum HTTP_REUSED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum HTTP_STATUS:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum NETWORK_RX_MOBILE:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum NETWORK_TX_MOBILE:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum PHONE_CDMA_DATA_ATTEMPTED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum PHONE_CDMA_DATA_CONNECTED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum PHONE_CDMA_REGISTERED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum PHONE_GPRS_ATTEMPTED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum PHONE_GPRS_CONNECTED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum PHONE_GSM_REGISTERED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum PHONE_RADIO_RESETS:Lcom/motorola/android/provider/Checkin$Stats$Tag;

.field public static final enum TEST:Lcom/motorola/android/provider/Checkin$Stats$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 153
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "BROWSER_SNAP_CENTER"

    invoke-direct {v0, v1, v3}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->BROWSER_SNAP_CENTER:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 154
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "BROWSER_TEXT_SIZE_CHANGE"

    invoke-direct {v0, v1, v4}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->BROWSER_TEXT_SIZE_CHANGE:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 155
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "BROWSER_ZOOM_OVERVIEW"

    invoke-direct {v0, v1, v5}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->BROWSER_ZOOM_OVERVIEW:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 156
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "BROWSER_TIME_PORTRAIT"

    invoke-direct {v0, v1, v6}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->BROWSER_TIME_PORTRAIT:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 157
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "BROWSER_TIME_LANDSCAPE"

    invoke-direct {v0, v1, v7}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->BROWSER_TIME_LANDSCAPE:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 159
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "CRASHES_REPORTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CRASHES_REPORTED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 160
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "CRASHES_TRUNCATED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CRASHES_TRUNCATED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 161
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "ELAPSED_REALTIME_SEC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->ELAPSED_REALTIME_SEC:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 162
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "ELAPSED_UPTIME_SEC"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->ELAPSED_UPTIME_SEC:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 163
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "HTTP_REQUEST"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->HTTP_REQUEST:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 164
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "HTTP_REUSED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->HTTP_REUSED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 165
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "HTTP_STATUS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->HTTP_STATUS:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 166
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "PHONE_GSM_REGISTERED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->PHONE_GSM_REGISTERED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 167
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "PHONE_GPRS_ATTEMPTED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->PHONE_GPRS_ATTEMPTED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 168
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "PHONE_GPRS_CONNECTED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->PHONE_GPRS_CONNECTED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 169
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "PHONE_RADIO_RESETS"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->PHONE_RADIO_RESETS:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 170
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "TEST"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->TEST:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 171
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "NETWORK_RX_MOBILE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->NETWORK_RX_MOBILE:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 172
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "NETWORK_TX_MOBILE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->NETWORK_TX_MOBILE:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 173
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "PHONE_CDMA_REGISTERED"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->PHONE_CDMA_REGISTERED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 174
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "PHONE_CDMA_DATA_ATTEMPTED"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->PHONE_CDMA_DATA_ATTEMPTED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 175
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "PHONE_CDMA_DATA_CONNECTED"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->PHONE_CDMA_DATA_CONNECTED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 176
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "EVENTS_DROPPED"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->EVENTS_DROPPED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 177
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "CG_WID2DASH"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CG_WID2DASH:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 178
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "CG_COMMENT_NOTF_RECV"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CG_COMMENT_NOTF_RECV:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 179
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "CG_RAT_NOTF_RECV"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CG_RAT_NOTF_RECV:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 180
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "CG_TAG_NOTF_RECV"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CG_TAG_NOTF_RECV:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 181
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "CG_ADD_COMMENT"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CG_ADD_COMMENT:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 182
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "CG_ADD_TAG"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CG_ADD_TAG:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 183
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "CG_ADD_RATING"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CG_ADD_RATING:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 184
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "CG_VIEW_MY_WEB_ALBUM"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CG_VIEW_MY_WEB_ALBUM:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 185
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "CG_VIEW_MY_FRIEND_MEDIA"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CG_VIEW_MY_FRIEND_MEDIA:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 186
    new-instance v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const-string v1, "CG_VIEW_MEDIA_ID"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CG_VIEW_MEDIA_ID:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    .line 152
    const/16 v0, 0x21

    new-array v0, v0, [Lcom/motorola/android/provider/Checkin$Stats$Tag;

    sget-object v1, Lcom/motorola/android/provider/Checkin$Stats$Tag;->BROWSER_SNAP_CENTER:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/android/provider/Checkin$Stats$Tag;->BROWSER_TEXT_SIZE_CHANGE:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/android/provider/Checkin$Stats$Tag;->BROWSER_ZOOM_OVERVIEW:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/android/provider/Checkin$Stats$Tag;->BROWSER_TIME_PORTRAIT:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/android/provider/Checkin$Stats$Tag;->BROWSER_TIME_LANDSCAPE:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CRASHES_REPORTED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CRASHES_TRUNCATED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->ELAPSED_REALTIME_SEC:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->ELAPSED_UPTIME_SEC:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->HTTP_REQUEST:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->HTTP_REUSED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->HTTP_STATUS:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->PHONE_GSM_REGISTERED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->PHONE_GPRS_ATTEMPTED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->PHONE_GPRS_CONNECTED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->PHONE_RADIO_RESETS:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->TEST:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->NETWORK_RX_MOBILE:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->NETWORK_TX_MOBILE:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->PHONE_CDMA_REGISTERED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->PHONE_CDMA_DATA_ATTEMPTED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->PHONE_CDMA_DATA_CONNECTED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->EVENTS_DROPPED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CG_WID2DASH:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CG_COMMENT_NOTF_RECV:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CG_RAT_NOTF_RECV:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CG_TAG_NOTF_RECV:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CG_ADD_COMMENT:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CG_ADD_TAG:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CG_ADD_RATING:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CG_VIEW_MY_WEB_ALBUM:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CG_VIEW_MY_FRIEND_MEDIA:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CG_VIEW_MEDIA_ID:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->$VALUES:[Lcom/motorola/android/provider/Checkin$Stats$Tag;

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
    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/android/provider/Checkin$Stats$Tag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 152
    const-class v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;

    return-object v0
.end method

.method public static values()[Lcom/motorola/android/provider/Checkin$Stats$Tag;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/motorola/android/provider/Checkin$Stats$Tag;->$VALUES:[Lcom/motorola/android/provider/Checkin$Stats$Tag;

    invoke-virtual {v0}, [Lcom/motorola/android/provider/Checkin$Stats$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/android/provider/Checkin$Stats$Tag;

    return-object v0
.end method
