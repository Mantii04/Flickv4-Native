.class public final Lcom/bumptech/glide/manager/x;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/bumptech/glide/manager/y;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/manager/x;->a:Lcom/bumptech/glide/manager/y;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/bumptech/glide/manager/w;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p1, p0, v0}, Lcom/bumptech/glide/manager/w;-><init>(Lcom/bumptech/glide/manager/x;Z)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, LG2/t;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/bumptech/glide/manager/w;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, p0, v0}, Lcom/bumptech/glide/manager/w;-><init>(Lcom/bumptech/glide/manager/x;Z)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, LG2/t;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
