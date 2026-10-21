.class public final Lj2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lj2/f;


# direct methods
.method public constructor <init>(Lj2/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj2/a;->b:Lj2/f;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lj2/a;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lj2/a;->b:Lj2/f;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lj2/a;->b:Lj2/f;

    .line 4
    iget-object v2, v1, Lj2/f;->r:Ljava/io/BufferedWriter;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 5
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lj2/f;->k()V

    .line 7
    iget-object v1, p0, Lj2/a;->b:Lj2/f;

    .line 8
    invoke-virtual {v1}, Lj2/f;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lj2/a;->b:Lj2/f;

    .line 10
    invoke-virtual {v1}, Lj2/f;->i()V

    .line 11
    iget-object v1, p0, Lj2/a;->b:Lj2/f;

    const/4 v2, 0x0

    .line 12
    iput v2, v1, Lj2/f;->t:I

    .line 13
    :cond_1
    monitor-exit v0

    return-object v3

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
