.class public final LO3/r;
.super LO3/y;
.source "SourceFile"

# interfaces
.implements LO3/d;


# instance fields
.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LO3/A;LO3/B;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p5, p6}, LO3/y;-><init>(Landroid/content/Context;LO3/A;LO3/B;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, LO3/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, LO3/r;->k:Ljava/lang/String;

    .line 11
    .line 12
    const-string p1, "callingPackage cannot be null or empty"

    .line 13
    .line 14
    invoke-static {p3, p1}, LO3/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, LO3/r;->l:Ljava/lang/String;

    .line 19
    .line 20
    const-string p1, "callingAppVersion cannot be null or empty"

    .line 21
    .line 22
    invoke-static {p4, p1}, LO3/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, LO3/r;->m:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/IBinder;
    .locals 2

    .line 1
    invoke-virtual {p0}, LO3/y;->i()V

    iget-boolean v0, p0, LO3/r;->n:Z

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, LO3/y;->j()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, LO3/o;

    check-cast v0, LO3/m;

    invoke-virtual {v0}, LO3/m;->a()Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection client has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 4
    invoke-static {p1}, LO3/n;->a(Landroid/os/IBinder;)LO3/o;

    move-result-object p1

    return-object p1
.end method

.method public final a(LO3/l;LO3/w;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LO3/l;",
            "LO3/w;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    .line 5
    move-object v0, p1

    check-cast v0, LO3/j;

    const/16 v2, 0x4b2

    iget-object v3, p0, LO3/r;->l:Ljava/lang/String;

    iget-object v4, p0, LO3/r;->m:Ljava/lang/String;

    iget-object v5, p0, LO3/r;->k:Ljava/lang/String;

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, LO3/j;->a(LO3/f;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 6
    invoke-virtual {p0}, LO3/y;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, LO3/y;->j()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, LO3/o;

    check-cast v0, LO3/m;

    invoke-virtual {v0, p1}, LO3/m;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    iput-boolean p1, p0, LO3/r;->n:Z

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.google.android.youtube.player.internal.IYouTubeService"

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.google.android.youtube.api.service.START"

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-boolean v0, p0, LO3/r;->n:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, LO3/r;->a(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-super {p0}, LO3/y;->d()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
