.class public final Lcom/malinskiy/superrecyclerview/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/malinskiy/superrecyclerview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static RecyclerView:[I = null

.field public static RecyclerView_android_clipToPadding:I = 0x1

.field public static RecyclerView_android_descendantFocusability:I = 0x2

.field public static RecyclerView_android_orientation:I = 0x0

.field public static RecyclerView_fastScrollEnabled:I = 0x3

.field public static RecyclerView_fastScrollHorizontalThumbDrawable:I = 0x4

.field public static RecyclerView_fastScrollHorizontalTrackDrawable:I = 0x5

.field public static RecyclerView_fastScrollVerticalThumbDrawable:I = 0x6

.field public static RecyclerView_fastScrollVerticalTrackDrawable:I = 0x7

.field public static RecyclerView_layoutManager:I = 0x8

.field public static RecyclerView_reverseLayout:I = 0x9

.field public static RecyclerView_spanCount:I = 0xa

.field public static RecyclerView_stackFromEnd:I = 0xb

.field public static SwipeLayout:[I = null

.field public static SwipeLayout_drag_edge:I = 0x0

.field public static SwipeLayout_horizontalSwipeOffset:I = 0x1

.field public static SwipeLayout_show_mode:I = 0x2

.field public static SwipeLayout_verticalSwipeOffset:I = 0x3

.field public static superrecyclerview:[I = null

.field public static superrecyclerview_layout_empty:I = 0x0

.field public static superrecyclerview_layout_moreProgress:I = 0x1

.field public static superrecyclerview_layout_progress:I = 0x2

.field public static superrecyclerview_mainLayoutId:I = 0x3

.field public static superrecyclerview_recyclerClipToPadding:I = 0x4

.field public static superrecyclerview_recyclerPadding:I = 0x5

.field public static superrecyclerview_recyclerPaddingBottom:I = 0x6

.field public static superrecyclerview_recyclerPaddingLeft:I = 0x7

.field public static superrecyclerview_recyclerPaddingRight:I = 0x8

.field public static superrecyclerview_recyclerPaddingTop:I = 0x9

.field public static superrecyclerview_scrollbarStyle:I = 0xa


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/malinskiy/superrecyclerview/R$styleable;->RecyclerView:[I

    const v0, 0x7f0405a7

    const v1, 0x7f0406da

    const v2, 0x7f040206

    const v3, 0x7f0402f5

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/malinskiy/superrecyclerview/R$styleable;->SwipeLayout:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/malinskiy/superrecyclerview/R$styleable;->superrecyclerview:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100c4
        0x10100eb
        0x10100f1
        0x7f04025f
        0x7f040260
        0x7f040261
        0x7f040262
        0x7f040263
        0x7f040364
        0x7f04055e
        0x7f0405bc
        0x7f0405e1
    .end array-data

    :array_1
    .array-data 4
        0x7f04039b
        0x7f0403a6
        0x7f0403a8
        0x7f0403e8
        0x7f04054c
        0x7f04054d
        0x7f04054e
        0x7f04054f
        0x7f040550
        0x7f040551
        0x7f040572
    .end array-data
.end method
