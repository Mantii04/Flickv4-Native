.class public final LZ4/i;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:LZ4/j;


# direct methods
.method public constructor <init>(LZ4/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, LZ4/i;->a:LZ4/j;

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
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, LZ4/i;->a:LZ4/j;

    .line 5
    .line 6
    iget-boolean p2, p1, LZ4/j;->m:Z

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p1, LZ4/j;->k:Landroid/webkit/WebView;

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    new-instance p2, LZ4/h;

    .line 17
    .line 18
    invoke-direct {p2, p0}, LZ4/h;-><init>(LZ4/i;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "(function(){var el = document.documentElement; var xml = el.innerHTML; return xml;})()"

    .line 22
    .line 23
    invoke-virtual {p1, v0, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
