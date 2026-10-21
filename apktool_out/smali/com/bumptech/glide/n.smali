.class public final Lcom/bumptech/glide/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/bumptech/glide/q;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/q;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/q;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/bumptech/glide/q;->f:Lcom/bumptech/glide/manager/k;

    .line 4
    .line 5
    invoke-interface {v1, v0}, Lcom/bumptech/glide/manager/k;->addListener(Lcom/bumptech/glide/manager/l;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
