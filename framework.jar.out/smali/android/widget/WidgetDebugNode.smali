.class public Landroid/widget/WidgetDebugNode;
.super Ljava/lang/Object;
.source "WidgetDebugNode.java"


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "CLASS_NAME"

.field public static final HASH_CODE:Ljava/lang/String; = "HASH_CODE"

.field public static final HAS_FOCUS:Ljava/lang/String; = "HAS_FOCUS"

.field public static final IMAGE:Ljava/lang/String; = "IMAGE_DATA"

.field public static final IS_CHECKED:Ljava/lang/String; = "IS_CHECKED"

.field public static final IS_CLICKABLE:Ljava/lang/String; = "IS_CLICKABLE"

.field public static final IS_ENABLED:Ljava/lang/String; = "IS_ENABLED"

.field public static final IS_FOCUSED:Ljava/lang/String; = "IS_FOCUSED"

.field public static final IS_SELECTED:Ljava/lang/String; = "IS_SELECTED"

.field public static final LIST_COUNT:Ljava/lang/String; = "LIST_COUNT"

.field public static final POSITION_ON_X_AXIS:Ljava/lang/String; = "POSITION_ON_X_AXIS"

.field public static final POSITION_ON_Y_AXIS:Ljava/lang/String; = "POSITION_ON_Y_AXIS"

.field public static final PRIMARY_PROGRESS:Ljava/lang/String; = "PRIMARY_PROGRESS"

.field public static final SECONDARY_PROGRESS:Ljava/lang/String; = "SECONDARY_PROGRESS"

.field public static final SELECTED_ITEM_POSITION:Ljava/lang/String; = "SELECTED_ITEM_POSITION"

.field public static final TEXT:Ljava/lang/String; = "TEXT_DATA"

.field public static final UNIQUE_IDENTIFIER:Ljava/lang/String; = "UNIQUE_IDENTIFIER"

.field public static final VIEW_HEIGHT:Ljava/lang/String; = "VIEW_HEIGHT"

.field public static final VIEW_WIDTH:Ljava/lang/String; = "VIEW_WIDTH"


# instance fields
.field private attributes:Ljava/util/HashMap;
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

.field private nodeLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/WidgetDebugNode;->attributes:Ljava/util/HashMap;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/WidgetDebugNode;->nodeLevel:I

    .line 50
    return-void
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 233
    iget-object v1, p0, Landroid/widget/WidgetDebugNode;->attributes:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 237
    :cond_1
    iget-object v1, p0, Landroid/widget/WidgetDebugNode;->attributes:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 240
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    const-string v0, "CLASS_NAME"

    invoke-virtual {p0, v0}, Landroid/widget/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHasFocus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    const-string v0, "HAS_FOCUS"

    invoke-virtual {p0, v0}, Landroid/widget/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHashCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "HASH_CODE"

    invoke-virtual {p0, v0}, Landroid/widget/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "IMAGE_DATA"

    invoke-virtual {p0, v0}, Landroid/widget/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsClickable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string v0, "IS_CLICKABLE"

    invoke-virtual {p0, v0}, Landroid/widget/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsEnabled()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "IS_ENABLED"

    invoke-virtual {p0, v0}, Landroid/widget/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsFocused()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string v0, "IS_FOCUSED"

    invoke-virtual {p0, v0}, Landroid/widget/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsSelected()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string v0, "IS_SELECTED"

    invoke-virtual {p0, v0}, Landroid/widget/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeLevel()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Landroid/widget/WidgetDebugNode;->nodeLevel:I

    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 251
    if-nez p1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-object v0

    .line 254
    :cond_1
    iget-object v1, p0, Landroid/widget/WidgetDebugNode;->attributes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    iget-object v0, p0, Landroid/widget/WidgetDebugNode;->attributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "TEXT_DATA"

    invoke-virtual {p0, v0}, Landroid/widget/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    const-string v0, "UNIQUE_IDENTIFIER"

    invoke-virtual {p0, v0}, Landroid/widget/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string v0, "VIEW_HEIGHT"

    invoke-virtual {p0, v0}, Landroid/widget/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewWidth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-string v0, "VIEW_WIDTH"

    invoke-virtual {p0, v0}, Landroid/widget/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const-string v0, "POSITION_ON_X_AXIS"

    invoke-virtual {p0, v0}, Landroid/widget/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    const-string v0, "POSITION_ON_Y_AXIS"

    invoke-virtual {p0, v0}, Landroid/widget/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 198
    if-nez p1, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 201
    :goto_0
    return v0

    :cond_0
    const-string v0, "CLASS_NAME"

    invoke-virtual {p0, v0, p1}, Landroid/widget/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setHasFocus(Ljava/lang/String;)Z
    .locals 1
    .param p1, "hasFocus"    # Ljava/lang/String;

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    :cond_0
    const-string v0, "HAS_FOCUS"

    invoke-virtual {p0, v0, p1}, Landroid/widget/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setHashCode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "hashCode"    # Ljava/lang/String;

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    :cond_0
    const-string v0, "HASH_CODE"

    invoke-virtual {p0, v0, p1}, Landroid/widget/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0

    :cond_0
    const-string v0, "IMAGE_DATA"

    invoke-virtual {p0, v0, p1}, Landroid/widget/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setIsClickable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "isClickable"    # Ljava/lang/String;

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    :cond_0
    const-string v0, "IS_CLICKABLE"

    invoke-virtual {p0, v0, p1}, Landroid/widget/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setIsEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "isEnabled"    # Ljava/lang/String;

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    :cond_0
    const-string v0, "IS_ENABLED"

    invoke-virtual {p0, v0, p1}, Landroid/widget/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setIsFocused(Ljava/lang/String;)Z
    .locals 1
    .param p1, "isFocused"    # Ljava/lang/String;

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    :cond_0
    const-string v0, "IS_FOCUSED"

    invoke-virtual {p0, v0, p1}, Landroid/widget/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setIsSelected(Ljava/lang/String;)Z
    .locals 1
    .param p1, "isSelected"    # Ljava/lang/String;

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0

    :cond_0
    const-string v0, "IS_SELECTED"

    invoke-virtual {p0, v0, p1}, Landroid/widget/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setNodeLevel(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 53
    if-gez p1, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    .line 56
    :cond_0
    iput p1, p0, Landroid/widget/WidgetDebugNode;->nodeLevel:I

    .line 57
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    :cond_0
    const-string v0, "TEXT_DATA"

    invoke-virtual {p0, v0, p1}, Landroid/widget/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setUniqueIdentifier(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uniqueID"    # Ljava/lang/String;

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 212
    :goto_0
    return v0

    :cond_0
    const-string v0, "UNIQUE_IDENTIFIER"

    invoke-virtual {p0, v0, p1}, Landroid/widget/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setViewHeight(Ljava/lang/String;)Z
    .locals 1
    .param p1, "viewHeight"    # Ljava/lang/String;

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    :cond_0
    const-string v0, "VIEW_HEIGHT"

    invoke-virtual {p0, v0, p1}, Landroid/widget/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setViewWidth(Ljava/lang/String;)Z
    .locals 1
    .param p1, "viewWidth"    # Ljava/lang/String;

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    :cond_0
    const-string v0, "VIEW_WIDTH"

    invoke-virtual {p0, v0, p1}, Landroid/widget/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setXPosition(Ljava/lang/String;)Z
    .locals 1
    .param p1, "xPosition"    # Ljava/lang/String;

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    :cond_0
    const-string v0, "POSITION_ON_X_AXIS"

    invoke-virtual {p0, v0, p1}, Landroid/widget/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setYPosition(Ljava/lang/String;)Z
    .locals 1
    .param p1, "yPosition"    # Ljava/lang/String;

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    :cond_0
    const-string v0, "POSITION_ON_Y_AXIS"

    invoke-virtual {p0, v0, p1}, Landroid/widget/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
