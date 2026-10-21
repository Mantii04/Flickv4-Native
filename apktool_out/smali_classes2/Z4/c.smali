.class public final synthetic LZ4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:LZ4/e;


# direct methods
.method public synthetic constructor <init>(LZ4/e;I)V
    .locals 0

    .line 1
    iput p2, p0, LZ4/c;->b:I

    iput-object p1, p0, LZ4/c;->e:LZ4/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, LZ4/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LZ4/c;->e:LZ4/e;

    .line 7
    .line 8
    iget-object v1, v0, LZ4/e;->a:Landroid/webkit/WebView;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, LZ4/e;->e:Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void

    .line 25
    :pswitch_0
    iget-object v0, p0, LZ4/c;->e:LZ4/e;

    .line 26
    .line 27
    iget-object v1, v0, LZ4/e;->a:Landroid/webkit/WebView;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    check-cast v1, Landroid/view/ViewGroup;

    .line 40
    .line 41
    iget-object v2, v0, LZ4/e;->a:Landroid/webkit/WebView;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v1, v0, LZ4/e;->a:Landroid/webkit/WebView;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 49
    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    iput-object v1, v0, LZ4/e;->a:Landroid/webkit/WebView;

    .line 53
    .line 54
    :cond_2
    return-void

    .line 55
    :pswitch_1
    iget-object v0, p0, LZ4/c;->e:LZ4/e;

    .line 56
    .line 57
    iget-object v1, v0, LZ4/e;->a:Landroid/webkit/WebView;

    .line 58
    .line 59
    if-nez v1, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    new-instance v2, LZ4/b;

    .line 63
    .line 64
    invoke-direct {v2, v0}, LZ4/b;-><init>(LZ4/e;)V

    .line 65
    .line 66
    .line 67
    const-string v0, "(function(){return document.documentElement.innerHTML;})()"

    .line 68
    .line 69
    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
