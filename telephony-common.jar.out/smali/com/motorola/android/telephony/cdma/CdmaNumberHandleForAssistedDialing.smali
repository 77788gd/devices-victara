.class public final Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;
.super Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;
.source "CdmaNumberHandleForAssistedDialing.java"


# static fields
.field private static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "CdmaNumberHandleForAssistedDialing"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;-><init>()V

    .line 24
    return-void
.end method

.method private manipulateNumInVZWNetwork(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .param p1, "sourceNumber"    # Ljava/lang/String;
    .param p2, "byWhom"    # Ljava/lang/String;
    .param p3, "isNBPCDAllowed"    # Z

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 85
    move-object v1, p1

    .line 86
    .local v1, "manipulatedNumber":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 87
    .local v2, "numLength":I
    if-eqz v2, :cond_6

    .line 90
    if-nez p3, :cond_2

    .line 91
    const-string v3, "011"

    invoke-virtual {p0, p1, v3}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->checkAndProcessNonLeadingPlusCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    if-nez v1, :cond_0

    .line 94
    const/4 v3, 0x0

    .line 248
    :goto_0
    return-object v3

    .line 97
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 98
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    const-string v3, "011"

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v3, v1

    .line 101
    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->hasPlusCode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 105
    const/4 v3, 0x0

    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->hasSpecialChar(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 111
    const/4 v3, 0x0

    goto :goto_0

    .line 114
    :cond_4
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 115
    if-nez p3, :cond_6

    .line 116
    const/4 v0, 0x0

    .line 118
    .local v0, "converted":Z
    const/16 v3, 0xc

    if-ne v2, v3, :cond_5

    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3, p1}, Lcom/motorola/android/telephony/MCCTables;->isNANPFormat(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 122
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    const/4 v0, 0x1

    .line 127
    :cond_5
    if-nez v0, :cond_6

    .line 128
    const-string v3, "011"

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    .end local v0    # "converted":Z
    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 245
    const/4 v1, 0x0

    :cond_7
    move-object v3, v1

    .line 248
    goto :goto_0

    .line 133
    :cond_8
    const/16 v3, 0xb

    if-ne v2, v3, :cond_9

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 137
    :cond_9
    const/16 v3, 0xb

    if-lt v2, v3, :cond_6

    .line 141
    const-string v3, "BY_DIALER"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 143
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "011"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 145
    if-eqz p3, :cond_a

    .line 146
    const-string v3, "+"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 148
    :cond_a
    const-string v3, "011"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 153
    :cond_b
    const-string v3, "BY_CONTACT"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 156
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "011"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 159
    const/16 v3, 0xb

    if-ne v2, v3, :cond_d

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 161
    if-eqz p3, :cond_c

    .line 162
    const-string v3, "+"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 164
    :cond_c
    const-string v3, "011"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 168
    :cond_d
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_e
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 172
    :cond_f
    if-eqz p3, :cond_10

    .line 173
    const-string v3, "+"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 175
    :cond_10
    const-string v3, "011"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 179
    :cond_11
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidIDD(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {p1, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 184
    :cond_12
    if-eqz p3, :cond_13

    .line 185
    const-string v3, "+"

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 187
    :cond_13
    const-string v3, "011"

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 191
    :cond_14
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidIDD(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x5

    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 196
    :cond_15
    if-eqz p3, :cond_16

    .line 197
    const-string v3, "+"

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 199
    :cond_16
    const-string v3, "011"

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 203
    :cond_17
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidIDD(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x6

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    const/4 v3, 0x5

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {p1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 208
    :cond_18
    if-eqz p3, :cond_19

    .line 209
    const-string v3, "+"

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 211
    :cond_19
    const-string v3, "011"

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 215
    :cond_1a
    invoke-virtual {p1, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidIDD(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x7

    invoke-virtual {p1, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    const/4 v3, 0x6

    invoke-virtual {p1, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    const/4 v3, 0x5

    invoke-virtual {p1, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 220
    :cond_1b
    if-eqz p3, :cond_1c

    .line 221
    const-string v3, "+"

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 223
    :cond_1c
    const-string v3, "011"

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 227
    :cond_1d
    const/4 v3, 0x5

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidIDD(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x5

    const/16 v4, 0x8

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    const/4 v3, 0x5

    const/4 v4, 0x7

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    const/4 v3, 0x5

    const/4 v4, 0x6

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 232
    :cond_1e
    if-eqz p3, :cond_1f

    .line 233
    const-string v3, "+"

    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 235
    :cond_1f
    const-string v3, "011"

    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method


# virtual methods
.method public getManipulatedNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sourceNumber"    # Ljava/lang/String;
    .param p2, "byWhom"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->isCdmaVoiceCallCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-super {p0, p1, p2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->getManipulatedNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    .end local p1    # "sourceNumber":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 72
    .restart local p1    # "sourceNumber":Ljava/lang/String;
    :cond_0
    const-string v0, "CdmaNumberHandleForAssistedDialing"

    const-string v1, "CDMA is not in service, IMS requesting this?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getManipulatedNumberWithoutPostDial(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "sourceNumber"    # Ljava/lang/String;
    .param p2, "byWhom"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed()Z

    move-result v0

    .line 36
    .local v0, "isNBPCDAllowed":Z
    sget-object v2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    monitor-enter v2

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    const-string v3, "cur_country_mcc"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->mCurrentMcc:I

    .line 38
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    iget v1, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->mCurrentMcc:I

    invoke-static {v1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    .line 48
    sget-boolean v1, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->mDisableVZWSpecificADRules:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    const-string v2, "us"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    const-string v2, "pr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    const-string v2, "vi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    const-string v2, "gu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->manipulateNumInVZWNetwork(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 57
    :goto_0
    return-object v1

    .line 38
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 57
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->manipulateNumberinNonVZWNetwork(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
