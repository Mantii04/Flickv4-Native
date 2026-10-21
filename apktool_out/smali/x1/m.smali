.class public final Lx1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/w;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx1/m;->a:Ljava/lang/Runnable;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroidx/transition/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/e;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lx1/m;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final synthetic onTransitionEnd(Landroidx/transition/e;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/v;->a(Lx1/w;Landroidx/transition/e;Z)V

    return-void
.end method

.method public onTransitionPause(Landroidx/transition/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTransitionResume(Landroidx/transition/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTransitionStart(Landroidx/transition/e;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final synthetic onTransitionStart(Landroidx/transition/e;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/v;->b(Lx1/w;Landroidx/transition/e;Z)V

    return-void
.end method
