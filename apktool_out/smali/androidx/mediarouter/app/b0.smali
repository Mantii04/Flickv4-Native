.class public final Landroidx/mediarouter/app/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Landroidx/mediarouter/app/j0;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/app/b0;->a:Landroidx/mediarouter/app/j0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/b0;->a:Landroidx/mediarouter/app/j0;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/mediarouter/app/j0;->m:Landroidx/mediarouter/app/m0;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p1, Landroidx/mediarouter/app/m0;->H:Z

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/mediarouter/app/m0;->i()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/b0;->a:Landroidx/mediarouter/app/j0;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/mediarouter/app/j0;->m:Landroidx/mediarouter/app/m0;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p1, Landroidx/mediarouter/app/m0;->H:Z

    .line 7
    .line 8
    return-void
.end method
