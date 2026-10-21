.class public final Lflix/com/vision/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflix/com/vision/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static ArcDrawer:[I = null

.field public static ArcDrawer_arc_cropDirection:[I = null

.field public static BatteryView:[I = null

.field public static BatteryView_charging:I = 0x0

.field public static BatteryView_level:I = 0x1

.field public static BatteryView_levelColors:I = 0x2

.field public static BatteryView_showValue:I = 0x3

.field public static BatteryView_warningLevel:I = 0x4

.field public static BetterVideoPlayer:[I = null

.field public static BetterVideoPlayer_bvp_autoFullscreen:I = 0x0

.field public static BetterVideoPlayer_bvp_autoPlay:I = 0x1

.field public static BetterVideoPlayer_bvp_captionColor:I = 0x2

.field public static BetterVideoPlayer_bvp_captionSize:I = 0x3

.field public static BetterVideoPlayer_bvp_disableControls:I = 0x4

.field public static BetterVideoPlayer_bvp_hideControlsDuration:I = 0x5

.field public static BetterVideoPlayer_bvp_hideControlsOnPlay:I = 0x6

.field public static BetterVideoPlayer_bvp_loadingStyle:I = 0x7

.field public static BetterVideoPlayer_bvp_loop:I = 0x8

.field public static BetterVideoPlayer_bvp_menu:I = 0x9

.field public static BetterVideoPlayer_bvp_pauseDrawable:I = 0xa

.field public static BetterVideoPlayer_bvp_playDrawable:I = 0xb

.field public static BetterVideoPlayer_bvp_restartDrawable:I = 0xc

.field public static BetterVideoPlayer_bvp_showBottomProgressBar:I = 0xd

.field public static BetterVideoPlayer_bvp_showToolbar:I = 0xe

.field public static BetterVideoPlayer_bvp_showTotalDuration:I = 0xf

.field public static BetterVideoPlayer_bvp_source:I = 0x10

.field public static BetterVideoPlayer_bvp_swipeGesturesEnabled:I = 0x11

.field public static BetterVideoPlayer_bvp_title:I = 0x12

.field public static CarouselPicker:[I = null

.field public static CarouselPicker_items_visible:I = 0x0

.field public static CarouselPicker_orientation:I = 0x1

.field public static CarouselPicker_text_max_lines:I = 0x2

.field public static CarouselPicker_unselected_item_opacity:I = 0x3

.field public static MaterialSearchView:[I = null

.field public static MaterialSearchView_android_fitsSystemWindows:I = 0x2

.field public static MaterialSearchView_android_hint:I = 0x3

.field public static MaterialSearchView_android_inputType:I = 0x4

.field public static MaterialSearchView_android_textColor:I = 0x0

.field public static MaterialSearchView_android_textColorHint:I = 0x1

.field public static MaterialSearchView_searchBackIcon:I = 0x5

.field public static MaterialSearchView_searchBackground:I = 0x6

.field public static MaterialSearchView_searchBarHeight:I = 0x7

.field public static MaterialSearchView_searchCloseIcon:I = 0x8

.field public static MaterialSearchView_searchSuggestionBackground:I = 0x9

.field public static MaterialSearchView_searchVoiceIcon:I = 0xa

.field public static MaterialSearchView_voiceHintPrompt:I = 0xb

.field public static MyTextView:[I = null

.field public static MyTextView_myTextStyle:I = 0x0

.field public static VideoView:[I = null

.field public static VideoView_measureBasedOnAspectRatio:I = 0x0

.field public static VideoView_useDefaultControls:I = 0x1

.field public static VideoView_useTextureViewBacking:I = 0x2

.field public static VideoView_videoScale:I = 0x3

.field public static VideoView_videoViewApiImpl:I = 0x4

.field public static VideoView_videoViewApiImplLegacy:I = 0x5


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lflix/com/vision/R$styleable;->ArcDrawer:[I

    new-array v0, v0, [I

    sput-object v0, Lflix/com/vision/R$styleable;->ArcDrawer_arc_cropDirection:[I

    const v0, 0x7f0405a6

    const v1, 0x7f0406e7

    const v2, 0x7f04010b

    const v3, 0x7f0403b1

    const v4, 0x7f0403b2

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lflix/com/vision/R$styleable;->BatteryView:[I

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lflix/com/vision/R$styleable;->BetterVideoPlayer:[I

    const v0, 0x7f040671

    const v1, 0x7f0406cc

    const v2, 0x7f040355

    const v3, 0x7f0404dd

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lflix/com/vision/R$styleable;->CarouselPicker:[I

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lflix/com/vision/R$styleable;->MaterialSearchView:[I

    const v0, 0x7f0404bb

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lflix/com/vision/R$styleable;->MyTextView:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lflix/com/vision/R$styleable;->VideoView:[I

    return-void

    :array_0
    .array-data 4
        0x7f0400b3
        0x7f0400b4
        0x7f0400b5
        0x7f0400b6
        0x7f0400b7
        0x7f0400b8
        0x7f0400b9
        0x7f0400ba
        0x7f0400bb
        0x7f0400bc
        0x7f0400bd
        0x7f0400be
        0x7f0400bf
        0x7f0400c0
        0x7f0400c1
        0x7f0400c2
        0x7f0400c3
        0x7f0400c4
        0x7f0400c5
    .end array-data

    :array_1
    .array-data 4
        0x1010098
        0x101009a
        0x10100dd
        0x1010150
        0x1010220
        0x7f040573
        0x7f040574
        0x7f040575
        0x7f040576
        0x7f04057f
        0x7f040581
        0x7f0406e4
    .end array-data

    :array_2
    .array-data 4
        0x7f040450
        0x7f0406d1
        0x7f0406d5
        0x7f0406db
        0x7f0406dc
        0x7f0406dd
    .end array-data
.end method
