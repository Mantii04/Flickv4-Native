.class public final Ll/a0;
.super Ll/a1;
.source "SourceFile"


# instance fields
.field public final synthetic s:Ll/k0;

.field public final synthetic t:Ll/o0;


# direct methods
.method public constructor <init>(Ll/o0;Ll/o0;Ll/k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/a0;->t:Ll/o0;

    .line 2
    .line 3
    iput-object p3, p0, Ll/a0;->s:Ll/k0;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Ll/a1;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getPopup()Lk/I;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/a0;->s:Ll/k0;

    .line 2
    .line 3
    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll/a0;->t:Ll/o0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll/o0;->getInternalPopup()Ll/n0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ll/n0;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Ll/d0;->b(Landroid/view/View;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v0}, Ll/d0;->a(Landroid/view/View;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v0, v0, Ll/o0;->n:Ll/n0;

    .line 22
    .line 23
    invoke-interface {v0, v1, v2}, Ll/n0;->show(II)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x1

    .line 27
    return v0
.end method
