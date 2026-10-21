.class public final Lx1/D;
.super Lx1/y;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/transition/e;


# direct methods
.method public constructor <init>(Landroidx/transition/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx1/D;->a:Landroidx/transition/e;

    .line 2
    .line 3
    invoke-direct {p0}, Lx1/y;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx1/D;->a:Landroidx/transition/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/transition/e;->runAnimators()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroidx/transition/e;->removeListener(Lx1/w;)Landroidx/transition/e;

    .line 7
    .line 8
    .line 9
    return-void
.end method
