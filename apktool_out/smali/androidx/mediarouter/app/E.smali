.class public Landroidx/mediarouter/app/E;
.super Landroidx/fragment/app/y;
.source "SourceFile"


# instance fields
.field public v0:Z

.field public w0:Le/c0;

.field public x0:Lf1/L;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/y;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/mediarouter/app/E;->v0:Z

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Landroidx/fragment/app/y;->setCancelable(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/C;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/mediarouter/app/E;->w0:Le/c0;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/mediarouter/app/E;->v0:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p1, Landroidx/mediarouter/app/m0;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/mediarouter/app/m0;->e()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    check-cast p1, Landroidx/mediarouter/app/D;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/mediarouter/app/D;->o()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public onCreateControllerDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/mediarouter/app/D;
    .locals 0

    .line 1
    new-instance p2, Landroidx/mediarouter/app/D;

    .line 2
    .line 3
    invoke-direct {p2, p1}, Landroidx/mediarouter/app/D;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/app/E;->v0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/C;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/E;->onCreateDynamicControllerDialog(Landroid/content/Context;)Landroidx/mediarouter/app/m0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/mediarouter/app/E;->w0:Le/c0;

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/mediarouter/app/E;->x0:Lf1/L;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroidx/mediarouter/app/m0;->setRouteSelector(Lf1/L;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/C;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0, p1}, Landroidx/mediarouter/app/E;->onCreateControllerDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/mediarouter/app/D;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Landroidx/mediarouter/app/E;->w0:Le/c0;

    .line 30
    .line 31
    :goto_0
    iget-object p1, p0, Landroidx/mediarouter/app/E;->w0:Le/c0;

    .line 32
    .line 33
    return-object p1
.end method

.method public onCreateDynamicControllerDialog(Landroid/content/Context;)Landroidx/mediarouter/app/m0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/mediarouter/app/m0;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/mediarouter/app/m0;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/y;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/mediarouter/app/E;->w0:Le/c0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v1, p0, Landroidx/mediarouter/app/E;->v0:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Landroidx/mediarouter/app/D;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/D;->f(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setRouteSelector(Lf1/L;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/mediarouter/app/E;->x0:Lf1/L;

    .line 4
    .line 5
    const-string v1, "selector"

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/C;->getArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lf1/L;->fromBundle(Landroid/os/Bundle;)Lf1/L;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Landroidx/mediarouter/app/E;->x0:Lf1/L;

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/E;->x0:Lf1/L;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    sget-object v0, Lf1/L;->c:Lf1/L;

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/mediarouter/app/E;->x0:Lf1/L;

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/app/E;->x0:Lf1/L;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lf1/L;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    iput-object p1, p0, Landroidx/mediarouter/app/E;->x0:Lf1/L;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/C;->getArguments()Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    new-instance v0, Landroid/os/Bundle;

    .line 50
    .line 51
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-virtual {p1}, Lf1/L;->asBundle()Landroid/os/Bundle;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroidx/fragment/app/C;->setArguments(Landroid/os/Bundle;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Landroidx/mediarouter/app/E;->w0:Le/c0;

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    iget-boolean v1, p0, Landroidx/mediarouter/app/E;->v0:Z

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    check-cast v0, Landroidx/mediarouter/app/m0;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Landroidx/mediarouter/app/m0;->setRouteSelector(Lf1/L;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void

    .line 78
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    const-string v0, "selector must not be null"

    .line 81
    .line 82
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1
.end method
