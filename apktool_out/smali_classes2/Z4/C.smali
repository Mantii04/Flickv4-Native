.class public final LZ4/C;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:LZ4/D;


# direct methods
.method public constructor <init>(LZ4/D;)V
    .locals 0

    .line 1
    iput-object p1, p0, LZ4/C;->a:LZ4/D;

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
    iget-object p1, p0, LZ4/C;->a:LZ4/D;

    .line 5
    .line 6
    iget-boolean p2, p1, LZ4/D;->l:Z

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p1, LZ4/D;->j:Landroid/webkit/WebView;

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    :try_start_0
    const-string p2, "(function(){var el = document.documentElement; var xml = el.innerHTML; return xml;})()"

    .line 17
    .line 18
    new-instance v0, LZ4/B;

    .line 19
    .line 20
    invoke-direct {v0, p0}, LZ4/B;-><init>(LZ4/C;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    :catch_0
    :goto_0
    return-void
.end method
