.class public final Ll/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/D;


# instance fields
.field public final synthetic b:Ll/u;


# direct methods
.method public constructor <init>(Ll/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll/r;->b:Ll/u;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lk/p;Z)V
    .locals 2

    .line 1
    instance-of v0, p1, Lk/M;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lk/p;->getRootMenu()Lk/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lk/p;->close(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Ll/r;->b:Ll/u;

    .line 14
    .line 15
    invoke-virtual {v0}, Lk/d;->getCallback()Lk/D;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, p1, p2}, Lk/D;->onCloseMenu(Lk/p;Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public onOpenSubMenu(Lk/p;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Ll/r;->b:Ll/u;

    .line 2
    .line 3
    iget-object v1, v0, Lk/d;->f:Lk/p;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    move-object v1, p1

    .line 10
    check-cast v1, Lk/M;

    .line 11
    .line 12
    invoke-virtual {v1}, Lk/M;->getItem()Landroid/view/MenuItem;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput v1, v0, Ll/u;->H:I

    .line 21
    .line 22
    invoke-virtual {v0}, Lk/d;->getCallback()Lk/D;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {v0, p1}, Lk/D;->onOpenSubMenu(Lk/p;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1

    .line 33
    :cond_1
    return v2
.end method
