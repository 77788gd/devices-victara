.class public final Lcom/motorola/android/telephony/MCCTables;
.super Ljava/lang/Object;
.source "MCCTables.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "MCCTables"

    iput-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->LOG_TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    .line 35
    return-void
.end method

.method private isNANPFormat1(Ljava/lang/String;)Z
    .locals 4
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 379
    const/4 v1, 0x0

    .line 381
    .local v1, "isNANP":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 382
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 383
    .local v0, "c":C
    const/16 v2, 0x2b

    if-eq v0, v2, :cond_0

    const/16 v2, 0x30

    if-eq v0, v2, :cond_0

    const/16 v2, 0x31

    if-ne v0, v2, :cond_1

    .line 389
    .end local v0    # "c":C
    :cond_0
    :goto_0
    return v1

    .line 386
    .restart local v0    # "c":C
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isNANPFormat2(Ljava/lang/String;)Z
    .locals 8
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/16 v5, 0x2b

    .line 396
    const/4 v2, 0x0

    .line 398
    .local v2, "isNANP":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 399
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 400
    .local v0, "c0":C
    if-eq v0, v5, :cond_0

    if-eq v0, v6, :cond_0

    if-ne v0, v7, :cond_1

    .line 411
    .end local v0    # "c0":C
    :cond_0
    :goto_0
    return v2

    .line 403
    .restart local v0    # "c0":C
    :cond_1
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 404
    .local v1, "c3":C
    if-eq v1, v5, :cond_0

    if-eq v1, v6, :cond_0

    if-eq v1, v7, :cond_0

    .line 407
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isNANPFormat3(Ljava/lang/String;)Z
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 418
    const/4 v0, 0x0

    .line 419
    .local v0, "isNANP":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 420
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/android/telephony/MCCTables;->isNANPFormat2(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    const/4 v0, 0x1

    .line 424
    :cond_0
    return v0
.end method

.method private isNANPFormat4(Ljava/lang/String;)Z
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "isNANP":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 433
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/android/telephony/MCCTables;->isNANPFormat3(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    const/4 v0, 0x1

    .line 437
    :cond_0
    return v0
.end method

.method private isNANPFormat5(Ljava/lang/String;)Z
    .locals 5
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 444
    const/4 v2, 0x0

    .line 445
    .local v2, "isNANP":Z
    iget-object v3, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    const-string v4, "cur_country_idd"

    invoke-static {v3, v4}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "curIdd":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 449
    .local v1, "iddLen":I
    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v1, 0xb

    if-ne v3, v4, :cond_0

    .line 450
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/motorola/android/telephony/MCCTables;->isNANPFormat3(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    const/4 v2, 0x1

    .line 456
    .end local v1    # "iddLen":I
    :cond_0
    return v2
.end method


# virtual methods
.method public addUnknownCountry(Lcom/motorola/android/telephony/MCCEntry;)V
    .locals 4
    .param p1, "entry"    # Lcom/motorola/android/telephony/MCCEntry;

    .prologue
    const/4 v3, 0x0

    .line 272
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 274
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "sid"

    sget v2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    const-string v1, "mcc"

    iget v2, p1, Lcom/motorola/android/telephony/MCCEntry;->MCC:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    const-string v1, "country_code"

    iget v2, p1, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    const-string v1, "country_name"

    iget-object v2, p1, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v1, "ndd"

    iget-object v2, p1, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v1, "idd"

    iget-object v2, p1, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v1, "area_code"

    iget-object v2, p1, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v1, "mdn_length"

    iget v2, p1, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    const-string v1, "dst_flag"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 283
    const-string v1, "nanps"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 284
    const-string v1, "nbpcd"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 285
    const-string v1, "time_zone"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 287
    iget-object v1, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/internal/telephony/HbpcdLookup$Useradd;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 288
    return-void
.end method

.method public formatNANPMDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "rawMdn"    # Ljava/lang/String;

    .prologue
    .line 486
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/MCCTables;->isNANPFormat3(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "pureMdn":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 488
    .end local v0    # "pureMdn":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/MCCTables;->isNANPFormat4(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 489
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "pureMdn":Ljava/lang/String;
    goto :goto_0

    .line 491
    .end local v0    # "pureMdn":Ljava/lang/String;
    :cond_1
    move-object v0, p1

    .restart local v0    # "pureMdn":Ljava/lang/String;
    goto :goto_0
.end method

.method public getAllCountryListInDb()[Lcom/motorola/android/telephony/MCCEntry;
    .locals 20

    .prologue
    .line 180
    const-string v18, ""

    .line 182
    .local v18, "lastCountryName":Ljava/lang/String;
    const/16 v17, 0x0

    .line 183
    .local v17, "j":I
    const/16 v19, 0x0

    .line 185
    .local v19, "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MCC"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "Country_Code"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "Country_Name"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "NDD"

    aput-object v2, v3, v1

    .line 189
    .local v3, "projection":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/internal/telephony/HbpcdLookup$MccLookup;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "Country_Name"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 190
    .local v12, "c":Landroid/database/Cursor;
    if-nez v12, :cond_0

    .line 191
    const/4 v14, 0x0

    move-object/from16 v4, v19

    .line 216
    .end local v19    # "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    .local v4, "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    :goto_0
    return-object v14

    .line 194
    .end local v4    # "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    .restart local v19    # "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 195
    .local v13, "count":I
    add-int/lit8 v1, v13, 0x1

    new-array v14, v1, [Lcom/motorola/android/telephony/MCCEntry;

    .line 197
    .local v14, "countryList":[Lcom/motorola/android/telephony/MCCEntry;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 198
    const/16 v16, 0x0

    .local v16, "i":I
    move-object/from16 v4, v19

    .end local v19    # "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    .restart local v4    # "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    :goto_1
    move/from16 v0, v16

    if-ge v0, v13, :cond_2

    .line 199
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 200
    .local v15, "curCountryName":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 202
    .local v5, "MCC":I
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 203
    .local v6, "countryCode":I
    move-object v7, v15

    .line 204
    .local v7, "countryName":Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 205
    .local v8, "NDD":Ljava/lang/String;
    new-instance v4, Lcom/motorola/android/telephony/MCCEntry;

    .end local v4    # "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    const-string v9, "011"

    const-string v10, "847"

    const/16 v11, 0xa

    invoke-direct/range {v4 .. v11}, Lcom/motorola/android/telephony/MCCEntry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 206
    .restart local v4    # "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    aput-object v4, v14, v17

    .line 207
    add-int/lit8 v17, v17, 0x1

    .line 208
    move-object/from16 v18, v15

    .line 210
    .end local v5    # "MCC":I
    .end local v6    # "countryCode":I
    .end local v7    # "countryName":Ljava/lang/String;
    .end local v8    # "NDD":Ljava/lang/String;
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 198
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 212
    .end local v15    # "curCountryName":Ljava/lang/String;
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/android/telephony/MCCTables;->getCountryFromUserTable()Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v1

    aput-object v1, v14, v13

    goto :goto_0
.end method

.method public getCountryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;
    .locals 26
    .param p1, "mcc"    # I

    .prologue
    .line 45
    const-string v9, ""

    .line 46
    .local v9, "NDD":Ljava/lang/String;
    const-string v10, ""

    .line 47
    .local v10, "IDD":Ljava/lang/String;
    const-string v11, ""

    .line 48
    .local v11, "areaCode":Ljava/lang/String;
    const/4 v12, 0x0

    .line 49
    .local v12, "MDNLength":I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v24

    .line 51
    .local v24, "mMdn":Ljava/lang/String;
    const/16 v25, 0x0

    .line 52
    .local v25, "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    const/16 v22, 0x0

    .line 55
    .local v22, "c":Landroid/database/Cursor;
    if-nez v24, :cond_1

    const-string v24, ""

    .line 58
    :goto_0
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 59
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "mcc"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "country_code"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "ndd"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "country_name"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "idd"

    aput-object v3, v4, v2

    .line 64
    .local v4, "projection1":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/HbpcdLookup$Useradd;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 66
    if-eqz v22, :cond_7

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 68
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    .line 69
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 70
    .local v6, "MCC":I
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 71
    .local v7, "countryCode":I
    const/4 v2, 0x2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 72
    const/4 v2, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, "countryName":Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 74
    new-instance v5, Lcom/motorola/android/telephony/MCCEntry;

    invoke-direct/range {v5 .. v12}, Lcom/motorola/android/telephony/MCCEntry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    .end local v4    # "projection1":[Ljava/lang/String;
    .end local v6    # "MCC":I
    .end local v7    # "countryCode":I
    .end local v8    # "countryName":Ljava/lang/String;
    .end local v25    # "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    .local v5, "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    :goto_1
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_0
    return-object v5

    .line 55
    .end local v5    # "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    .restart local v25    # "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/MCCTables;->formatNANPMDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto :goto_0

    .line 79
    :cond_2
    const/4 v2, 0x4

    new-array v15, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "MCC"

    aput-object v3, v15, v2

    const/4 v2, 0x1

    const-string v3, "Country_Code"

    aput-object v3, v15, v2

    const/4 v2, 0x2

    const-string v3, "NDD"

    aput-object v3, v15, v2

    const/4 v2, 0x3

    const-string v3, "Country_Name"

    aput-object v3, v15, v2

    .line 84
    .local v15, "projection2":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v14, Lcom/android/internal/telephony/HbpcdLookup$MccLookup;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MCC="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 87
    if-eqz v22, :cond_7

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 89
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    .line 90
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 91
    .restart local v6    # "MCC":I
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 92
    .restart local v7    # "countryCode":I
    const/4 v2, 0x2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 93
    const/4 v2, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 94
    .restart local v8    # "countryName":Ljava/lang/String;
    if-eqz v24, :cond_6

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v12

    .line 95
    :goto_2
    const-string v2, "United States of America"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    if-lt v12, v2, :cond_3

    .line 96
    const/4 v2, 0x0

    const/4 v3, 0x3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 105
    :cond_3
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v2, 0x0

    const-string v3, "IDD"

    aput-object v3, v18, v2

    .line 106
    .local v18, "projection3":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/internal/telephony/HbpcdLookup$MccIdd;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MCC="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 108
    .local v23, "cur":Landroid/database/Cursor;
    if-eqz v23, :cond_5

    .line 109
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 111
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    .line 112
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 115
    :cond_4
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 117
    :cond_5
    new-instance v5, Lcom/motorola/android/telephony/MCCEntry;

    invoke-direct/range {v5 .. v12}, Lcom/motorola/android/telephony/MCCEntry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .end local v25    # "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    .restart local v5    # "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    goto/16 :goto_1

    .line 94
    .end local v5    # "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    .end local v18    # "projection3":[Ljava/lang/String;
    .end local v23    # "cur":Landroid/database/Cursor;
    .restart local v25    # "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .end local v6    # "MCC":I
    .end local v7    # "countryCode":I
    .end local v8    # "countryName":Ljava/lang/String;
    .end local v15    # "projection2":[Ljava/lang/String;
    :cond_7
    move-object/from16 v5, v25

    .end local v25    # "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    .restart local v5    # "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    goto/16 :goto_1
.end method

.method public getCountryFromUserTable()Lcom/motorola/android/telephony/MCCEntry;
    .locals 15

    .prologue
    .line 132
    const/4 v14, 0x0

    .line 133
    .local v14, "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    const/4 v13, 0x0

    .line 134
    .local v13, "mcc":I
    const/4 v12, 0x0

    .line 135
    .local v12, "countryCode":I
    const/4 v10, 0x0

    .line 136
    .local v10, "mdnLength":I
    const/4 v7, 0x0

    .line 137
    .local v7, "ndd":Ljava/lang/String;
    const/4 v8, 0x0

    .line 138
    .local v8, "idd":Ljava/lang/String;
    const/4 v6, 0x0

    .line 139
    .local v6, "countryName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 141
    .local v9, "areaCode":Ljava/lang/String;
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "mcc"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "country_code"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "ndd"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "country_name"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "idd"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "area_code"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "mdn_length"

    aput-object v1, v2, v0

    .line 149
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/HbpcdLookup$Useradd;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 150
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 151
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 153
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 154
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 155
    .end local v13    # "mcc":I
    .local v4, "mcc":I
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 156
    .end local v12    # "countryCode":I
    .local v5, "countryCode":I
    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 157
    const/4 v0, 0x3

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 158
    const/4 v0, 0x4

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 159
    const/4 v0, 0x5

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 160
    const/4 v0, 0x6

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 161
    new-instance v3, Lcom/motorola/android/telephony/MCCEntry;

    invoke-direct/range {v3 .. v10}, Lcom/motorola/android/telephony/MCCEntry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 163
    .end local v14    # "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    .local v3, "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 167
    :goto_1
    return-object v3

    .end local v3    # "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    .end local v4    # "mcc":I
    .end local v5    # "countryCode":I
    .restart local v12    # "countryCode":I
    .restart local v13    # "mcc":I
    .restart local v14    # "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    :cond_0
    move v5, v12

    .end local v12    # "countryCode":I
    .restart local v5    # "countryCode":I
    move v4, v13

    .end local v13    # "mcc":I
    .restart local v4    # "mcc":I
    move-object v3, v14

    .end local v14    # "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    .restart local v3    # "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    goto :goto_0

    .end local v3    # "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    .end local v4    # "mcc":I
    .end local v5    # "countryCode":I
    .restart local v12    # "countryCode":I
    .restart local v13    # "mcc":I
    .restart local v14    # "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    :cond_1
    move v5, v12

    .end local v12    # "countryCode":I
    .restart local v5    # "countryCode":I
    move v4, v13

    .end local v13    # "mcc":I
    .restart local v4    # "mcc":I
    move-object v3, v14

    .end local v14    # "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    .restart local v3    # "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    goto :goto_1
.end method

.method public isCtryNameExist(Ljava/lang/String;)Z
    .locals 8
    .param p1, "countryName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 325
    const/4 v7, 0x0

    .line 326
    .local v7, "result":Z
    iget-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/HbpcdLookup$MccLookup;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Country_Name= \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 329
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 330
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 332
    const/4 v7, 0x1

    .line 334
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_1
    return v7
.end method

.method public isMCCSupportNBPCD(II)Z
    .locals 1
    .param p1, "mcc"    # I
    .param p2, "sid"    # I

    .prologue
    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public isNANPFormat(Ljava/lang/String;)Z
    .locals 1
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/MCCTables;->isNANPFormat1(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/MCCTables;->isNANPFormat2(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/MCCTables;->isNANPFormat3(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/MCCTables;->isNANPFormat4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/MCCTables;->isNANPFormat5(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnknownCountryExist()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 305
    const/4 v7, 0x0

    .line 306
    .local v7, "result":Z
    iget-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/HbpcdLookup$Useradd;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 307
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 308
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 310
    const/4 v7, 0x1

    .line 312
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 316
    :cond_1
    return v7
.end method

.method public isValidCountryCode(Ljava/lang/String;)Z
    .locals 10
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 224
    const/4 v8, 0x0

    .line 225
    .local v8, "result":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v9, v8

    .line 243
    .end local v8    # "result":Z
    .local v9, "result":I
    :goto_0
    return v9

    .line 229
    .end local v9    # "result":I
    .restart local v8    # "result":Z
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 230
    .local v7, "countryCode":I
    iget-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/HbpcdLookup$MccLookup;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Country_Code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 234
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 235
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 237
    const/4 v8, 0x1

    .line 239
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v9, v8

    .line 243
    .restart local v9    # "result":I
    goto :goto_0
.end method

.method public isValidIDD(Ljava/lang/String;)Z
    .locals 8
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 251
    const/4 v7, 0x0

    .line 252
    .local v7, "result":Z
    iget-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/HbpcdLookup$MccIdd;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IDD= \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 255
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 256
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 258
    const/4 v7, 0x1

    .line 260
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 264
    :cond_1
    return v7
.end method

.method public isValidNANPAreaCode(Ljava/lang/String;)Z
    .locals 9
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 347
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 348
    .local v6, "areaCode":I
    const/4 v8, 0x0

    .line 349
    .local v8, "result":Z
    iget-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/HbpcdLookup$NanpAreaCode;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Area_Code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 352
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 353
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 355
    const/4 v8, 0x1

    .line 357
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_1
    return v8
.end method

.method public removeUnknownCountry()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 296
    iget-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/HbpcdLookup$Useradd;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 298
    return-void
.end method
