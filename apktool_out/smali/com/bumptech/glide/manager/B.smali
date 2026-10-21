.class public final Lcom/bumptech/glide/manager/B;
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
    iput-object p1, p0, Lcom/bumptech/glide/manager/B;->b:Lcom/bumptech/glide/manager/E;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/B;->b:Lcom/bumptech/glide/manager/E;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/bumptech/glide/manager/E;->e:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/B;->b:Lcom/bumptech/glide/manager/E;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, v0, Lcom/bumptech/glide/manager/E;->e:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bumptech/glide/manager/B;->b:Lcom/bumptech/glide/manager/E;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/bumptech/glide/manager/E;->a:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/bumptech/glide/manager/E;->f:Lcom/bumptech/glide/manager/z;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
