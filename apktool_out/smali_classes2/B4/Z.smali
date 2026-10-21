.class public final LB4/Z;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lflix/com/vision/activities/player/YouTubeWebviewActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/player/YouTubeWebviewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, LB4/Z;->a:Lflix/com/vision/activities/player/YouTubeWebviewActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, LB4/Z;->a:Lflix/com/vision/activities/player/YouTubeWebviewActivity;

    .line 5
    .line 6
    iget-object p2, p1, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->m:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-boolean p2, p1, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->s:Z

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    :try_start_0
    iget-object p2, p1, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->j:Landroid/widget/RelativeLayout;

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p1, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->r:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 25
    .line 26
    .line 27
    iget-object p2, p1, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->r:Landroid/widget/ImageView;

    .line 28
    .line 29
    const/high16 v1, 0x3f800000    # 1.0f

    .line 30
    .line 31
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    :cond_0
    iget-object p2, p1, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->q:Landroid/widget/ImageView;

    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p1, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->n:Landroid/webkit/WebView;

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
