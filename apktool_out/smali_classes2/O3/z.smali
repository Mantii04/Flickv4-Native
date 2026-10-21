.class public final LO3/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN3/f;


# instance fields
.field public final a:LO3/d;

.field public final b:LO3/i;


# direct methods
.method public constructor <init>(LO3/d;LO3/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "connectionClient cannot be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, LO3/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, LO3/d;

    .line 11
    .line 12
    iput-object p1, p0, LO3/z;->a:LO3/d;

    .line 13
    .line 14
    const-string p1, "embeddedPlayer cannot be null"

    .line 15
    .line 16
    invoke-static {p2, p1}, LO3/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, LO3/i;

    .line 21
    .line 22
    iput-object p1, p0, LO3/z;->b:LO3/i;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, LO3/z;->b:LO3/i;

    check-cast v0, LO3/g;

    invoke-virtual {v0}, LO3/g;->s()LO3/E;

    move-result-object v0

    invoke-static {v0}, LO3/F;->a(LO3/E;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, LO3/z;->b:LO3/i;

    check-cast v0, LO3/g;

    invoke-virtual {v0, p1}, LO3/g;->a(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final a(Z)V
    .locals 2

    .line 3
    iget-object v0, p0, LO3/z;->a:LO3/d;

    :try_start_0
    iget-object v1, p0, LO3/z;->b:LO3/i;

    check-cast v1, LO3/g;

    invoke-virtual {v1, p1}, LO3/g;->a(Z)V

    move-object v1, v0

    check-cast v1, LO3/r;

    invoke-virtual {v1, p1}, LO3/r;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v0, LO3/r;

    invoke-virtual {v0}, LO3/r;->d()V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, LO3/z;->b:LO3/i;

    check-cast v0, LO3/g;

    invoke-virtual {v0, p1, p2}, LO3/g;->a(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {p2, p1}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public final a(Landroid/os/Bundle;)Z
    .locals 1

    .line 5
    :try_start_0
    iget-object v0, p0, LO3/z;->b:LO3/i;

    check-cast v0, LO3/g;

    invoke-virtual {v0, p1}, LO3/g;->a(Landroid/os/Bundle;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final b()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, LO3/z;->b:LO3/i;

    check-cast v0, LO3/g;

    invoke-virtual {v0}, LO3/g;->m()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b(Z)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, LO3/z;->b:LO3/i;

    check-cast v0, LO3/g;

    invoke-virtual {v0, p1}, LO3/g;->e(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final b(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, LO3/z;->b:LO3/i;

    check-cast v0, LO3/g;

    invoke-virtual {v0, p1, p2}, LO3/g;->b(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {p2, p1}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public final c()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, LO3/z;->b:LO3/i;

    .line 2
    .line 3
    check-cast v0, LO3/g;

    .line 4
    .line 5
    invoke-virtual {v0}, LO3/g;->n()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    .line 13
    .line 14
    .line 15
    throw v1
.end method

.method public final d()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, LO3/z;->b:LO3/i;

    .line 2
    .line 3
    check-cast v0, LO3/g;

    .line 4
    .line 5
    invoke-virtual {v0}, LO3/g;->o()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    .line 13
    .line 14
    .line 15
    throw v1
.end method

.method public final e()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, LO3/z;->b:LO3/i;

    .line 2
    .line 3
    check-cast v0, LO3/g;

    .line 4
    .line 5
    invoke-virtual {v0}, LO3/g;->p()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    .line 13
    .line 14
    .line 15
    throw v1
.end method

.method public final f()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, LO3/z;->b:LO3/i;

    .line 2
    .line 3
    check-cast v0, LO3/g;

    .line 4
    .line 5
    invoke-virtual {v0}, LO3/g;->q()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    .line 13
    .line 14
    .line 15
    throw v1
.end method

.method public final g()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, LO3/z;->b:LO3/i;

    .line 2
    .line 3
    check-cast v0, LO3/g;

    .line 4
    .line 5
    invoke-virtual {v0}, LO3/g;->l()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    .line 13
    .line 14
    .line 15
    throw v1
.end method

.method public final h()Landroid/os/Bundle;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, LO3/z;->b:LO3/i;

    .line 2
    .line 3
    check-cast v0, LO3/g;

    .line 4
    .line 5
    invoke-virtual {v0}, LO3/g;->r()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object v0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    .line 14
    .line 15
    .line 16
    throw v1
.end method

.method public final loadVideo(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, LO3/z;->loadVideo(Ljava/lang/String;I)V

    return-void
.end method

.method public final loadVideo(Ljava/lang/String;I)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, LO3/z;->b:LO3/i;

    check-cast v0, LO3/g;

    invoke-virtual {v0, p1, p2}, LO3/g;->b(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {p2, p1}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public final setFullscreen(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, LO3/z;->b:LO3/i;

    .line 2
    .line 3
    check-cast v0, LO3/g;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, LO3/g;->b(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Lcom/google/android/youtube/player/internal/q;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method
