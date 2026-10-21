.class public final Lflix/com/vision/processors/english/r;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lflix/com/vision/processors/english/s;


# direct methods
.method public constructor <init>(Lflix/com/vision/processors/english/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/processors/english/r;->a:Lflix/com/vision/processors/english/s;

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
    new-instance p1, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lflix/com/vision/processors/english/d;

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    invoke-direct {p2, p0, v0}, Lflix/com/vision/processors/english/d;-><init>(Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v0, 0xdac

    .line 13
    .line 14
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    .line 1
    const-string p1, "RidoMoviesProcessor"

    .line 2
    .line 3
    const-string p2, "Renderer Process Crashed. Cleaning up..."

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lflix/com/vision/processors/english/r;->a:Lflix/com/vision/processors/english/s;

    .line 9
    .line 10
    iget-object p2, p1, Lflix/com/vision/processors/english/s;->a:Landroid/webkit/WebView;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/webkit/WebView;->destroy()V

    .line 15
    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    iput-object p2, p1, Lflix/com/vision/processors/english/s;->a:Landroid/webkit/WebView;

    .line 19
    .line 20
    :cond_0
    const/4 p1, 0x1

    .line 21
    return p1
.end method
