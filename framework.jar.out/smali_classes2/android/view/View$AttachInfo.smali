.class final Landroid/view/View$AttachInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AttachInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/View$AttachInfo$InvalidateInfo;,
        Landroid/view/View$AttachInfo$Callbacks;
    }
.end annotation


# instance fields
.field mAccessibilityFetchFlags:I

.field mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

.field mAccessibilityWindowId:I

.field mApplicationScale:F

.field mCanvas:Landroid/graphics/Canvas;

.field final mContentInsets:Landroid/graphics/Rect;

.field mDebugLayout:Z

.field mDisabledSystemUiVisibility:I

.field final mDisplay:Landroid/view/Display;

.field mDisplayState:I

.field mDrawingTime:J

.field mForceReportNewAttributes:Z

.field final mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mGlobalSystemUiVisibility:I

.field final mHandler:Landroid/os/Handler;

.field mHardwareAccelerated:Z

.field mHardwareAccelerationRequested:Z

.field mHardwareRenderer:Landroid/view/HardwareRenderer;

.field mHasNonEmptyGivenInternalInsets:Z

.field mHasSystemUiListeners:Z

.field mHasWindowFocus:Z

.field mHighContrastText:Z

.field mIWindowId:Landroid/view/IWindowId;

.field mIgnoreDirtyState:Z

.field mInTouchMode:Z

.field final mInvalidateChildLocation:[I

.field mKeepScreenOn:Z

.field final mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field mOverscanRequested:Z

.field mPanelParentWindowToken:Landroid/os/IBinder;

.field mPendingAnimatingRenderNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/RenderNode;",
            ">;"
        }
    .end annotation
.end field

.field mPixelPipeEnabled:Z

.field mPixelPipeTarget:Lcom/motorola/pixelpipe/PixelPipeApi;

.field final mPoint:Landroid/graphics/Point;

.field mRecomputeGlobalAttributes:Z

.field final mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

.field mRootView:Landroid/view/View;

.field mScalingRequired:Z

.field final mScrollContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mSession:Landroid/view/IWindowSession;

.field mSetIgnoreDirtyState:Z

.field final mStableInsets:Landroid/graphics/Rect;

.field mSystemUiVisibility:I

.field final mTempArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpInvalRect:Landroid/graphics/Rect;

.field final mTmpLocation:[I

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field final mTmpOutline:Landroid/graphics/Outline;

.field final mTmpRectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpTransformLocation:[F

.field final mTmpTransformRect:Landroid/graphics/RectF;

.field final mTmpTransformRect1:Landroid/graphics/RectF;

.field final mTmpTransformation:Landroid/view/animation/Transformation;

.field final mTransparentLocation:[I

.field final mTreeObserver:Landroid/view/ViewTreeObserver;

.field mTurnOffWindowResizeAnim:Z

.field mUnbufferedDispatchRequested:Z

.field mUse32BitDrawingCache:Z

.field mViewRequestingLayout:Landroid/view/View;

.field final mViewRootImpl:Landroid/view/ViewRootImpl;

.field mViewScrollChanged:Z

.field mViewVisibilityChanged:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/IWindow;

.field mWindowId:Landroid/view/WindowId;

.field mWindowLeft:I

.field final mWindowToken:Landroid/os/IBinder;

.field mWindowTop:I

.field mWindowVisibility:I


# direct methods
.method constructor <init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/Display;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;)V
    .locals 3
    .param p1, "session"    # Landroid/view/IWindowSession;
    .param p2, "window"    # Landroid/view/IWindow;
    .param p3, "display"    # Landroid/view/Display;
    .param p4, "viewRootImpl"    # Landroid/view/ViewRootImpl;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "effectPlayer"    # Landroid/view/View$AttachInfo$Callbacks;

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 20592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20272
    iput v2, p0, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 20309
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    .line 20316
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 20323
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 20330
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    .line 20339
    new-instance v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 20352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    .line 20354
    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    .line 20381
    iput-boolean v2, p0, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 20456
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 20462
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 20468
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    .line 20474
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 20480
    new-instance v0, Landroid/view/ViewTreeObserver;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 20502
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 20507
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 20512
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpTransformRect1:Landroid/graphics/RectF;

    .line 20517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpRectList:Ljava/util/List;

    .line 20522
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 20527
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    .line 20532
    new-instance v0, Landroid/graphics/Outline;

    invoke-direct {v0}, Landroid/graphics/Outline;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpOutline:Landroid/graphics/Outline;

    .line 20537
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    .line 20542
    const v0, 0x7fffffff

    iput v0, p0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    .line 20560
    const-string v0, "debug.layout"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    .line 20565
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    .line 20571
    iput-boolean v2, p0, Landroid/view/View$AttachInfo;->mPixelPipeEnabled:Z

    .line 20576
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mPixelPipeTarget:Lcom/motorola/pixelpipe/PixelPipeApi;

    .line 20593
    iput-object p1, p0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    .line 20594
    iput-object p2, p0, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    .line 20595
    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    .line 20596
    iput-object p3, p0, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    .line 20597
    iput-object p4, p0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 20598
    iput-object p5, p0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 20599
    iput-object p6, p0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    .line 20600
    return-void
.end method
