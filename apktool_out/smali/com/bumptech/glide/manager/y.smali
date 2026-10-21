.class public final Lcom/bumptech/glide/manager/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/manager/v;


# instance fields
.field public a:Z

.field public final b:Lcom/bumptech/glide/manager/u;

.field public final c:LG2/k;

.field public final d:Lcom/bumptech/glide/manager/x;


# direct methods
.method public constructor <init>(LG2/k;Lcom/bumptech/glide/manager/u;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bumptech/glide/manager/x;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/x;-><init>(Lcom/bumptech/glide/manager/y;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/manager/y;->d:Lcom/bumptech/glide/manager/x;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/bumptech/glide/manager/y;->c:LG2/k;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/bumptech/glide/manager/y;->b:Lcom/bumptech/glide/manager/u;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public register()Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/y;->c:LG2/k;

    .line 2
    .line 3
    invoke-interface {v0}, LG2/k;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    move v1, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    iput-boolean v1, p0, Lcom/bumptech/glide/manager/y;->a:Z

    .line 21
    .line 22
    :try_start_0
    invoke-interface {v0}, LG2/k;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/bumptech/glide/manager/y;->d:Lcom/bumptech/glide/manager/x;

    .line 29
    .line 30
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/audio/n;->x(Landroid/net/ConnectivityManager;Lcom/bumptech/glide/manager/x;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return v3

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string v1, "ConnectivityMonitor"

    .line 36
    .line 37
    const/4 v3, 0x5

    .line 38
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    const-string v3, "Failed to register callback"

    .line 45
    .line 46
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .line 48
    .line 49
    :cond_1
    return v2
.end method

.method public unregister()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/y;->c:LG2/k;

    .line 2
    .line 3
    invoke-interface {v0}, LG2/k;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/bumptech/glide/manager/y;->d:Lcom/bumptech/glide/manager/x;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
