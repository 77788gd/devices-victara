.class final Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WindowsForAccessibilityObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WindowsForAccessibilityObserver"


# instance fields
.field private final mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mOldWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecurringAccessibilityEventsIntervalMillis:J

.field private final mTempBinderSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mTempRegion:Landroid/graphics/Region;

.field private final mTempRegion1:Landroid/graphics/Region;

.field private final mTempWindowStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .locals 2
    .param p1, "windowManagerService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "callback"    # Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    .prologue
    .line 978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 948
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    .line 951
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    .line 953
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    .line 955
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    .line 957
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    .line 959
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    .line 961
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 963
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    .line 965
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    .line 979
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mContext:Landroid/content/Context;

    .line 980
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 981
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    .line 982
    new-instance v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    .line 983
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    .line 985
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows()V

    .line 986
    return-void
.end method

.method private cacheWindows(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1218
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1219
    .local v3, "oldWindowCount":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1220
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowInfo;

    invoke-virtual {v4}, Landroid/view/WindowInfo;->recycle()V

    .line 1219
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1222
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1223
    .local v2, "newWindowCount":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 1224
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInfo;

    .line 1225
    .local v1, "newWindow":Landroid/view/WindowInfo;
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-static {v1}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1223
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1227
    .end local v1    # "newWindow":Landroid/view/WindowInfo;
    :cond_1
    return-void
.end method

.method private static clearAndRecycleWindows(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1270
    .local p0, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1271
    .local v1, "windowCount":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1272
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    invoke-virtual {v2}, Landroid/view/WindowInfo;->recycle()V

    .line 1271
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1274
    :cond_0
    return-void
.end method

.method private computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1168
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    .line 1169
    .local v2, "touchableRegion":Landroid/graphics/Region;
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 1170
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1171
    .local v1, "touchableFrame":Landroid/graphics/Rect;
    invoke-virtual {v2, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 1174
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    .line 1175
    .local v3, "windowFrame":Landroid/graphics/RectF;
    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1176
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 1179
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    .line 1180
    .local v0, "matrix":Landroid/graphics/Matrix;
    # invokes: Lcom/android/server/wm/AccessibilityController;->populateTransformationMatrixLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    invoke-static {p1, v0}, Lcom/android/server/wm/AccessibilityController;->access$500(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    .line 1181
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1184
    iget v4, v3, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1186
    return-void
.end method

.method private static isReportedWindowType(I)Z
    .locals 1
    .param p0, "windowType"    # I

    .prologue
    .line 1277
    const/16 v0, 0x7ed

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7dd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7ea

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e0

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e9

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7eb

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3ec

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7df

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7ee

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;
    .locals 7
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p1, "boundsInScreen"    # Landroid/graphics/Rect;

    .prologue
    .line 1190
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object v4

    .line 1191
    .local v4, "window":Landroid/view/WindowInfo;
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v5, v4, Landroid/view/WindowInfo;->type:I

    .line 1192
    iget v5, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v5, v4, Landroid/view/WindowInfo;->layer:I

    .line 1193
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 1195
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 1196
    .local v0, "attachedWindow":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    .line 1197
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 1200
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v5

    iput-boolean v5, v4, Landroid/view/WindowInfo;->focused:Z

    .line 1201
    iget-object v5, v4, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1203
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 1204
    .local v2, "childCount":I
    if-lez v2, :cond_2

    .line 1205
    iget-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-nez v5, :cond_1

    .line 1206
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 1208
    :cond_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1209
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1210
    .local v1, "child":Lcom/android/server/wm/WindowState;
    iget-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v6}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1208
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1214
    .end local v1    # "child":Lcom/android/server/wm/WindowState;
    .end local v3    # "j":I
    :cond_2
    return-object v4
.end method

.method private populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1292
    .local p1, "outWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1294
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 1295
    .local v3, "windowList":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 1296
    .local v2, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1297
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 1298
    .local v4, "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1299
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {p1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1296
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1302
    .end local v4    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_1
    return-void
.end method

.method private windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z
    .locals 4
    .param p1, "oldWindow"    # Landroid/view/WindowInfo;
    .param p2, "newWindow"    # Landroid/view/WindowInfo;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1230
    if-ne p1, p2, :cond_1

    .line 1266
    :cond_0
    :goto_0
    return v0

    .line 1233
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 1234
    goto :goto_0

    .line 1236
    :cond_2
    if-nez p2, :cond_3

    move v0, v1

    .line 1237
    goto :goto_0

    .line 1239
    :cond_3
    iget v2, p1, Landroid/view/WindowInfo;->type:I

    iget v3, p2, Landroid/view/WindowInfo;->type:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 1240
    goto :goto_0

    .line 1242
    :cond_4
    iget-boolean v2, p1, Landroid/view/WindowInfo;->focused:Z

    iget-boolean v3, p2, Landroid/view/WindowInfo;->focused:Z

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 1243
    goto :goto_0

    .line 1245
    :cond_5
    iget-object v2, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_6

    .line 1246
    iget-object v2, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-eqz v2, :cond_7

    move v0, v1

    .line 1247
    goto :goto_0

    .line 1249
    :cond_6
    iget-object v2, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    iget-object v3, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 1250
    goto :goto_0

    .line 1252
    :cond_7
    iget-object v2, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-nez v2, :cond_8

    .line 1253
    iget-object v2, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-eqz v2, :cond_9

    move v0, v1

    .line 1254
    goto :goto_0

    .line 1256
    :cond_8
    iget-object v2, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    iget-object v3, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    .line 1257
    goto :goto_0

    .line 1259
    :cond_9
    iget-object v2, p1, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    iget-object v3, p2, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    .line 1260
    goto :goto_0

    .line 1262
    :cond_a
    iget-object v2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v3, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1264
    goto :goto_0
.end method


# virtual methods
.method public computeChangedWindows()V
    .locals 25

    .prologue
    .line 1005
    const/16 v21, 0x0

    .line 1006
    .local v21, "windowsChanged":Z
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1008
    .local v20, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 1012
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 1013
    monitor-exit v23

    .line 1164
    :goto_0
    return-void

    .line 1016
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v24, "window"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/WindowManager;

    .line 1018
    .local v18, "windowManager":Landroid/view/WindowManager;
    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v12, v0, Landroid/graphics/Point;->x:I

    .line 1020
    .local v12, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v11, v0, Landroid/graphics/Point;->y:I

    .line 1022
    .local v11, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    .line 1023
    .local v13, "unaccountedSpace":Landroid/graphics/Region;
    const/16 v22, 0x0

    const/16 v24, 0x0

    move/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v13, v0, v1, v12, v11}, Landroid/graphics/Region;->set(IIII)Z

    .line 1025
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    .line 1026
    .local v15, "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    .line 1029
    .local v2, "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1031
    const/4 v6, 0x0

    .line 1033
    .local v6, "focusedWindowAdded":Z
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v14

    .line 1034
    .local v14, "visibleWindowCount":I
    add-int/lit8 v7, v14, -0x1

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_5

    .line 1035
    invoke-virtual {v15, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/WindowState;

    .line 1036
    .local v19, "windowState":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1039
    .local v5, "flags":I
    and-int/lit8 v22, v5, 0x10

    if-eqz v22, :cond_2

    .line 1034
    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1044
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1045
    .local v3, "boundsInScreen":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v3}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 1048
    invoke-virtual {v13, v3}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Rect;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 1053
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->isReportedWindowType(I)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1055
    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;

    move-result-object v16

    .line 1056
    .local v16, "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1057
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1058
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1059
    const/4 v6, 0x1

    .line 1066
    .end local v16    # "window":Landroid/view/WindowInfo;
    :cond_3
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v22, v0

    const/16 v24, 0x7f0

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 1068
    sget-object v22, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v22

    invoke-virtual {v13, v3, v13, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1073
    :cond_4
    invoke-virtual {v13}, Landroid/graphics/Region;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 1085
    .end local v3    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v5    # "flags":I
    .end local v19    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_5
    :goto_2
    if-nez v6, :cond_6

    .line 1086
    add-int/lit8 v7, v14, -0x1

    :goto_3
    if-ltz v7, :cond_6

    .line 1087
    invoke-virtual {v15, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/WindowState;

    .line 1088
    .restart local v19    # "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 1090
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1091
    .restart local v3    # "boundsInScreen":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v3}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 1094
    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;

    move-result-object v16

    .line 1096
    .restart local v16    # "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1097
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1104
    .end local v3    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v16    # "window":Landroid/view/WindowInfo;
    .end local v19    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_6
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v17

    .line 1105
    .local v17, "windowCount":I
    const/4 v7, 0x0

    :goto_4
    move/from16 v0, v17

    if-ge v7, v0, :cond_c

    .line 1106
    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowInfo;

    .line 1107
    .restart local v16    # "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 1108
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 1110
    :cond_7
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    .line 1111
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v4

    .line 1112
    .local v4, "childTokenCount":I
    add-int/lit8 v8, v4, -0x1

    .local v8, "j":I
    :goto_5
    if-ltz v8, :cond_b

    .line 1113
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 1114
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1112
    :cond_8
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    .line 1078
    .end local v4    # "childTokenCount":I
    .end local v8    # "j":I
    .end local v16    # "window":Landroid/view/WindowInfo;
    .end local v17    # "windowCount":I
    .restart local v3    # "boundsInScreen":Landroid/graphics/Rect;
    .restart local v5    # "flags":I
    .restart local v19    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_9
    and-int/lit8 v22, v5, 0x28

    if-nez v22, :cond_1

    goto/16 :goto_2

    .line 1086
    .end local v3    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v5    # "flags":I
    :cond_a
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_3

    .line 1105
    .end local v19    # "windowState":Lcom/android/server/wm/WindowState;
    .restart local v16    # "window":Landroid/view/WindowInfo;
    .restart local v17    # "windowCount":I
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1121
    .end local v16    # "window":Landroid/view/WindowInfo;
    :cond_c
    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V

    .line 1122
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    .line 1127
    const/16 v21, 0x1

    .line 1145
    :cond_d
    :goto_6
    if-eqz v21, :cond_e

    .line 1146
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->cacheWindows(Ljava/util/List;)V

    .line 1148
    :cond_e
    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1151
    if-eqz v21, :cond_f

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;->onWindowsForAccessibilityChanged(Ljava/util/List;)V

    .line 1163
    :cond_f
    invoke-static/range {v20 .. v20}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->clearAndRecycleWindows(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1128
    :cond_10
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_11

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_d

    .line 1132
    :cond_11
    const/4 v7, 0x0

    :goto_7
    move/from16 v0, v17

    if-ge v7, v0, :cond_d

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowInfo;

    .line 1134
    .local v10, "oldWindow":Landroid/view/WindowInfo;
    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowInfo;

    .line 1138
    .local v9, "newWindow":Landroid/view/WindowInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 1139
    const/16 v21, 0x1

    .line 1140
    goto :goto_6

    .line 1132
    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 1148
    .end local v2    # "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    .end local v6    # "focusedWindowAdded":Z
    .end local v7    # "i":I
    .end local v9    # "newWindow":Landroid/view/WindowInfo;
    .end local v10    # "oldWindow":Landroid/view/WindowInfo;
    .end local v11    # "screenHeight":I
    .end local v12    # "screenWidth":I
    .end local v13    # "unaccountedSpace":Landroid/graphics/Region;
    .end local v14    # "visibleWindowCount":I
    .end local v15    # "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    .end local v17    # "windowCount":I
    .end local v18    # "windowManager":Landroid/view/WindowManager;
    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v22
.end method

.method public performComputeChangedWindowsNotLocked()V
    .locals 2

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 990
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows()V

    .line 991
    return-void
.end method

.method public scheduleComputeChangedWindowsLocked()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 994
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 998
    :cond_0
    return-void
.end method
