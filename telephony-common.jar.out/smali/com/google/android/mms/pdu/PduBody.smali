.class public Lcom/google/android/mms/pdu/PduBody;
.super Ljava/lang/Object;
.source "PduBody.java"

# interfaces
.implements Ljava/io/Serializable;

# instance fields
.field private mPartMapByContentId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mPartMapByContentLocation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mPartMapByFileName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mPartMapByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mParts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    .line 27
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    .line 28
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    .line 29
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    .line 30
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    .line 42
    return-void
.end method

.method private putPartToMaps(Lcom/google/android/mms/pdu/PduPart;)V
    .locals 9
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v1

    .line 47
    .local v1, "contentId":[B
    if-eqz v1, :cond_0

    .line 50
    :try_start_0
    iget-object v6, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    new-instance v7, Ljava/lang/String;

    const-string v8, "utf-8"

    invoke-direct {v7, v1, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v6, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v2

    .line 59
    .local v2, "contentLocation":[B
    if-eqz v2, :cond_1

    .line 62
    :try_start_1
    new-instance v0, Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-direct {v0, v2, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 63
    .local v0, "clc":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    invoke-interface {v6, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    .end local v0    # "clc":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v5

    .line 73
    .local v5, "name":[B
    if-eqz v5, :cond_2

    .line 76
    :try_start_2
    new-instance v0, Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-direct {v0, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 77
    .restart local v0    # "clc":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    invoke-interface {v6, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 86
    .end local v0    # "clc":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v4

    .line 87
    .local v4, "fileName":[B
    if-eqz v4, :cond_3

    .line 90
    :try_start_3
    new-instance v0, Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-direct {v0, v4, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 91
    .restart local v0    # "clc":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    invoke-interface {v6, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 98
    .end local v0    # "clc":Ljava/lang/String;
    :cond_3
    :goto_3
    return-void

    .line 51
    .end local v2    # "contentLocation":[B
    .end local v4    # "fileName":[B
    .end local v5    # "name":[B
    :catch_0
    move-exception v3

    .line 52
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v6, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v6, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 64
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "contentLocation":[B
    :catch_1
    move-exception v3

    .line 65
    .restart local v3    # "e":Ljava/io/UnsupportedEncodingException;
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 66
    .restart local v0    # "clc":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    invoke-interface {v6, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 78
    .end local v0    # "clc":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v5    # "name":[B
    :catch_2
    move-exception v3

    .line 79
    .restart local v3    # "e":Ljava/io/UnsupportedEncodingException;
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    .line 80
    .restart local v0    # "clc":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    invoke-interface {v6, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 92
    .end local v0    # "clc":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v4    # "fileName":[B
    :catch_3
    move-exception v3

    .line 93
    .restart local v3    # "e":Ljava/io/UnsupportedEncodingException;
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 94
    .restart local v0    # "clc":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    invoke-interface {v6, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method


# virtual methods
.method public addPart(ILcom/google/android/mms/pdu/PduPart;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    .line 124
    if-nez p2, :cond_0

    .line 125
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 128
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/mms/pdu/PduBody;->putPartToMaps(Lcom/google/android/mms/pdu/PduPart;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 130
    return-void
.end method

.method public addPart(Lcom/google/android/mms/pdu/PduPart;)Z
    .locals 1
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 112
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->putPartToMaps(Lcom/google/android/mms/pdu/PduPart;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getPart(I)Lcom/google/android/mms/pdu/PduPart;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/PduPart;

    return-object v0
.end method

.method public getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/PduPart;

    .line 187
    .local v0, "part":Lcom/google/android/mms/pdu/PduPart;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 196
    :goto_0
    return-object v1

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "part":Lcom/google/android/mms/pdu/PduPart;
    check-cast v0, Lcom/google/android/mms/pdu/PduPart;

    .line 192
    .restart local v0    # "part":Lcom/google/android/mms/pdu/PduPart;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 193
    goto :goto_0

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/PduPart;

    goto :goto_0
.end method

.method public getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 1
    .param p1, "contentLocation"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/PduPart;

    return-object v0
.end method

.method public getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/PduPart;

    return-object v0
.end method

.method public getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/PduPart;

    return-object v0
.end method

.method public getPartIndex(Lcom/google/android/mms/pdu/PduPart;)I
    .locals 1
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPartsNum()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 147
    return-void
.end method

.method public removePart(I)Lcom/google/android/mms/pdu/PduPart;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/PduPart;

    return-object v0
.end method
