.class public final Ln2/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/bumptech/glide/load/engine/e;

.field public final b:LC2/g;

.field public final synthetic c:Lcom/bumptech/glide/load/engine/b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/b;LC2/g;Lcom/bumptech/glide/load/engine/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln2/A;->c:Lcom/bumptech/glide/load/engine/b;

    .line 5
    .line 6
    iput-object p2, p0, Ln2/A;->b:LC2/g;

    .line 7
    .line 8
    iput-object p3, p0, Ln2/A;->a:Lcom/bumptech/glide/load/engine/e;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln2/A;->c:Lcom/bumptech/glide/load/engine/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ln2/A;->a:Lcom/bumptech/glide/load/engine/e;

    .line 5
    .line 6
    iget-object v2, p0, Ln2/A;->b:LC2/g;

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/e;->h(LC2/g;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1
.end method
