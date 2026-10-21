.class public final Landroidx/mediarouter/app/D;
.super Le/s;
.source "SourceFile"


# static fields
.field public static final A0:I


# instance fields
.field public A:Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

.field public B:Landroid/widget/FrameLayout;

.field public C:Landroid/widget/LinearLayout;

.field public D:Landroid/widget/FrameLayout;

.field public E:Landroid/widget/FrameLayout;

.field public F:Landroid/widget/ImageView;

.field public G:Landroid/widget/TextView;

.field public H:Landroid/widget/TextView;

.field public I:Landroid/widget/TextView;

.field public final J:Z

.field public final K:Z

.field public L:Landroid/widget/LinearLayout;

.field public M:Landroid/widget/RelativeLayout;

.field public N:Landroid/widget/LinearLayout;

.field public O:Landroid/view/View;

.field public P:Landroidx/mediarouter/app/OverlayListView;

.field public Q:Landroidx/mediarouter/app/C;

.field public R:Ljava/util/ArrayList;

.field public S:Ljava/util/Set;

.field public T:Ljava/util/Set;

.field public U:Ljava/util/HashSet;

.field public V:Landroid/widget/SeekBar;

.field public W:Landroidx/mediarouter/app/B;

.field public X:Lf1/U;

.field public Y:I

.field public Z:I

.field public a0:I

.field public final b0:I

.field public c0:Ljava/util/HashMap;

.field public d0:Landroid/support/v4/media/session/MediaControllerCompat;

.field public final e0:Landroidx/mediarouter/app/y;

.field public f0:Landroid/support/v4/media/session/PlaybackStateCompat;

.field public g0:Landroid/support/v4/media/MediaDescriptionCompat;

.field public h0:Landroidx/mediarouter/app/x;

.field public i0:Landroid/graphics/Bitmap;

.field public j0:Landroid/net/Uri;

.field public k0:Z

.field public l0:Landroid/graphics/Bitmap;

.field public m0:I

.field public n0:Z

.field public o0:Z

.field public final p:Lf1/X;

.field public p0:Z

.field public final q:Landroidx/mediarouter/app/z;

.field public q0:Z

.field public final r:Lf1/U;

.field public r0:Z

.field public final s:Landroid/content/Context;

.field public s0:I

.field public t:Z

.field public t0:I

.field public u:Z

.field public u0:I

.field public v:I

.field public v0:Landroid/view/animation/Interpolator;

.field public w:Landroid/view/View;

.field public final w0:Landroid/view/animation/Interpolator;

.field public x:Landroid/widget/Button;

.field public final x0:Landroid/view/animation/Interpolator;

.field public y:Landroid/widget/Button;

.field public final y0:Landroid/view/accessibility/AccessibilityManager;

.field public z:Landroid/widget/ImageButton;

.field public final z0:Landroidx/mediarouter/app/n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "MediaRouteCtrlDialog"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    const-wide/16 v1, 0x1e

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    long-to-int v0, v0

    .line 16
    sput v0, Landroidx/mediarouter/app/D;->A0:I

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/mediarouter/app/D;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, p2, v0}, Landroidx/mediarouter/app/o0;->a(Landroid/content/Context;IZ)Landroid/view/ContextThemeWrapper;

    move-result-object p1

    .line 3
    sget p2, Landroidx/mediarouter/R$attr;->mediaRouteTheme:I

    invoke-static {p1, p2}, Landroidx/mediarouter/app/o0;->g(Landroid/content/Context;I)I

    move-result p2

    if-nez p2, :cond_0

    .line 4
    invoke-static {p1}, Landroidx/mediarouter/app/o0;->e(Landroid/content/Context;)I

    move-result p2

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Le/s;-><init>(Landroid/content/Context;I)V

    .line 6
    iput-boolean v0, p0, Landroidx/mediarouter/app/D;->J:Z

    .line 7
    new-instance p2, Landroidx/mediarouter/app/n;

    invoke-direct {p2, p0}, Landroidx/mediarouter/app/n;-><init>(Landroidx/mediarouter/app/D;)V

    iput-object p2, p0, Landroidx/mediarouter/app/D;->z0:Landroidx/mediarouter/app/n;

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Landroidx/mediarouter/app/D;->s:Landroid/content/Context;

    .line 9
    new-instance v0, Landroidx/mediarouter/app/y;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/y;-><init>(Landroidx/mediarouter/app/D;)V

    iput-object v0, p0, Landroidx/mediarouter/app/D;->e0:Landroidx/mediarouter/app/y;

    .line 10
    invoke-static {p2}, Lf1/X;->getInstance(Landroid/content/Context;)Lf1/X;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/D;->p:Lf1/X;

    .line 11
    invoke-static {}, Lf1/X;->isGroupVolumeUxEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/mediarouter/app/D;->K:Z

    .line 12
    new-instance v1, Landroidx/mediarouter/app/z;

    invoke-direct {v1, p0}, Landroidx/mediarouter/app/z;-><init>(Landroidx/mediarouter/app/D;)V

    iput-object v1, p0, Landroidx/mediarouter/app/D;->q:Landroidx/mediarouter/app/z;

    .line 13
    invoke-virtual {v0}, Lf1/X;->getSelectedRoute()Lf1/U;

    move-result-object v1

    iput-object v1, p0, Landroidx/mediarouter/app/D;->r:Lf1/U;

    .line 14
    invoke-virtual {v0}, Lf1/X;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/D;->l(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 15
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/mediarouter/R$dimen;->mr_controller_volume_group_list_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/mediarouter/app/D;->b0:I

    .line 16
    const-string v0, "accessibility"

    .line 17
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Landroidx/mediarouter/app/D;->y0:Landroid/view/accessibility/AccessibilityManager;

    .line 18
    sget p2, Landroidx/mediarouter/R$interpolator;->mr_linear_out_slow_in:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Landroidx/mediarouter/app/D;->w0:Landroid/view/animation/Interpolator;

    .line 19
    sget p2, Landroidx/mediarouter/R$interpolator;->mr_fast_out_slow_in:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/D;->x0:Landroid/view/animation/Interpolator;

    .line 20
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-void
.end method

.method public static k(Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    .line 7
    new-instance v1, Landroidx/mediarouter/app/t;

    .line 8
    .line 9
    invoke-direct {v1, p1, v0, p2}, Landroidx/mediarouter/app/t;-><init>(Landroid/view/View;II)V

    .line 10
    .line 11
    .line 12
    iget p2, p0, Landroidx/mediarouter/app/D;->s0:I

    .line 13
    .line 14
    int-to-long v2, p2

    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Landroidx/mediarouter/app/D;->v0:Landroid/view/animation/Interpolator;

    .line 19
    .line 20
    invoke-virtual {v1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/D;->w:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/mediarouter/app/D;->g0:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/mediarouter/app/D;->f0:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public final f(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    iget-object v3, p0, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ge v2, v3, :cond_1

    .line 16
    .line 17
    iget-object v3, p0, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    add-int v4, v0, v2

    .line 24
    .line 25
    iget-object v5, p0, Landroidx/mediarouter/app/D;->Q:Landroidx/mediarouter/app/C;

    .line 26
    .line 27
    invoke-virtual {v5, v4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Lf1/U;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object v5, p0, Landroidx/mediarouter/app/D;->S:Ljava/util/Set;

    .line 36
    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    sget v4, Landroidx/mediarouter/R$id;->volume_item_container:I

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Landroid/widget/LinearLayout;

    .line 53
    .line 54
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    new-instance v4, Landroid/view/animation/AnimationSet;

    .line 58
    .line 59
    const/4 v5, 0x1

    .line 60
    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 61
    .line 62
    .line 63
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    .line 64
    .line 65
    const/high16 v7, 0x3f800000    # 1.0f

    .line 66
    .line 67
    invoke-direct {v6, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 68
    .line 69
    .line 70
    const-wide/16 v7, 0x0

    .line 71
    .line 72
    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 76
    .line 77
    .line 78
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    .line 79
    .line 80
    const/4 v9, 0x0

    .line 81
    invoke-direct {v6, v9, v9, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 103
    .line 104
    invoke-virtual {v0}, Landroidx/mediarouter/app/OverlayListView;->stopAnimationAll()V

    .line 105
    .line 106
    .line 107
    if-nez p1, :cond_2

    .line 108
    .line 109
    invoke-virtual {p0, v1}, Landroidx/mediarouter/app/D;->g(Z)V

    .line 110
    .line 111
    .line 112
    :cond_2
    return-void
.end method

.method public final g(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/mediarouter/app/D;->S:Ljava/util/Set;

    .line 3
    .line 4
    iput-object v0, p0, Landroidx/mediarouter/app/D;->T:Ljava/util/Set;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/mediarouter/app/D;->q0:Z

    .line 8
    .line 9
    iget-boolean v1, p0, Landroidx/mediarouter/app/D;->r0:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iput-boolean v0, p0, Landroidx/mediarouter/app/D;->r0:Z

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/D;->p(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final h(II)I
    .locals 2

    .line 1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    .line 3
    if-lt p1, p2, :cond_0

    .line 4
    .line 5
    iget v1, p0, Landroidx/mediarouter/app/D;->v:I

    .line 6
    .line 7
    int-to-float v1, v1

    .line 8
    int-to-float p2, p2

    .line 9
    mul-float/2addr v1, p2

    .line 10
    int-to-float p1, p1

    .line 11
    div-float/2addr v1, p1

    .line 12
    add-float/2addr v1, v0

    .line 13
    float-to-int p1, v1

    .line 14
    return p1

    .line 15
    :cond_0
    iget p1, p0, Landroidx/mediarouter/app/D;->v:I

    .line 16
    .line 17
    int-to-float p1, p1

    .line 18
    const/high16 p2, 0x41100000    # 9.0f

    .line 19
    .line 20
    mul-float/2addr p1, p2

    .line 21
    const/high16 p2, 0x41800000    # 16.0f

    .line 22
    .line 23
    div-float/2addr p1, p2

    .line 24
    add-float/2addr p1, v0

    .line 25
    float-to-int p1, p1

    .line 26
    return p1
.end method

.method public final i(Z)I
    .locals 2

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/mediarouter/app/D;->N:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/mediarouter/app/D;->L:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Landroidx/mediarouter/app/D;->L:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    add-int/2addr v1, v0

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/mediarouter/app/D;->M:Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/2addr v1, v0

    .line 36
    :cond_2
    iget-object v0, p0, Landroidx/mediarouter/app/D;->N:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/mediarouter/app/D;->N:Landroid/widget/LinearLayout;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    add-int/2addr v1, v0

    .line 51
    :cond_3
    if-eqz p1, :cond_4

    .line 52
    .line 53
    iget-object p1, p0, Landroidx/mediarouter/app/D;->N:Landroid/widget/LinearLayout;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_4

    .line 60
    .line 61
    iget-object p1, p0, Landroidx/mediarouter/app/D;->O:Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    add-int/2addr p1, v1

    .line 68
    return p1

    .line 69
    :cond_4
    return v1
.end method

.method public final j()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/D;->r:Lf1/U;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/U;->isGroup()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lf1/U;->getMemberRoutes()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-le v0, v1, :cond_0

    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method public final l(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/D;->d0:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/mediarouter/app/D;->e0:Landroidx/mediarouter/app/y;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 9
    .line 10
    .line 11
    iput-object v2, p0, Landroidx/mediarouter/app/D;->d0:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 12
    .line 13
    :cond_0
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-boolean v0, p0, Landroidx/mediarouter/app/D;->u:Z

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_2
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    .line 22
    .line 23
    iget-object v3, p0, Landroidx/mediarouter/app/D;->s:Landroid/content/Context;

    .line 24
    .line 25
    invoke-direct {v0, v3, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroidx/mediarouter/app/D;->d0:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Landroidx/mediarouter/app/D;->d0:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :goto_1
    iput-object v2, p0, Landroidx/mediarouter/app/D;->g0:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 47
    .line 48
    iget-object p1, p0, Landroidx/mediarouter/app/D;->d0:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Landroidx/mediarouter/app/D;->f0:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/mediarouter/app/D;->n()V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/D;->m(Z)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final m(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/D;->X:Lf1/U;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Landroidx/mediarouter/app/D;->n0:Z

    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/mediarouter/app/D;->o0:Z

    .line 9
    .line 10
    or-int/2addr p1, v0

    .line 11
    iput-boolean p1, p0, Landroidx/mediarouter/app/D;->o0:Z

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Landroidx/mediarouter/app/D;->n0:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Landroidx/mediarouter/app/D;->o0:Z

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/mediarouter/app/D;->r:Lf1/U;

    .line 20
    .line 21
    invoke-virtual {v2}, Lf1/U;->isSelected()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1d

    .line 26
    .line 27
    invoke-virtual {v2}, Lf1/U;->isDefaultOrBluetooth()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    goto/16 :goto_11

    .line 34
    .line 35
    :cond_1
    iget-boolean v3, p0, Landroidx/mediarouter/app/D;->t:Z

    .line 36
    .line 37
    if-nez v3, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    iget-object v3, p0, Landroidx/mediarouter/app/D;->I:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-virtual {v2}, Lf1/U;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Landroidx/mediarouter/app/D;->x:Landroid/widget/Button;

    .line 50
    .line 51
    invoke-virtual {v2}, Lf1/U;->canDisconnect()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    const/16 v5, 0x8

    .line 56
    .line 57
    if-eqz v4, :cond_3

    .line 58
    .line 59
    move v4, v0

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    move v4, v5

    .line 62
    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    iget-object v3, p0, Landroidx/mediarouter/app/D;->w:Landroid/view/View;

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    if-nez v3, :cond_5

    .line 69
    .line 70
    iget-boolean v3, p0, Landroidx/mediarouter/app/D;->k0:Z

    .line 71
    .line 72
    if-eqz v3, :cond_5

    .line 73
    .line 74
    iget-object v3, p0, Landroidx/mediarouter/app/D;->l0:Landroid/graphics/Bitmap;

    .line 75
    .line 76
    if-eqz v3, :cond_4

    .line 77
    .line 78
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_4

    .line 83
    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v6, "Can\'t set artwork image with recycled bitmap: "

    .line 87
    .line 88
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v6, p0, Landroidx/mediarouter/app/D;->l0:Landroid/graphics/Bitmap;

    .line 92
    .line 93
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    const-string v6, "MediaRouteCtrlDialog"

    .line 101
    .line 102
    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    iget-object v3, p0, Landroidx/mediarouter/app/D;->F:Landroid/widget/ImageView;

    .line 107
    .line 108
    iget-object v6, p0, Landroidx/mediarouter/app/D;->l0:Landroid/graphics/Bitmap;

    .line 109
    .line 110
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    .line 112
    .line 113
    iget-object v3, p0, Landroidx/mediarouter/app/D;->F:Landroid/widget/ImageView;

    .line 114
    .line 115
    iget v6, p0, Landroidx/mediarouter/app/D;->m0:I

    .line 116
    .line 117
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 118
    .line 119
    .line 120
    :goto_1
    iput-boolean v0, p0, Landroidx/mediarouter/app/D;->k0:Z

    .line 121
    .line 122
    iput-object v4, p0, Landroidx/mediarouter/app/D;->l0:Landroid/graphics/Bitmap;

    .line 123
    .line 124
    iput v0, p0, Landroidx/mediarouter/app/D;->m0:I

    .line 125
    .line 126
    :cond_5
    iget-boolean v3, p0, Landroidx/mediarouter/app/D;->K:Z

    .line 127
    .line 128
    if-nez v3, :cond_7

    .line 129
    .line 130
    invoke-virtual {p0}, Landroidx/mediarouter/app/D;->j()Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-eqz v6, :cond_7

    .line 135
    .line 136
    iget-object v3, p0, Landroidx/mediarouter/app/D;->N:Landroid/widget/LinearLayout;

    .line 137
    .line 138
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    iput-boolean v1, p0, Landroidx/mediarouter/app/D;->p0:Z

    .line 142
    .line 143
    iget-object v3, p0, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 144
    .line 145
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    iget-boolean v3, p0, Landroidx/mediarouter/app/D;->p0:Z

    .line 149
    .line 150
    if-eqz v3, :cond_6

    .line 151
    .line 152
    iget-object v3, p0, Landroidx/mediarouter/app/D;->w0:Landroid/view/animation/Interpolator;

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_6
    iget-object v3, p0, Landroidx/mediarouter/app/D;->x0:Landroid/view/animation/Interpolator;

    .line 156
    .line 157
    :goto_2
    iput-object v3, p0, Landroidx/mediarouter/app/D;->v0:Landroid/view/animation/Interpolator;

    .line 158
    .line 159
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/D;->p(Z)V

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_7
    iget-boolean v6, p0, Landroidx/mediarouter/app/D;->p0:Z

    .line 164
    .line 165
    if-eqz v6, :cond_8

    .line 166
    .line 167
    if-eqz v3, :cond_a

    .line 168
    .line 169
    :cond_8
    iget-boolean v3, p0, Landroidx/mediarouter/app/D;->J:Z

    .line 170
    .line 171
    if-eqz v3, :cond_a

    .line 172
    .line 173
    invoke-virtual {v2}, Lf1/U;->getVolumeHandling()I

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-ne v3, v1, :cond_a

    .line 178
    .line 179
    iget-object v3, p0, Landroidx/mediarouter/app/D;->N:Landroid/widget/LinearLayout;

    .line 180
    .line 181
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-ne v3, v5, :cond_b

    .line 186
    .line 187
    iget-object v3, p0, Landroidx/mediarouter/app/D;->N:Landroid/widget/LinearLayout;

    .line 188
    .line 189
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    iget-object v3, p0, Landroidx/mediarouter/app/D;->V:Landroid/widget/SeekBar;

    .line 193
    .line 194
    invoke-virtual {v2}, Lf1/U;->getVolumeMax()I

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 199
    .line 200
    .line 201
    iget-object v3, p0, Landroidx/mediarouter/app/D;->V:Landroid/widget/SeekBar;

    .line 202
    .line 203
    invoke-virtual {v2}, Lf1/U;->getVolume()I

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 208
    .line 209
    .line 210
    iget-object v3, p0, Landroidx/mediarouter/app/D;->A:Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

    .line 211
    .line 212
    invoke-virtual {p0}, Landroidx/mediarouter/app/D;->j()Z

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    if-eqz v6, :cond_9

    .line 217
    .line 218
    move v6, v0

    .line 219
    goto :goto_3

    .line 220
    :cond_9
    move v6, v5

    .line 221
    :goto_3
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 222
    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_a
    iget-object v3, p0, Landroidx/mediarouter/app/D;->N:Landroid/widget/LinearLayout;

    .line 226
    .line 227
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 228
    .line 229
    .line 230
    :cond_b
    :goto_4
    invoke-virtual {p0}, Landroidx/mediarouter/app/D;->e()Z

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    if-eqz v3, :cond_1c

    .line 235
    .line 236
    iget-object v3, p0, Landroidx/mediarouter/app/D;->g0:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 237
    .line 238
    if-nez v3, :cond_c

    .line 239
    .line 240
    move-object v3, v4

    .line 241
    goto :goto_5

    .line 242
    :cond_c
    invoke-virtual {v3}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    :goto_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 247
    .line 248
    .line 249
    move-result v6

    .line 250
    iget-object v7, p0, Landroidx/mediarouter/app/D;->g0:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 251
    .line 252
    if-nez v7, :cond_d

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_d
    invoke-virtual {v7}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    :goto_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 260
    .line 261
    .line 262
    move-result v7

    .line 263
    invoke-virtual {v2}, Lf1/U;->getPresentationDisplayId()I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    const/4 v8, -0x1

    .line 268
    if-eq v2, v8, :cond_e

    .line 269
    .line 270
    iget-object v2, p0, Landroidx/mediarouter/app/D;->G:Landroid/widget/TextView;

    .line 271
    .line 272
    sget v3, Landroidx/mediarouter/R$string;->mr_controller_casting_screen:I

    .line 273
    .line 274
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 275
    .line 276
    .line 277
    :goto_7
    move v3, v0

    .line 278
    move v2, v1

    .line 279
    goto :goto_a

    .line 280
    :cond_e
    iget-object v2, p0, Landroidx/mediarouter/app/D;->f0:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 281
    .line 282
    if-eqz v2, :cond_13

    .line 283
    .line 284
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-nez v2, :cond_f

    .line 289
    .line 290
    goto :goto_9

    .line 291
    :cond_f
    if-eqz v6, :cond_10

    .line 292
    .line 293
    if-eqz v7, :cond_10

    .line 294
    .line 295
    iget-object v2, p0, Landroidx/mediarouter/app/D;->G:Landroid/widget/TextView;

    .line 296
    .line 297
    sget v3, Landroidx/mediarouter/R$string;->mr_controller_no_info_available:I

    .line 298
    .line 299
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 300
    .line 301
    .line 302
    goto :goto_7

    .line 303
    :cond_10
    if-nez v6, :cond_11

    .line 304
    .line 305
    iget-object v2, p0, Landroidx/mediarouter/app/D;->G:Landroid/widget/TextView;

    .line 306
    .line 307
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    .line 309
    .line 310
    move v2, v1

    .line 311
    goto :goto_8

    .line 312
    :cond_11
    move v2, v0

    .line 313
    :goto_8
    if-nez v7, :cond_12

    .line 314
    .line 315
    iget-object v3, p0, Landroidx/mediarouter/app/D;->H:Landroid/widget/TextView;

    .line 316
    .line 317
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    .line 319
    .line 320
    move v3, v1

    .line 321
    goto :goto_a

    .line 322
    :cond_12
    move v3, v0

    .line 323
    goto :goto_a

    .line 324
    :cond_13
    :goto_9
    iget-object v2, p0, Landroidx/mediarouter/app/D;->G:Landroid/widget/TextView;

    .line 325
    .line 326
    sget v3, Landroidx/mediarouter/R$string;->mr_controller_no_media_selected:I

    .line 327
    .line 328
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 329
    .line 330
    .line 331
    goto :goto_7

    .line 332
    :goto_a
    iget-object v4, p0, Landroidx/mediarouter/app/D;->G:Landroid/widget/TextView;

    .line 333
    .line 334
    if-eqz v2, :cond_14

    .line 335
    .line 336
    move v2, v0

    .line 337
    goto :goto_b

    .line 338
    :cond_14
    move v2, v5

    .line 339
    :goto_b
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 340
    .line 341
    .line 342
    iget-object v2, p0, Landroidx/mediarouter/app/D;->H:Landroid/widget/TextView;

    .line 343
    .line 344
    if-eqz v3, :cond_15

    .line 345
    .line 346
    move v3, v0

    .line 347
    goto :goto_c

    .line 348
    :cond_15
    move v3, v5

    .line 349
    :goto_c
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 350
    .line 351
    .line 352
    iget-object v2, p0, Landroidx/mediarouter/app/D;->f0:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 353
    .line 354
    if-eqz v2, :cond_1c

    .line 355
    .line 356
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    const/4 v3, 0x6

    .line 361
    if-eq v2, v3, :cond_17

    .line 362
    .line 363
    iget-object v2, p0, Landroidx/mediarouter/app/D;->f0:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 364
    .line 365
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    const/4 v3, 0x3

    .line 370
    if-ne v2, v3, :cond_16

    .line 371
    .line 372
    goto :goto_d

    .line 373
    :cond_16
    move v2, v0

    .line 374
    goto :goto_e

    .line 375
    :cond_17
    :goto_d
    move v2, v1

    .line 376
    :goto_e
    iget-object v3, p0, Landroidx/mediarouter/app/D;->z:Landroid/widget/ImageButton;

    .line 377
    .line 378
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    const-wide/16 v6, 0x0

    .line 383
    .line 384
    if-eqz v2, :cond_18

    .line 385
    .line 386
    iget-object v4, p0, Landroidx/mediarouter/app/D;->f0:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 387
    .line 388
    invoke-virtual {v4}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    .line 389
    .line 390
    .line 391
    move-result-wide v8

    .line 392
    const-wide/16 v10, 0x202

    .line 393
    .line 394
    and-long/2addr v8, v10

    .line 395
    cmp-long v4, v8, v6

    .line 396
    .line 397
    if-eqz v4, :cond_18

    .line 398
    .line 399
    sget v2, Landroidx/mediarouter/R$attr;->mediaRoutePauseDrawable:I

    .line 400
    .line 401
    sget v4, Landroidx/mediarouter/R$string;->mr_controller_pause:I

    .line 402
    .line 403
    goto :goto_f

    .line 404
    :cond_18
    if-eqz v2, :cond_19

    .line 405
    .line 406
    iget-object v4, p0, Landroidx/mediarouter/app/D;->f0:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 407
    .line 408
    invoke-virtual {v4}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    .line 409
    .line 410
    .line 411
    move-result-wide v8

    .line 412
    const-wide/16 v10, 0x1

    .line 413
    .line 414
    and-long/2addr v8, v10

    .line 415
    cmp-long v4, v8, v6

    .line 416
    .line 417
    if-eqz v4, :cond_19

    .line 418
    .line 419
    sget v2, Landroidx/mediarouter/R$attr;->mediaRouteStopDrawable:I

    .line 420
    .line 421
    sget v4, Landroidx/mediarouter/R$string;->mr_controller_stop:I

    .line 422
    .line 423
    goto :goto_f

    .line 424
    :cond_19
    if-nez v2, :cond_1a

    .line 425
    .line 426
    iget-object v2, p0, Landroidx/mediarouter/app/D;->f0:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 427
    .line 428
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    .line 429
    .line 430
    .line 431
    move-result-wide v8

    .line 432
    const-wide/16 v10, 0x204

    .line 433
    .line 434
    and-long/2addr v8, v10

    .line 435
    cmp-long v2, v8, v6

    .line 436
    .line 437
    if-eqz v2, :cond_1a

    .line 438
    .line 439
    sget v2, Landroidx/mediarouter/R$attr;->mediaRoutePlayDrawable:I

    .line 440
    .line 441
    sget v4, Landroidx/mediarouter/R$string;->mr_controller_play:I

    .line 442
    .line 443
    goto :goto_f

    .line 444
    :cond_1a
    move v1, v0

    .line 445
    move v2, v1

    .line 446
    move v4, v2

    .line 447
    :goto_f
    iget-object v6, p0, Landroidx/mediarouter/app/D;->z:Landroid/widget/ImageButton;

    .line 448
    .line 449
    if-eqz v1, :cond_1b

    .line 450
    .line 451
    goto :goto_10

    .line 452
    :cond_1b
    move v0, v5

    .line 453
    :goto_10
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 454
    .line 455
    .line 456
    if-eqz v1, :cond_1c

    .line 457
    .line 458
    iget-object v0, p0, Landroidx/mediarouter/app/D;->z:Landroid/widget/ImageButton;

    .line 459
    .line 460
    invoke-static {v3, v2}, Landroidx/mediarouter/app/o0;->g(Landroid/content/Context;I)I

    .line 461
    .line 462
    .line 463
    move-result v1

    .line 464
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 465
    .line 466
    .line 467
    iget-object v0, p0, Landroidx/mediarouter/app/D;->z:Landroid/widget/ImageButton;

    .line 468
    .line 469
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 478
    .line 479
    .line 480
    :cond_1c
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/D;->p(Z)V

    .line 481
    .line 482
    .line 483
    return-void

    .line 484
    :cond_1d
    :goto_11
    invoke-virtual {p0}, Le/c0;->dismiss()V

    .line 485
    .line 486
    .line 487
    return-void
.end method

.method public final n()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/D;->w:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_9

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/mediarouter/app/D;->g0:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    move-object v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    iget-object v2, p0, Landroidx/mediarouter/app/D;->g0:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_1
    iget-object v2, p0, Landroidx/mediarouter/app/D;->h0:Landroidx/mediarouter/app/x;

    .line 26
    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/mediarouter/app/D;->i0:Landroid/graphics/Bitmap;

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    invoke-virtual {v2}, Landroidx/mediarouter/app/x;->getIconBitmap()Landroid/graphics/Bitmap;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :goto_2
    iget-object v3, p0, Landroidx/mediarouter/app/D;->h0:Landroidx/mediarouter/app/x;

    .line 37
    .line 38
    if-nez v3, :cond_3

    .line 39
    .line 40
    iget-object v3, p0, Landroidx/mediarouter/app/D;->j0:Landroid/net/Uri;

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_3
    invoke-virtual {v3}, Landroidx/mediarouter/app/x;->getIconUri()Landroid/net/Uri;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    :goto_3
    if-eq v2, v0, :cond_4

    .line 48
    .line 49
    goto :goto_4

    .line 50
    :cond_4
    if-nez v2, :cond_9

    .line 51
    .line 52
    if-eqz v3, :cond_5

    .line 53
    .line 54
    invoke-virtual {v3, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    goto :goto_5

    .line 61
    :cond_5
    if-nez v3, :cond_6

    .line 62
    .line 63
    if-nez v1, :cond_6

    .line 64
    .line 65
    goto :goto_5

    .line 66
    :cond_6
    :goto_4
    invoke-virtual {p0}, Landroidx/mediarouter/app/D;->j()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_7

    .line 71
    .line 72
    iget-boolean v0, p0, Landroidx/mediarouter/app/D;->K:Z

    .line 73
    .line 74
    if-nez v0, :cond_7

    .line 75
    .line 76
    goto :goto_5

    .line 77
    :cond_7
    iget-object v0, p0, Landroidx/mediarouter/app/D;->h0:Landroidx/mediarouter/app/x;

    .line 78
    .line 79
    if-eqz v0, :cond_8

    .line 80
    .line 81
    const/4 v1, 0x1

    .line 82
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 83
    .line 84
    .line 85
    :cond_8
    new-instance v0, Landroidx/mediarouter/app/x;

    .line 86
    .line 87
    invoke-direct {v0, p0}, Landroidx/mediarouter/app/x;-><init>(Landroidx/mediarouter/app/D;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Landroidx/mediarouter/app/D;->h0:Landroidx/mediarouter/app/x;

    .line 91
    .line 92
    const/4 v1, 0x0

    .line 93
    new-array v1, v1, [Ljava/lang/Void;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    .line 97
    .line 98
    :cond_9
    :goto_5
    return-void
.end method

.method public final o()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/D;->s:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/mediarouter/app/G;->getDialogWidth(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, -0x2

    .line 12
    invoke-virtual {v2, v1, v3}, Landroid/view/Window;->setLayout(II)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    sub-int/2addr v1, v3

    .line 28
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    sub-int/2addr v1, v2

    .line 33
    iput v1, p0, Landroidx/mediarouter/app/D;->v:I

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget v1, Landroidx/mediarouter/R$dimen;->mr_controller_volume_group_list_item_icon_size:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iput v1, p0, Landroidx/mediarouter/app/D;->Y:I

    .line 46
    .line 47
    sget v1, Landroidx/mediarouter/R$dimen;->mr_controller_volume_group_list_item_height:I

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iput v1, p0, Landroidx/mediarouter/app/D;->Z:I

    .line 54
    .line 55
    sget v1, Landroidx/mediarouter/R$dimen;->mr_controller_volume_group_list_max_height:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iput v0, p0, Landroidx/mediarouter/app/D;->a0:I

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Landroidx/mediarouter/app/D;->i0:Landroid/graphics/Bitmap;

    .line 65
    .line 66
    iput-object v0, p0, Landroidx/mediarouter/app/D;->j0:Landroid/net/Uri;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/mediarouter/app/D;->n()V

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/D;->m(Z)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/mediarouter/app/D;->u:Z

    .line 6
    .line 7
    sget-object v0, Lf1/L;->c:Lf1/L;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/mediarouter/app/D;->q:Landroidx/mediarouter/app/z;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    iget-object v3, p0, Landroidx/mediarouter/app/D;->p:Lf1/X;

    .line 13
    .line 14
    invoke-virtual {v3, v0, v1, v2}, Lf1/X;->addCallback(Lf1/L;Lf1/M;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Lf1/X;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/D;->l(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Le/s;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x106000d

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 12
    .line 13
    .line 14
    sget v0, Landroidx/mediarouter/R$layout;->mr_controller_material_dialog_b:I

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Le/c0;->setContentView(I)V

    .line 17
    .line 18
    .line 19
    const v0, 0x102001b

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/16 v1, 0x8

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Landroidx/mediarouter/app/w;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Landroidx/mediarouter/app/w;-><init>(Landroidx/mediarouter/app/D;)V

    .line 34
    .line 35
    .line 36
    sget v2, Landroidx/mediarouter/R$id;->mr_expandable_area:I

    .line 37
    .line 38
    invoke-virtual {p0, v2}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Landroid/widget/FrameLayout;

    .line 43
    .line 44
    iput-object v2, p0, Landroidx/mediarouter/app/D;->B:Landroid/widget/FrameLayout;

    .line 45
    .line 46
    new-instance v3, Landroidx/mediarouter/app/o;

    .line 47
    .line 48
    invoke-direct {v3, p0}, Landroidx/mediarouter/app/o;-><init>(Landroidx/mediarouter/app/D;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    sget v2, Landroidx/mediarouter/R$id;->mr_dialog_area:I

    .line 55
    .line 56
    invoke-virtual {p0, v2}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Landroid/widget/LinearLayout;

    .line 61
    .line 62
    iput-object v2, p0, Landroidx/mediarouter/app/D;->C:Landroid/widget/LinearLayout;

    .line 63
    .line 64
    new-instance v3, Landroidx/mediarouter/app/p;

    .line 65
    .line 66
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .line 71
    .line 72
    sget v2, Landroidx/appcompat/R$attr;->colorPrimary:I

    .line 73
    .line 74
    iget-object v3, p0, Landroidx/mediarouter/app/D;->s:Landroid/content/Context;

    .line 75
    .line 76
    const/4 v4, 0x0

    .line 77
    invoke-static {v3, v4, v2}, Landroidx/mediarouter/app/o0;->f(Landroid/content/Context;II)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    const v5, 0x1010031

    .line 82
    .line 83
    .line 84
    invoke-static {v3, v4, v5}, Landroidx/mediarouter/app/o0;->f(Landroid/content/Context;II)I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    invoke-static {v2, v5}, LD/a;->calculateContrast(II)D

    .line 89
    .line 90
    .line 91
    move-result-wide v5

    .line 92
    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    .line 93
    .line 94
    cmpg-double v5, v5, v7

    .line 95
    .line 96
    if-gez v5, :cond_0

    .line 97
    .line 98
    sget v2, Landroidx/appcompat/R$attr;->colorAccent:I

    .line 99
    .line 100
    invoke-static {v3, v4, v2}, Landroidx/mediarouter/app/o0;->f(Landroid/content/Context;II)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    :cond_0
    const v5, 0x102001a

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v5}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    check-cast v5, Landroid/widget/Button;

    .line 112
    .line 113
    iput-object v5, p0, Landroidx/mediarouter/app/D;->x:Landroid/widget/Button;

    .line 114
    .line 115
    sget v6, Landroidx/mediarouter/R$string;->mr_controller_disconnect:I

    .line 116
    .line 117
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 118
    .line 119
    .line 120
    iget-object v5, p0, Landroidx/mediarouter/app/D;->x:Landroid/widget/Button;

    .line 121
    .line 122
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    .line 124
    .line 125
    iget-object v5, p0, Landroidx/mediarouter/app/D;->x:Landroid/widget/Button;

    .line 126
    .line 127
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    .line 129
    .line 130
    const v5, 0x1020019

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v5}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    check-cast v5, Landroid/widget/Button;

    .line 138
    .line 139
    iput-object v5, p0, Landroidx/mediarouter/app/D;->y:Landroid/widget/Button;

    .line 140
    .line 141
    sget v6, Landroidx/mediarouter/R$string;->mr_controller_stop_casting:I

    .line 142
    .line 143
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 144
    .line 145
    .line 146
    iget-object v5, p0, Landroidx/mediarouter/app/D;->y:Landroid/widget/Button;

    .line 147
    .line 148
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    .line 150
    .line 151
    iget-object v2, p0, Landroidx/mediarouter/app/D;->y:Landroid/widget/Button;

    .line 152
    .line 153
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    .line 155
    .line 156
    sget v2, Landroidx/mediarouter/R$id;->mr_name:I

    .line 157
    .line 158
    invoke-virtual {p0, v2}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    check-cast v2, Landroid/widget/TextView;

    .line 163
    .line 164
    iput-object v2, p0, Landroidx/mediarouter/app/D;->I:Landroid/widget/TextView;

    .line 165
    .line 166
    sget v2, Landroidx/mediarouter/R$id;->mr_close:I

    .line 167
    .line 168
    invoke-virtual {p0, v2}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Landroid/widget/ImageButton;

    .line 173
    .line 174
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    .line 176
    .line 177
    sget v2, Landroidx/mediarouter/R$id;->mr_custom_control:I

    .line 178
    .line 179
    invoke-virtual {p0, v2}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    check-cast v2, Landroid/widget/FrameLayout;

    .line 184
    .line 185
    iput-object v2, p0, Landroidx/mediarouter/app/D;->E:Landroid/widget/FrameLayout;

    .line 186
    .line 187
    sget v2, Landroidx/mediarouter/R$id;->mr_default_control:I

    .line 188
    .line 189
    invoke-virtual {p0, v2}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    check-cast v2, Landroid/widget/FrameLayout;

    .line 194
    .line 195
    iput-object v2, p0, Landroidx/mediarouter/app/D;->D:Landroid/widget/FrameLayout;

    .line 196
    .line 197
    new-instance v2, Landroidx/mediarouter/app/q;

    .line 198
    .line 199
    invoke-direct {v2, p0}, Landroidx/mediarouter/app/q;-><init>(Landroidx/mediarouter/app/D;)V

    .line 200
    .line 201
    .line 202
    sget v5, Landroidx/mediarouter/R$id;->mr_art:I

    .line 203
    .line 204
    invoke-virtual {p0, v5}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    check-cast v5, Landroid/widget/ImageView;

    .line 209
    .line 210
    iput-object v5, p0, Landroidx/mediarouter/app/D;->F:Landroid/widget/ImageView;

    .line 211
    .line 212
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    .line 214
    .line 215
    sget v5, Landroidx/mediarouter/R$id;->mr_control_title_container:I

    .line 216
    .line 217
    invoke-virtual {p0, v5}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    .line 223
    .line 224
    sget v2, Landroidx/mediarouter/R$id;->mr_media_main_control:I

    .line 225
    .line 226
    invoke-virtual {p0, v2}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    check-cast v2, Landroid/widget/LinearLayout;

    .line 231
    .line 232
    iput-object v2, p0, Landroidx/mediarouter/app/D;->L:Landroid/widget/LinearLayout;

    .line 233
    .line 234
    sget v2, Landroidx/mediarouter/R$id;->mr_control_divider:I

    .line 235
    .line 236
    invoke-virtual {p0, v2}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    iput-object v2, p0, Landroidx/mediarouter/app/D;->O:Landroid/view/View;

    .line 241
    .line 242
    sget v2, Landroidx/mediarouter/R$id;->mr_playback_control:I

    .line 243
    .line 244
    invoke-virtual {p0, v2}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 249
    .line 250
    iput-object v2, p0, Landroidx/mediarouter/app/D;->M:Landroid/widget/RelativeLayout;

    .line 251
    .line 252
    sget v2, Landroidx/mediarouter/R$id;->mr_control_title:I

    .line 253
    .line 254
    invoke-virtual {p0, v2}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    check-cast v2, Landroid/widget/TextView;

    .line 259
    .line 260
    iput-object v2, p0, Landroidx/mediarouter/app/D;->G:Landroid/widget/TextView;

    .line 261
    .line 262
    sget v2, Landroidx/mediarouter/R$id;->mr_control_subtitle:I

    .line 263
    .line 264
    invoke-virtual {p0, v2}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    check-cast v2, Landroid/widget/TextView;

    .line 269
    .line 270
    iput-object v2, p0, Landroidx/mediarouter/app/D;->H:Landroid/widget/TextView;

    .line 271
    .line 272
    sget v2, Landroidx/mediarouter/R$id;->mr_control_playback_ctrl:I

    .line 273
    .line 274
    invoke-virtual {p0, v2}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    check-cast v2, Landroid/widget/ImageButton;

    .line 279
    .line 280
    iput-object v2, p0, Landroidx/mediarouter/app/D;->z:Landroid/widget/ImageButton;

    .line 281
    .line 282
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    .line 284
    .line 285
    sget v0, Landroidx/mediarouter/R$id;->mr_volume_control:I

    .line 286
    .line 287
    invoke-virtual {p0, v0}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    check-cast v0, Landroid/widget/LinearLayout;

    .line 292
    .line 293
    iput-object v0, p0, Landroidx/mediarouter/app/D;->N:Landroid/widget/LinearLayout;

    .line 294
    .line 295
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    .line 297
    .line 298
    sget v0, Landroidx/mediarouter/R$id;->mr_volume_slider:I

    .line 299
    .line 300
    invoke-virtual {p0, v0}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    check-cast v0, Landroid/widget/SeekBar;

    .line 305
    .line 306
    iput-object v0, p0, Landroidx/mediarouter/app/D;->V:Landroid/widget/SeekBar;

    .line 307
    .line 308
    iget-object v1, p0, Landroidx/mediarouter/app/D;->r:Lf1/U;

    .line 309
    .line 310
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    new-instance v0, Landroidx/mediarouter/app/B;

    .line 314
    .line 315
    invoke-direct {v0, p0}, Landroidx/mediarouter/app/B;-><init>(Landroidx/mediarouter/app/D;)V

    .line 316
    .line 317
    .line 318
    iput-object v0, p0, Landroidx/mediarouter/app/D;->W:Landroidx/mediarouter/app/B;

    .line 319
    .line 320
    iget-object v2, p0, Landroidx/mediarouter/app/D;->V:Landroid/widget/SeekBar;

    .line 321
    .line 322
    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 323
    .line 324
    .line 325
    sget v0, Landroidx/mediarouter/R$id;->mr_volume_group_list:I

    .line 326
    .line 327
    invoke-virtual {p0, v0}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    check-cast v0, Landroidx/mediarouter/app/OverlayListView;

    .line 332
    .line 333
    iput-object v0, p0, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 334
    .line 335
    new-instance v0, Ljava/util/ArrayList;

    .line 336
    .line 337
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .line 339
    .line 340
    iput-object v0, p0, Landroidx/mediarouter/app/D;->R:Ljava/util/ArrayList;

    .line 341
    .line 342
    new-instance v0, Landroidx/mediarouter/app/C;

    .line 343
    .line 344
    iget-object v2, p0, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 345
    .line 346
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    iget-object v5, p0, Landroidx/mediarouter/app/D;->R:Ljava/util/ArrayList;

    .line 351
    .line 352
    invoke-direct {v0, p0, v2, v5}, Landroidx/mediarouter/app/C;-><init>(Landroidx/mediarouter/app/D;Landroid/content/Context;Ljava/util/List;)V

    .line 353
    .line 354
    .line 355
    iput-object v0, p0, Landroidx/mediarouter/app/D;->Q:Landroidx/mediarouter/app/C;

    .line 356
    .line 357
    iget-object v2, p0, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 358
    .line 359
    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 360
    .line 361
    .line 362
    new-instance v0, Ljava/util/HashSet;

    .line 363
    .line 364
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 365
    .line 366
    .line 367
    iput-object v0, p0, Landroidx/mediarouter/app/D;->U:Ljava/util/HashSet;

    .line 368
    .line 369
    iget-object v0, p0, Landroidx/mediarouter/app/D;->L:Landroid/widget/LinearLayout;

    .line 370
    .line 371
    iget-object v2, p0, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 372
    .line 373
    invoke-virtual {p0}, Landroidx/mediarouter/app/D;->j()Z

    .line 374
    .line 375
    .line 376
    move-result v5

    .line 377
    sget v6, Landroidx/appcompat/R$attr;->colorPrimary:I

    .line 378
    .line 379
    invoke-static {v3, v4, v6}, Landroidx/mediarouter/app/o0;->f(Landroid/content/Context;II)I

    .line 380
    .line 381
    .line 382
    move-result v6

    .line 383
    sget v7, Landroidx/appcompat/R$attr;->colorPrimaryDark:I

    .line 384
    .line 385
    invoke-static {v3, v4, v7}, Landroidx/mediarouter/app/o0;->f(Landroid/content/Context;II)I

    .line 386
    .line 387
    .line 388
    move-result v7

    .line 389
    if-eqz v5, :cond_1

    .line 390
    .line 391
    invoke-static {v3, v4}, Landroidx/mediarouter/app/o0;->b(Landroid/content/Context;I)I

    .line 392
    .line 393
    .line 394
    move-result v5

    .line 395
    const/high16 v8, -0x22000000

    .line 396
    .line 397
    if-ne v5, v8, :cond_1

    .line 398
    .line 399
    const/4 v5, -0x1

    .line 400
    move v7, v6

    .line 401
    move v6, v5

    .line 402
    :cond_1
    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 406
    .line 407
    .line 408
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 409
    .line 410
    .line 411
    move-result-object v5

    .line 412
    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    iget-object v0, p0, Landroidx/mediarouter/app/D;->V:Landroid/widget/SeekBar;

    .line 423
    .line 424
    check-cast v0, Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 425
    .line 426
    iget-object v2, p0, Landroidx/mediarouter/app/D;->L:Landroid/widget/LinearLayout;

    .line 427
    .line 428
    invoke-static {v3, v4}, Landroidx/mediarouter/app/o0;->b(Landroid/content/Context;I)I

    .line 429
    .line 430
    .line 431
    move-result v5

    .line 432
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    .line 433
    .line 434
    .line 435
    move-result v6

    .line 436
    const/16 v7, 0xff

    .line 437
    .line 438
    if-eq v6, v7, :cond_2

    .line 439
    .line 440
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    check-cast v2, Ljava/lang/Integer;

    .line 445
    .line 446
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    invoke-static {v5, v2}, LD/a;->compositeColors(II)I

    .line 451
    .line 452
    .line 453
    move-result v5

    .line 454
    :cond_2
    invoke-virtual {v0, v5}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->setColor(I)V

    .line 455
    .line 456
    .line 457
    new-instance v0, Ljava/util/HashMap;

    .line 458
    .line 459
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 460
    .line 461
    .line 462
    iput-object v0, p0, Landroidx/mediarouter/app/D;->c0:Ljava/util/HashMap;

    .line 463
    .line 464
    iget-object v2, p0, Landroidx/mediarouter/app/D;->V:Landroid/widget/SeekBar;

    .line 465
    .line 466
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    sget v0, Landroidx/mediarouter/R$id;->mr_group_expand_collapse:I

    .line 470
    .line 471
    invoke-virtual {p0, v0}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    check-cast v0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

    .line 476
    .line 477
    iput-object v0, p0, Landroidx/mediarouter/app/D;->A:Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

    .line 478
    .line 479
    new-instance v1, Landroidx/mediarouter/app/r;

    .line 480
    .line 481
    invoke-direct {v1, p0}, Landroidx/mediarouter/app/r;-><init>(Landroidx/mediarouter/app/D;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    .line 486
    .line 487
    iget-boolean v0, p0, Landroidx/mediarouter/app/D;->p0:Z

    .line 488
    .line 489
    if-eqz v0, :cond_3

    .line 490
    .line 491
    iget-object v0, p0, Landroidx/mediarouter/app/D;->w0:Landroid/view/animation/Interpolator;

    .line 492
    .line 493
    goto :goto_0

    .line 494
    :cond_3
    iget-object v0, p0, Landroidx/mediarouter/app/D;->x0:Landroid/view/animation/Interpolator;

    .line 495
    .line 496
    :goto_0
    iput-object v0, p0, Landroidx/mediarouter/app/D;->v0:Landroid/view/animation/Interpolator;

    .line 497
    .line 498
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    sget v1, Landroidx/mediarouter/R$integer;->mr_controller_volume_group_list_animation_duration_ms:I

    .line 503
    .line 504
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    iput v0, p0, Landroidx/mediarouter/app/D;->s0:I

    .line 509
    .line 510
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    sget v1, Landroidx/mediarouter/R$integer;->mr_controller_volume_group_list_fade_in_duration_ms:I

    .line 515
    .line 516
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 517
    .line 518
    .line 519
    move-result v0

    .line 520
    iput v0, p0, Landroidx/mediarouter/app/D;->t0:I

    .line 521
    .line 522
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    sget v1, Landroidx/mediarouter/R$integer;->mr_controller_volume_group_list_fade_out_duration_ms:I

    .line 527
    .line 528
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 529
    .line 530
    .line 531
    move-result v0

    .line 532
    iput v0, p0, Landroidx/mediarouter/app/D;->u0:I

    .line 533
    .line 534
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/D;->onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;

    .line 535
    .line 536
    .line 537
    move-result-object p1

    .line 538
    iput-object p1, p0, Landroidx/mediarouter/app/D;->w:Landroid/view/View;

    .line 539
    .line 540
    if-eqz p1, :cond_4

    .line 541
    .line 542
    iget-object v0, p0, Landroidx/mediarouter/app/D;->E:Landroid/widget/FrameLayout;

    .line 543
    .line 544
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 545
    .line 546
    .line 547
    iget-object p1, p0, Landroidx/mediarouter/app/D;->E:Landroid/widget/FrameLayout;

    .line 548
    .line 549
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 550
    .line 551
    .line 552
    :cond_4
    const/4 p1, 0x1

    .line 553
    iput-boolean p1, p0, Landroidx/mediarouter/app/D;->t:Z

    .line 554
    .line 555
    invoke-virtual {p0}, Landroidx/mediarouter/app/D;->o()V

    .line 556
    .line 557
    .line 558
    return-void
.end method

.method public onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/D;->p:Lf1/X;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/mediarouter/app/D;->q:Landroidx/mediarouter/app/z;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lf1/X;->removeCallback(Lf1/M;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/D;->l(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Landroidx/mediarouter/app/D;->u:Z

    .line 14
    .line 15
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v1, 0x18

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Le/s;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_1
    :goto_0
    iget-boolean p2, p0, Landroidx/mediarouter/app/D;->K:Z

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-nez p2, :cond_2

    .line 19
    .line 20
    iget-boolean p2, p0, Landroidx/mediarouter/app/D;->p0:Z

    .line 21
    .line 22
    if-nez p2, :cond_4

    .line 23
    .line 24
    :cond_2
    if-ne p1, v0, :cond_3

    .line 25
    .line 26
    const/4 p1, -0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_3
    move p1, v1

    .line 29
    :goto_1
    iget-object p2, p0, Landroidx/mediarouter/app/D;->r:Lf1/U;

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Lf1/U;->requestUpdateVolume(I)V

    .line 32
    .line 33
    .line 34
    :cond_4
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x18

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Le/s;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 16
    return p1
.end method

.method public final p(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/D;->D:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/mediarouter/app/D;->D:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Landroidx/mediarouter/app/s;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Landroidx/mediarouter/app/s;-><init>(Landroidx/mediarouter/app/D;Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final q(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/D;->O:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/mediarouter/app/D;->N:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/16 v3, 0x8

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    move v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v3

    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/mediarouter/app/D;->L:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/mediarouter/app/D;->N:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-ne v1, v3, :cond_1

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    move v2, v3

    .line 35
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
