.class public Landroid/net/RssiCurve;
.super Ljava/lang/Object;
.source "RssiCurve.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/RssiCurve;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ACTIVE_NETWORK_RSSI_BOOST:I = 0x19


# instance fields
.field public final activeNetworkRssiBoost:I

.field public final bucketWidth:I

.field public final rssiBuckets:[B

.field public final start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Landroid/net/RssiCurve$1;

    invoke-direct {v0}, Landroid/net/RssiCurve$1;-><init>()V

    sput-object v0, Landroid/net/RssiCurve;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "bucketWidth"    # I
    .param p3, "rssiBuckets"    # [B

    .prologue
    .line 83
    const/16 v0, 0x19

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/RssiCurve;-><init>(II[BI)V

    .line 84
    return-void
.end method

.method public constructor <init>(II[BI)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "bucketWidth"    # I
    .param p3, "rssiBuckets"    # [B
    .param p4, "activeNetworkRssiBoost"    # I

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Landroid/net/RssiCurve;->start:I

    .line 96
    iput p2, p0, Landroid/net/RssiCurve;->bucketWidth:I

    .line 97
    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rssiBuckets must be at least one element large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    iput-object p3, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    .line 101
    iput p4, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    .line 102
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/net/RssiCurve;->start:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/net/RssiCurve;->bucketWidth:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 108
    .local v0, "bucketCount":I
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    .line 109
    iget-object v1, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    .line 111
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/RssiCurve$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/net/RssiCurve$1;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/net/RssiCurve;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    if-ne p0, p1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v1

    .line 175
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 177
    check-cast v0, Landroid/net/RssiCurve;

    .line 179
    .local v0, "rssiCurve":Landroid/net/RssiCurve;
    iget v3, p0, Landroid/net/RssiCurve;->start:I

    iget v4, v0, Landroid/net/RssiCurve;->start:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/net/RssiCurve;->bucketWidth:I

    iget v4, v0, Landroid/net/RssiCurve;->bucketWidth:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    iget-object v4, v0, Landroid/net/RssiCurve;->rssiBuckets:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    iget v4, v0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 187
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/net/RssiCurve;->start:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/net/RssiCurve;->bucketWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lookupScore(I)B
    .locals 1
    .param p1, "rssi"    # I

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/RssiCurve;->lookupScore(IZ)B

    move-result v0

    return v0
.end method

.method public lookupScore(IZ)B
    .locals 3
    .param p1, "rssi"    # I
    .param p2, "isActiveNetwork"    # Z

    .prologue
    .line 149
    if-eqz p2, :cond_0

    .line 150
    iget v1, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    add-int/2addr p1, v1

    .line 153
    :cond_0
    iget v1, p0, Landroid/net/RssiCurve;->start:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/net/RssiCurve;->bucketWidth:I

    div-int v0, v1, v2

    .line 156
    .local v0, "index":I
    if-gez v0, :cond_2

    .line 157
    const/4 v0, 0x0

    .line 162
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    aget-byte v1, v1, v0

    return v1

    .line 158
    :cond_2
    iget-object v1, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    .line 159
    iget-object v1, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "RssiCurve[start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/RssiCurve;->start:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",bucketWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/RssiCurve;->bucketWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",activeNetworkRssiBoost="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    const-string v2, ",buckets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 202
    iget-object v2, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    aget-byte v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    iget-object v2, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 204
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_1
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 120
    iget v0, p0, Landroid/net/RssiCurve;->start:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget v0, p0, Landroid/net/RssiCurve;->bucketWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v0, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v0, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 124
    iget v0, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    return-void
.end method
