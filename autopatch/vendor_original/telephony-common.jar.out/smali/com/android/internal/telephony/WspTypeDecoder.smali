.class public Lcom/android/internal/telephony/WspTypeDecoder;
.super Ljava/lang/Object;
.source "WspTypeDecoder.java"


# static fields
.field public static final CONTENT_TYPE_B_MMS:Ljava/lang/String; = "application/vnd.wap.mms-message"

.field public static final CONTENT_TYPE_B_PUSH_CO:Ljava/lang/String; = "application/vnd.wap.coc"

.field public static final CONTENT_TYPE_B_PUSH_SYNCML_NOTI:Ljava/lang/String; = "application/vnd.syncml.notification"

.field public static final PARAMETER_ID_X_WAP_APPLICATION_ID:I = 0x2f

.field public static final PDU_TYPE_CONFIRMED_PUSH:I = 0x7

.field public static final PDU_TYPE_PUSH:I = 0x6

.field private static final Q_VALUE:I = 0x0

.field private static final WAP_PDU_LENGTH_QUOTE:I = 0x1f

.field private static final WAP_PDU_SHORT_LENGTH_MAX:I = 0x1e

.field private static final WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WELL_KNOWN_XWAP_APP_ID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mContentParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDataLength:I

.field mStringValue:Ljava/lang/String;

.field mUnsigned32bit:J

.field mWspData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x7

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_XWAP_APP_ID:Ljava/util/HashMap;

    .line 49
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "text/*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "text/x-hdml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "text/x-ttml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "text/x-vCalendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "text/x-vCard"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "text/vnd.wap.wml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "text/vnd.wap.wmlscript"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "text/vnd.wap.wta-event"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "multipart/*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "multipart/mixed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "multipart/form-data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "multipart/byterantes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "multipart/alternative"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/java-vm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/x-hdmlc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.wmlc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.wmlscriptc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.wta-eventc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.uaprof"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.wtls-ca-certificate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.wtls-user-certificate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/x-x509-ca-cert"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/x-x509-user-cert"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image/gif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image/tiff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image/png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image/vnd.wap.wbmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.multipart.*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.multipart.form-data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.multipart.byteranges"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "text/xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/x-x968-cross-cert"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/x-x968-ca-cert"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/x-x968-user-cert"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "text/vnd.wap.si"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.sic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "text/vnd.wap.sl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.slc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "text/vnd.wap.co"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.coc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.multipart.related"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.sia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "text/vnd.wap.connectivity-xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/pkcs7-mime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.hashed-certificate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.signed-certificate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.cert-response"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x3b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/xhtml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/wml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "text/css"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.mms-message"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.rollover-certificate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.locc+wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.loc+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.syncml.dm+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.syncml.notification"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.xhtml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wv.csp.cir"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.oma.dd+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.oma.drm.message"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x49

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.oma.drm.content"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x4a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wv.csp+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wv.csp+wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x4e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.syncml.ds.notification"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x4f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.oma.dd2+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/mikey"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.oma.dcd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.oma.dcdc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x201

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.uplanet.cacheop-wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x202

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.uplanet.signal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x203

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.uplanet.alert-wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x204

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.uplanet.list-wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x205

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.uplanet.listcmd-wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x206

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.uplanet.channel-wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x207

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.uplanet.provisioning-status-uri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x208

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-wap.multipart/vnd.uplanet.header-set"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x209

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.uplanet.bearer-choice-wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x20a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.phonecom.mmc-wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x20b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.nokia.syncset+wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x20c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image/x-up-wpng"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x300

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/iota.mmc-wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x301

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/iota.mmc-xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x302

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.syncml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x303

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.syncml+wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x304

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "text/vnd.wap.emn+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x305

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "text/calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x306

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.omads-email+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x307

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.omads-file+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x308

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.omads-folder+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x309

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "text/directory;profile=vCard"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x30a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wap.emn+wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x30b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.nokia.ipdc-purchase-response"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x30c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.motorola.screen3+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x30d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.motorola.screen3+gzip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x30e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.cmcc.setting+wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x30f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.cmcc.bombing+wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x310

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.docomo.pf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x311

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.docomo.ub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x312

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.omaloc-supl-init"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x313

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.oma.group-usage-list+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x314

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/oma-directory+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x315

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.docomo.pf2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x316

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.oma.drm.roap-trigger+wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x317

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.sbm.mid2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x318

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.wmf.bootstrap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x319

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnc.cmcc.dcd+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x31a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.sbm.cid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x31b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.oma.bcast.provisioningtrigger"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Q"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Charset"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Level"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Differences"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Padding"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Max-Age"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Secure"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SEC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MAC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Creation-date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Modification-date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Read-date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Filename"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Start"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Start-info"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Comment"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Domain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Path"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_XWAP_APP_ID:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-wap-application:syncml.dm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "pdu"    # [B

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    .line 216
    return-void
.end method

.method private decodeNoValue(I)Z
    .locals 2
    .param p1, "startIndex"    # I

    .prologue
    const/4 v0, 0x1

    .line 562
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v1, v1, p1

    if-nez v1, :cond_0

    .line 563
    iput v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 566
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private expandWellKnownApplicationId()V
    .locals 4

    .prologue
    .line 592
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 593
    iget-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    long-to-int v0, v2

    .line 594
    .local v0, "binaryContentType":I
    sget-object v1, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_XWAP_APP_ID:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 598
    .end local v0    # "binaryContentType":I
    :goto_0
    return-void

    .line 596
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    goto :goto_0
.end method

.method private expandWellKnownMimeType()V
    .locals 4

    .prologue
    .line 576
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 577
    iget-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    long-to-int v0, v2

    .line 578
    .local v0, "binaryContentType":I
    sget-object v1, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 582
    .end local v0    # "binaryContentType":I
    :goto_0
    return-void

    .line 580
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    goto :goto_0
.end method

.method private readContentParameters(III)Z
    .locals 12
    .param p1, "startIndex"    # I
    .param p2, "leftToRead"    # I
    .param p3, "accumulator"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 493
    const/4 v3, 0x0

    .line 495
    .local v3, "totalRead":I
    if-lez p2, :cond_7

    .line 496
    iget-object v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v1, v8, p1

    .line 497
    .local v1, "nextByte":B
    const/4 v4, 0x0

    .line 498
    .local v4, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 499
    .local v2, "param":Ljava/lang/String;
    and-int/lit16 v8, v1, 0x80

    if-nez v8, :cond_3

    const/16 v8, 0x1f

    if-le v1, v8, :cond_3

    .line 500
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTokenText(I)Z

    .line 501
    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 502
    iget v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v3, v6

    .line 528
    :cond_0
    add-int v6, p1, v3

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeNoValue(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 529
    iget v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v3, v6

    .line 530
    const/4 v4, 0x0

    .line 544
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mContentParameters:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    add-int v6, p1, v3

    sub-int v7, p2, v3

    add-int v8, p3, v3

    invoke-direct {p0, v6, v7, v8}, Lcom/android/internal/telephony/WspTypeDecoder;->readContentParameters(III)Z

    move-result v6

    .line 550
    .end local v1    # "nextByte":B
    .end local v2    # "param":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    :goto_1
    return v6

    .line 504
    .restart local v1    # "nextByte":B
    .restart local v2    # "param":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 505
    iget v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v3, v8

    .line 506
    iget-wide v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    long-to-int v5, v8

    .line 507
    .local v5, "wellKnownParameterValue":I
    sget-object v8, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "param":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 508
    .restart local v2    # "param":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 509
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unassigned/0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    int-to-long v10, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 512
    :cond_4
    if-nez v5, :cond_0

    .line 513
    add-int v7, p1, v3

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 514
    iget v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v3, v6

    .line 515
    iget-wide v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 516
    iget-object v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mContentParameters:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    add-int v6, p1, v3

    sub-int v7, p2, v3

    add-int v8, p3, v3

    invoke-direct {p0, v6, v7, v8}, Lcom/android/internal/telephony/WspTypeDecoder;->readContentParameters(III)Z

    move-result v6

    goto :goto_1

    .line 531
    .end local v5    # "wellKnownParameterValue":I
    :cond_5
    add-int v6, p1, v3

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 532
    iget v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v3, v6

    .line 533
    iget-wide v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    long-to-int v0, v6

    .line 534
    .local v0, "intValue":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 535
    goto :goto_0

    .line 536
    .end local v0    # "intValue":I
    :cond_6
    add-int v6, p1, v3

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTokenText(I)Z

    .line 537
    iget v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v3, v6

    .line 538
    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 539
    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 541
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 549
    .end local v1    # "nextByte":B
    .end local v2    # "param":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_7
    iput p3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    move v6, v7

    .line 550
    goto/16 :goto_1
.end method


# virtual methods
.method public decodeConstrainedEncoding(I)Z
    .locals 2
    .param p1, "startIndex"    # I

    .prologue
    const/4 v0, 0x1

    .line 403
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeShortInteger(I)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 404
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 407
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeExtensionMedia(I)Z

    move-result v0

    goto :goto_0
.end method

.method public decodeContentLength(I)Z
    .locals 1
    .param p1, "startIndex"    # I

    .prologue
    .line 611
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v0

    return v0
.end method

.method public decodeContentLocation(I)Z
    .locals 1
    .param p1, "startIndex"    # I

    .prologue
    .line 624
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    return v0
.end method

.method public decodeContentType(I)Z
    .locals 22
    .param p1, "startIndex"    # I

    .prologue
    .line 425
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mContentParameters:Ljava/util/HashMap;

    .line 428
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeValueLength(I)Z

    move-result v15

    if-nez v15, :cond_2

    .line 429
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeConstrainedEncoding(I)Z

    move-result v9

    .line 430
    .local v9, "found":Z
    if-eqz v9, :cond_3

    .line 431
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->expandWellKnownMimeType()V

    .line 433
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v15, v18, v20

    if-nez v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    if-eqz v15, :cond_3

    .line 435
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    const-string v18, ";"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 436
    .local v5, "arrSemicolon":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 437
    .local v6, "arrSpace":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v5, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v18, 0x0

    aget-object v18, v6, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v15, v0, :cond_1

    move-object v4, v5

    .line 439
    .local v4, "arrParameters":[Ljava/lang/String;
    :goto_0
    const/4 v15, 0x0

    aget-object v15, v4, v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 440
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_1
    array-length v15, v4

    if-ge v11, v15, :cond_3

    .line 441
    aget-object v15, v4, v11

    const-string v18, "="

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 442
    .local v7, "arrSubParam":[Ljava/lang/String;
    array-length v15, v7

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v15, v0, :cond_0

    const/4 v15, 0x0

    aget-object v15, v7, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_0

    const/4 v15, 0x1

    aget-object v15, v7, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_0

    .line 444
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mContentParameters:Ljava/util/HashMap;

    const/16 v18, 0x0

    aget-object v18, v7, v18

    const/16 v19, 0x1

    aget-object v19, v7, v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .end local v4    # "arrParameters":[Ljava/lang/String;
    .end local v7    # "arrSubParam":[Ljava/lang/String;
    .end local v11    # "i":I
    :cond_1
    move-object v4, v6

    .line 437
    goto :goto_0

    .line 452
    .end local v5    # "arrSemicolon":[Ljava/lang/String;
    .end local v6    # "arrSpace":[Ljava/lang/String;
    .end local v9    # "found":Z
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v10, v0

    .line 453
    .local v10, "headersLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v12

    .line 454
    .local v12, "mediaPrefixLength":I
    add-int v15, p1, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v15

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_5

    .line 455
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v15, v12

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 456
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 457
    .local v14, "readLength":I
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 458
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->expandWellKnownMimeType()V

    .line 459
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    move-wide/from16 v16, v0

    .line 460
    .local v16, "wellKnownValue":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 461
    .local v13, "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int v15, v15, p1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    move/from16 v18, v0

    sub-int v18, v18, v12

    sub-int v18, v10, v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v15, v1, v2}, Lcom/android/internal/telephony/WspTypeDecoder;->readContentParameters(III)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 463
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v15, v14

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 464
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 465
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 466
    const/4 v9, 0x1

    .line 488
    .end local v10    # "headersLength":I
    .end local v12    # "mediaPrefixLength":I
    .end local v13    # "mimeType":Ljava/lang/String;
    .end local v14    # "readLength":I
    .end local v16    # "wellKnownValue":J
    :cond_3
    :goto_2
    return v9

    .line 468
    .restart local v10    # "headersLength":I
    .restart local v12    # "mediaPrefixLength":I
    .restart local v13    # "mimeType":Ljava/lang/String;
    .restart local v14    # "readLength":I
    .restart local v16    # "wellKnownValue":J
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 470
    .end local v13    # "mimeType":Ljava/lang/String;
    .end local v14    # "readLength":I
    .end local v16    # "wellKnownValue":J
    :cond_5
    add-int v15, p1, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeExtensionMedia(I)Z

    move-result v15

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_6

    .line 471
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v15, v12

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 472
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 473
    .restart local v14    # "readLength":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->expandWellKnownMimeType()V

    .line 474
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    move-wide/from16 v16, v0

    .line 475
    .restart local v16    # "wellKnownValue":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 476
    .restart local v13    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int v15, v15, p1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    move/from16 v18, v0

    sub-int v18, v18, v12

    sub-int v18, v10, v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v15, v1, v2}, Lcom/android/internal/telephony/WspTypeDecoder;->readContentParameters(III)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 478
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v15, v14

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 479
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 480
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    const/4 v9, 0x1

    goto :goto_2

    .line 484
    .end local v10    # "headersLength":I
    .end local v12    # "mediaPrefixLength":I
    .end local v13    # "mimeType":Ljava/lang/String;
    .end local v14    # "readLength":I
    .end local v16    # "wellKnownValue":J
    :catch_0
    move-exception v8

    .line 486
    .local v8, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v9, 0x0

    goto :goto_2

    .line 488
    .end local v8    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v10    # "headersLength":I
    .restart local v12    # "mediaPrefixLength":I
    :cond_6
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public decodeExtensionMedia(I)Z
    .locals 6
    .param p1, "startIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 377
    move v0, p1

    .line 378
    .local v0, "index":I
    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 379
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 380
    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    array-length v1, v3

    .line 381
    .local v1, "length":I
    if-ge v0, v1, :cond_0

    const/4 v2, 0x1

    .line 383
    .local v2, "rtrn":Z
    :cond_0
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_1

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_1
    sub-int v3, v0, p1

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 388
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    iget v5, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v3, v4, p1, v5}, Ljava/lang/String;-><init>([BII)V

    iput-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 390
    return v2
.end method

.method public decodeIntegerValue(I)Z
    .locals 2
    .param p1, "startIndex"    # I

    .prologue
    const/4 v0, 0x1

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeShortInteger(I)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 315
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeLongInteger(I)Z

    move-result v0

    goto :goto_0
.end method

.method public decodeLongInteger(I)Z
    .locals 6
    .param p1, "startIndex"    # I

    .prologue
    .line 289
    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v2, v2, p1

    and-int/lit16 v1, v2, 0xff

    .line 291
    .local v1, "lengthMultiOctet":I
    const/16 v2, 0x1e

    if-le v1, v2, :cond_0

    .line 292
    const/4 v2, 0x0

    .line 299
    :goto_0
    return v2

    .line 294
    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 295
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-gt v0, v1, :cond_1

    .line 296
    iget-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    add-int v5, p1, v0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 298
    :cond_1
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 299
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public decodeShortInteger(I)Z
    .locals 4
    .param p1, "startIndex"    # I

    .prologue
    const/4 v0, 0x1

    .line 271
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 276
    :goto_0
    return v0

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v1, v1, p1

    and-int/lit8 v1, v1, 0x7f

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 275
    iput v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    goto :goto_0
.end method

.method public decodeTextString(I)Z
    .locals 5
    .param p1, "startIndex"    # I

    .prologue
    .line 228
    move v0, p1

    .line 229
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_0

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    sub-int v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 233
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v1, v1, p1

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_1

    .line 234
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/lit8 v4, v4, -0x2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 238
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 236
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    iget v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v1, v2, p1, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    goto :goto_1
.end method

.method public decodeTokenText(I)Z
    .locals 4
    .param p1, "startIndex"    # I

    .prologue
    .line 251
    move v0, p1

    .line 252
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_0

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_0
    sub-int v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 256
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    iget v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v1, v2, p1, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 258
    const/4 v1, 0x1

    return v1
.end method

.method public decodeUintvarInteger(I)Z
    .locals 7
    .param p1, "startIndex"    # I

    .prologue
    const/4 v6, 0x7

    .line 328
    move v0, p1

    .line 330
    .local v0, "index":I
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 331
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 332
    sub-int v1, v0, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 333
    const/4 v1, 0x0

    .line 340
    :goto_1
    return v1

    .line 335
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    shl-long/2addr v2, v6

    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v1, v1, v0

    and-int/lit8 v1, v1, 0x7f

    int-to-long v4, v1

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_1
    iget-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    shl-long/2addr v2, v6

    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v1, v1, v0

    and-int/lit8 v1, v1, 0x7f

    int-to-long v4, v1

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 339
    sub-int v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 340
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public decodeValueLength(I)Z
    .locals 4
    .param p1, "startIndex"    # I

    .prologue
    const/16 v2, 0x1f

    const/4 v0, 0x1

    .line 353
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    if-le v1, v2, :cond_0

    .line 354
    const/4 v0, 0x0

    .line 363
    :goto_0
    return v0

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v1, v1, p1

    if-ge v1, v2, :cond_1

    .line 357
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v1, v1, p1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 358
    iput v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    goto :goto_0

    .line 360
    :cond_1
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    .line 361
    iget v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    goto :goto_0
.end method

.method public decodeXWapApplicationId(I)Z
    .locals 2
    .param p1, "startIndex"    # I

    .prologue
    const/4 v0, 0x1

    .line 638
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 639
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 640
    invoke-direct {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->expandWellKnownApplicationId()V

    .line 643
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    goto :goto_0
.end method

.method public decodeXWapContentURI(I)Z
    .locals 1
    .param p1, "startIndex"    # I

    .prologue
    .line 720
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    return v0
.end method

.method public decodeXWapInitiatorURI(I)Z
    .locals 1
    .param p1, "startIndex"    # I

    .prologue
    .line 733
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    return v0
.end method

.method public getContentParameters()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mContentParameters:Ljava/util/HashMap;

    return-object v0
.end method

.method public getDecodedDataLength()I
    .locals 1

    .prologue
    .line 740
    iget v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    return v0
.end method

.method public getValue32()J
    .locals 2

    .prologue
    .line 747
    iget-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    return-wide v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    return-object v0
.end method

.method public seekXWapApplicationId(II)Z
    .locals 9
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    const/16 v8, 0x1f

    const/4 v4, 0x0

    .line 656
    move v2, p1

    .line 659
    .local v2, "index":I
    move v2, p1

    :goto_0
    if-gt v2, p2, :cond_0

    .line 664
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 665
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v6

    long-to-int v1, v6

    .line 667
    .local v1, "fieldValue":I
    const/16 v5, 0x2f

    if-ne v1, v5, :cond_2

    .line 668
    add-int/lit8 v5, v2, 0x1

    int-to-long v6, v5

    iput-wide v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 669
    const/4 v4, 0x1

    .line 707
    .end local v1    # "fieldValue":I
    :cond_0
    :goto_1
    return v4

    .line 672
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 674
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int/2addr v2, v5

    .line 675
    if-gt v2, p2, :cond_0

    .line 688
    iget-object v5, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v3, v5, v2

    .line 689
    .local v3, "val":B
    if-ltz v3, :cond_3

    const/16 v5, 0x1e

    if-gt v3, v5, :cond_3

    .line 690
    iget-object v5, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v5, v5, v2

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v2, v5

    goto :goto_0

    .line 691
    :cond_3
    if-ne v3, v8, :cond_4

    .line 692
    add-int/lit8 v5, v2, 0x1

    if-ge v5, p2, :cond_0

    .line 693
    add-int/lit8 v2, v2, 0x1

    .line 694
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 695
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_0

    .line 696
    :cond_4
    if-ge v8, v3, :cond_5

    const/16 v5, 0x7f

    if-gt v3, v5, :cond_5

    .line 697
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 698
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    add-int/2addr v2, v5

    goto :goto_0

    .line 700
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 703
    .end local v3    # "val":B
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_1
.end method
