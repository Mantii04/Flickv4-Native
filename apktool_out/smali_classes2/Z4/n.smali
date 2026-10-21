.class public final LZ4/n;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:LZ4/o;


# direct methods
.method public constructor <init>(LZ4/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, LZ4/n;->a:LZ4/o;

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
    iget-object p1, p0, LZ4/n;->a:LZ4/o;

    .line 2
    .line 3
    iget-boolean v0, p1, LZ4/o;->d:Z

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object p1, p1, LZ4/o;->f:Landroid/webkit/WebView;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, LZ4/m;

    .line 13
    .line 14
    invoke-direct {v0, p0, p2}, LZ4/m;-><init>(LZ4/n;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string p2, "(function(){return document.documentElement.outerHTML;})()"

    .line 18
    .line 19
    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method
