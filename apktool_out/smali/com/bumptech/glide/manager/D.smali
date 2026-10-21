.class public final Lcom/bumptech/glide/manager/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Z

.field public final synthetic e:Lcom/bumptech/glide/manager/E;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/E;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/manager/D;->e:Lcom/bumptech/glide/manager/E;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/bumptech/glide/manager/D;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/D;->e:Lcom/bumptech/glide/manager/E;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/manager/E;->b:Lcom/bumptech/glide/manager/u;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/bumptech/glide/manager/D;->b:Z

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/b;->onConnectivityChanged(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
