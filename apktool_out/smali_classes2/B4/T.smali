.class public final LB4/T;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/FrameLayout$LayoutParams;

.field public final synthetic b:Lflix/com/vision/activities/player/WebPlayerActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/player/WebPlayerActivity;)V
    .locals 1

    .line 1
    iput-object p1, p0, LB4/T;->b:Lflix/com/vision/activities/player/WebPlayerActivity;

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
    iput-object p1, p0, LB4/T;->a:Landroid/widget/FrameLayout$LayoutParams;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 1

    .line 1
    iget-object v0, p0, LB4/T;->b:Lflix/com/vision/activities/player/WebPlayerActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lflix/com/vision/activities/player/WebPlayerActivity;->e()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, LB4/T;->b:Lflix/com/vision/activities/player/WebPlayerActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lflix/com/vision/activities/player/WebPlayerActivity;->M:Landroid/view/View;

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
    iget-object v1, p0, LB4/T;->a:Landroid/widget/FrameLayout$LayoutParams;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, v0, Lflix/com/vision/activities/player/WebPlayerActivity;->M:Landroid/view/View;

    .line 28
    .line 29
    iget-object v1, v0, Lflix/com/vision/activities/player/WebPlayerActivity;->f:Landroid/widget/FrameLayout;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lflix/com/vision/activities/player/WebPlayerActivity;->f:Landroid/widget/FrameLayout;

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, v0, Lflix/com/vision/activities/player/WebPlayerActivity;->f:Landroid/widget/FrameLayout;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, v0, Lflix/com/vision/activities/player/WebPlayerActivity;->f:Landroid/widget/FrameLayout;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 50
    .line 51
    .line 52
    :cond_1
    iput-object p2, v0, Lflix/com/vision/activities/player/WebPlayerActivity;->N:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 53
    .line 54
    iget-object p1, v0, Lflix/com/vision/activities/player/WebPlayerActivity;->I:Landroid/webkit/WebView;

    .line 55
    .line 56
    const/4 p2, 0x4

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
