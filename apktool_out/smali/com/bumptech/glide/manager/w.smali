.class public final Lcom/bumptech/glide/manager/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Z

.field public final synthetic e:Lcom/bumptech/glide/manager/x;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/x;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/manager/w;->e:Lcom/bumptech/glide/manager/x;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/bumptech/glide/manager/w;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/w;->e:Lcom/bumptech/glide/manager/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, LG2/t;->assertMainThread()V

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lcom/bumptech/glide/manager/x;->a:Lcom/bumptech/glide/manager/y;

    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/bumptech/glide/manager/y;->a:Z

    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/bumptech/glide/manager/w;->b:Z

    .line 14
    .line 15
    iput-boolean v2, v0, Lcom/bumptech/glide/manager/y;->a:Z

    .line 16
    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    iget-object v0, v0, Lcom/bumptech/glide/manager/y;->b:Lcom/bumptech/glide/manager/u;

    .line 20
    .line 21
    invoke-interface {v0, v2}, Lcom/bumptech/glide/manager/b;->onConnectivityChanged(Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
