.class public final Lx1/a;
.super Lx1/F;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lx1/F;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lx1/F;->setOrdering(I)Lx1/F;

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/transition/c;

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-direct {v1, v2}, Landroidx/transition/c;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lx1/F;->addTransition(Landroidx/transition/e;)Lx1/F;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Landroidx/transition/a;

    .line 19
    .line 20
    invoke-direct {v2}, Landroidx/transition/a;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lx1/F;->addTransition(Landroidx/transition/e;)Lx1/F;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Landroidx/transition/c;

    .line 28
    .line 29
    invoke-direct {v2, v0}, Landroidx/transition/c;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lx1/F;->addTransition(Landroidx/transition/e;)Lx1/F;

    .line 33
    .line 34
    .line 35
    return-void
.end method
