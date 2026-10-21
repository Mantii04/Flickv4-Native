.class public final LB4/Y;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/FrameLayout$LayoutParams;

.field public final synthetic b:Lflix/com/vision/activities/player/WebPlayerActivitySuper;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/player/WebPlayerActivitySuper;)V
    .locals 1

    .line 1
    iput-object p1, p0, LB4/Y;->b:Lflix/com/vision/activities/player/WebPlayerActivitySuper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, LB4/Y;->a:Landroid/widget/FrameLayout$LayoutParams;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 1

    .line 1
    iget-object v0, p0, LB4/Y;->b:Lflix/com/vision/activities/player/WebPlayerActivitySuper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->e()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4

    .line 1
    iget-object v0, p0, LB4/Y;->b:Lflix/com/vision/activities/player/WebPlayerActivitySuper;

    .line 2
    .line 3
    iget-object v1, v0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->L:Landroid/view/View;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget v1, Lflix/com/vision/R$id;->relative_view_web_player:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, LB4/Y;->a:Landroid/widget/FrameLayout$LayoutParams;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, v0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->L:Landroid/view/View;

    .line 28
    .line 29
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->F:Landroid/widget/RelativeLayout;

    .line 39
    .line 40
    const/16 v2, 0x8

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v1, v0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->m:Lflix/com/vision/helpers/CursorLayout;

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    const v3, -0x3a63c000    # -5000.0f

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object v1, v0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->w:Landroid/widget/LinearLayout;

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    :cond_3
    iget-object v1, v0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->f:Landroid/widget/FrameLayout;

    .line 65
    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 69
    .line 70
    .line 71
    iget-object v1, v0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->f:Landroid/widget/FrameLayout;

    .line 72
    .line 73
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, v0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->f:Landroid/widget/FrameLayout;

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 80
    .line 81
    .line 82
    iget-object p1, v0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->f:Landroid/widget/FrameLayout;

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    iget-object p1, v0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->f:Landroid/widget/FrameLayout;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 90
    .line 91
    .line 92
    iget-object p1, v0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->f:Landroid/widget/FrameLayout;

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 95
    .line 96
    .line 97
    :cond_4
    iput-object p2, v0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->M:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 98
    .line 99
    iget-object p1, v0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 100
    .line 101
    const/4 p2, 0x4

    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    return-void
.end method
