.class public final Ll/o;
.super Ll/a1;
.source "SourceFile"


# instance fields
.field public final synthetic s:Ll/p;


# direct methods
.method public constructor <init>(Ll/p;Ll/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/o;->s:Ll/p;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ll/a1;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getPopup()Lk/I;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/o;->s:Ll/p;

    .line 2
    .line 3
    iget-object v0, v0, Ll/p;->j:Ll/u;

    .line 4
    .line 5
    iget-object v0, v0, Ll/u;->C:Ll/q;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lk/C;->getPopup()Lk/z;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll/o;->s:Ll/p;

    .line 2
    .line 3
    iget-object v0, v0, Ll/p;->j:Ll/u;

    .line 4
    .line 5
    invoke-virtual {v0}, Ll/u;->showOverflowMenu()Z

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0
.end method

.method public onForwardingStopped()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ll/o;->s:Ll/p;

    .line 2
    .line 3
    iget-object v0, v0, Ll/p;->j:Ll/u;

    .line 4
    .line 5
    iget-object v1, v0, Ll/u;->E:Ll/n;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-virtual {v0}, Ll/u;->hideOverflowMenu()Z

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0
.end method
