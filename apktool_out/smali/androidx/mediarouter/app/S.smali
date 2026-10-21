.class public final Landroidx/mediarouter/app/S;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/mediarouter/app/m0;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/m0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/S;->a:Landroidx/mediarouter/app/m0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, Landroidx/mediarouter/app/S;->a:Landroidx/mediarouter/app/m0;

    .line 5
    .line 6
    if-eq p1, v0, :cond_2

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, v1, Landroidx/mediarouter/app/m0;->F:Lf1/U;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-object p1, v1, Landroidx/mediarouter/app/m0;->F:Lf1/U;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/mediarouter/app/m0;->i()V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void

    .line 23
    :cond_2
    invoke-virtual {v1}, Landroidx/mediarouter/app/m0;->h()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
