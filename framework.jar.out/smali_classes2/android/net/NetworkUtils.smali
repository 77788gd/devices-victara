.class public Landroid/net/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field public static final RESET_ALL_ADDRESSES:I = 0x3

.field public static final RESET_IPV4_ADDRESSES:I = 0x1

.field public static final RESET_IPV6_ADDRESSES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NetworkUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z
    .locals 1
    .param p0, "left"    # Ljava/net/InetAddress;
    .param p1, "right"    # Ljava/net/InetAddress;

    .prologue
    .line 307
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/net/Inet4Address;

    if-nez v0, :cond_1

    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2

    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native bindProcessToNetwork(I)Z
.end method

.method public static native bindProcessToNetworkForHostResolution(I)Z
.end method

.method public static native bindSocketToNetwork(II)I
.end method

.method public static native enableInterface(Ljava/lang/String;)I
.end method

.method public static native getDhcpError()Ljava/lang/String;
.end method

.method public static native getNetworkBoundToProcess()I
.end method

.method public static getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;
    .locals 6
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "prefixLength"    # I

    .prologue
    .line 266
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 267
    .local v0, "array":[B
    invoke-static {v0, p1}, Landroid/net/NetworkUtils;->maskRawAddress([BI)V

    .line 269
    const/4 v2, 0x0

    .line 271
    .local v2, "netPart":Ljava/net/InetAddress;
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 275
    return-object v2

    .line 272
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetworkPart error - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static hexToInet6Address(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 7
    .param p0, "addrHexString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 321
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s:%s:%s:%s:%s:%s:%s:%s"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/16 v6, 0x8

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/16 v5, 0x8

    const/16 v6, 0xc

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/16 v5, 0xc

    const/16 v6, 0x10

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const/16 v5, 0x10

    const/16 v6, 0x14

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const/16 v5, 0x14

    const/16 v6, 0x18

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const/16 v5, 0x18

    const/16 v6, 0x1c

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const/16 v5, 0x1c

    const/16 v6, 0x20

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NetworkUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in hexToInet6Address("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static inetAddressToInt(Ljava/net/Inet4Address;)I
    .locals 3
    .param p0, "inetAddr"    # Ljava/net/Inet4Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    .line 172
    .local v0, "addr":[B
    const/4 v1, 0x3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method public static intToInetAddress(I)Ljava/net/InetAddress;
    .locals 4
    .param p0, "hostAddress"    # I

    .prologue
    .line 152
    const/4 v2, 0x4

    new-array v0, v2, [B

    const/4 v2, 0x0

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x1

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x2

    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x3

    shr-int/lit8 v3, p0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 158
    .local v0, "addressBytes":[B
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public static makeStrings(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 339
    .local v4, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 340
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 341
    .local v0, "addr":Ljava/net/InetAddress;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    move v1, v2

    .line 342
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 343
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_0
    return-object v4
.end method

.method public static maskRawAddress([BI)V
    .locals 6
    .param p0, "array"    # [B
    .param p1, "prefixLength"    # I

    .prologue
    .line 242
    if-ltz p1, :cond_0

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x8

    if-le p1, v3, :cond_1

    .line 243
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IP address with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes has invalid prefix length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 247
    :cond_1
    div-int/lit8 v1, p1, 0x8

    .line 248
    .local v1, "offset":I
    rem-int/lit8 v2, p1, 0x8

    .line 249
    .local v2, "remainder":I
    const/16 v3, 0xff

    rsub-int/lit8 v4, v2, 0x8

    shl-int/2addr v3, v4

    int-to-byte v0, v3

    .line 251
    .local v0, "mask":B
    array-length v3, p0

    if-ge v1, v3, :cond_2

    aget-byte v3, p0, v1

    and-int/2addr v3, v0

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    .line 253
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 255
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 256
    const/4 v3, 0x0

    aput-byte v3, p0, v1

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    :cond_3
    return-void
.end method

.method public static netmaskIntToPrefixLength(I)I
    .locals 1
    .param p0, "netmask"    # I

    .prologue
    .line 196
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .param p0, "addrString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method protected static parcelInetAddress(Landroid/os/Parcel;Ljava/net/InetAddress;I)V
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "flags"    # I

    .prologue
    .line 217
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 218
    .local v0, "addressArray":[B
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 219
    return-void

    .line 217
    .end local v0    # "addressArray":[B
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseIpAndMask(Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .param p0, "ipAndMaskString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/net/InetAddress;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "address":Ljava/net/InetAddress;
    const/4 v2, -0x1

    .line 286
    .local v2, "prefixLength":I
    :try_start_0
    const-string v3, "/"

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "pieces":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 288
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 295
    .end local v1    # "pieces":[Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 296
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid IP address and mask "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 299
    :cond_1
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 292
    :catch_0
    move-exception v3

    goto :goto_0

    .line 291
    :catch_1
    move-exception v3

    goto :goto_0

    .line 290
    :catch_2
    move-exception v3

    goto :goto_0

    .line 289
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static prefixLengthToNetmaskInt(I)I
    .locals 3
    .param p0, "prefixLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 183
    if-ltz p0, :cond_0

    const/16 v1, 0x20

    if-le p0, v1, :cond_1

    .line 184
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid prefix length (0 <= prefix <= 32)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_1
    const/4 v1, -0x1

    rsub-int/lit8 v2, p0, 0x20

    shl-int v0, v1, v2

    .line 187
    .local v0, "value":I
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    return v1
.end method

.method public static native protectFromVpn(I)Z
.end method

.method public static native releaseDhcpLease(Ljava/lang/String;)Z
.end method

.method public static native resetConnections(Ljava/lang/String;I)I
.end method

.method public static native runDhcp(Ljava/lang/String;Landroid/net/DhcpResults;)Z
.end method

.method public static native runDhcpRenew(Ljava/lang/String;Landroid/net/DhcpResults;)Z
.end method

.method public static native stopDhcp(Ljava/lang/String;)Z
.end method

.method public static trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "addr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    .line 356
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 371
    .end local p0    # "addr":Ljava/lang/String;
    .local v3, "octets":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 357
    .end local v3    # "octets":[Ljava/lang/String;
    .restart local p0    # "addr":Ljava/lang/String;
    :cond_1
    const-string v5, "\\."

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 358
    .restart local v3    # "octets":[Ljava/lang/String;
    array-length v5, v3

    if-ne v5, v7, :cond_0

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x10

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 360
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 361
    .local v4, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v7, :cond_3

    .line 363
    :try_start_0
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v6, :cond_0

    .line 364
    aget-object v5, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    if-ge v2, v6, :cond_2

    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 370
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object p0, v4

    .line 371
    goto :goto_0
.end method

.method protected static unparcelInetAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;
    .locals 3
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 226
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 227
    .local v0, "addressArray":[B
    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-object v2

    .line 231
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Ljava/net/UnknownHostException;
    goto :goto_0
.end method
