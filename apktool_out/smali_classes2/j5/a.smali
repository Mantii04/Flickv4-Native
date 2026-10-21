.class public final Lj5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public a:Lio/hopmonsdk/service/MoneytiserService;

.field public b:Z


# virtual methods
.method public getMoneytiserService()Lio/hopmonsdk/service/MoneytiserService;
    .locals 1

    .line 1
    iget-object v0, p0, Lj5/a;->a:Lio/hopmonsdk/service/MoneytiserService;

    .line 2
    .line 3
    return-object v0
.end method

.method public isBound()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj5/a;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    check-cast p2, Lp5/d;

    .line 2
    .line 3
    invoke-virtual {p2}, Lp5/d;->getService()Lio/hopmonsdk/service/MoneytiserService;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lj5/a;->a:Lio/hopmonsdk/service/MoneytiserService;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lj5/a;->b:Z

    .line 11
    .line 12
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lj5/a;->b:Z

    .line 3
    .line 4
    return-void
.end method
