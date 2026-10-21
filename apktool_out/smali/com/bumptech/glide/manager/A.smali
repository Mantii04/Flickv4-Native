.class public final Lcom/bumptech/glide/manager/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/bumptech/glide/manager/E;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/E;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/manager/A;->b:Lcom/bumptech/glide/manager/E;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/A;->b:Lcom/bumptech/glide/manager/E;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/E;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iput-boolean v1, v0, Lcom/bumptech/glide/manager/E;->d:Z

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/A;->b:Lcom/bumptech/glide/manager/E;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/bumptech/glide/manager/E;->a:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/bumptech/glide/manager/E;->f:Lcom/bumptech/glide/manager/z;

    .line 14
    .line 15
    new-instance v2, Landroid/content/IntentFilter;

    .line 16
    .line 17
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 18
    .line 19
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/bumptech/glide/manager/A;->b:Lcom/bumptech/glide/manager/E;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    iput-boolean v1, v0, Lcom/bumptech/glide/manager/E;->e:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    const-string v1, "ConnectivityMonitor"

    .line 33
    .line 34
    const/4 v2, 0x5

    .line 35
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    const-string v2, "Failed to register"

    .line 42
    .line 43
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/A;->b:Lcom/bumptech/glide/manager/E;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    iput-boolean v1, v0, Lcom/bumptech/glide/manager/E;->e:Z

    .line 50
    .line 51
    return-void
.end method
