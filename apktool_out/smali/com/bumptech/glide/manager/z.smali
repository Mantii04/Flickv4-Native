.class public final Lcom/bumptech/glide/manager/z;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/bumptech/glide/manager/E;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/E;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/manager/z;->a:Lcom/bumptech/glide/manager/E;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bumptech/glide/manager/z;->a:Lcom/bumptech/glide/manager/E;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/bumptech/glide/manager/C;

    .line 7
    .line 8
    invoke-direct {p2, p1}, Lcom/bumptech/glide/manager/C;-><init>(Lcom/bumptech/glide/manager/E;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/bumptech/glide/manager/E;->g:Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
