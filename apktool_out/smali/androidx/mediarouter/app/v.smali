.class public final Landroidx/mediarouter/app/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Landroidx/mediarouter/app/D;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/D;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/app/v;->a:Landroidx/mediarouter/app/D;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/v;->a:Landroidx/mediarouter/app/D;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/mediarouter/app/OverlayListView;->startAnimationAll()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 9
    .line 10
    iget-object v1, p1, Landroidx/mediarouter/app/D;->z0:Landroidx/mediarouter/app/n;

    .line 11
    .line 12
    iget p1, p1, Landroidx/mediarouter/app/D;->s0:I

    .line 13
    .line 14
    int-to-long v2, p1

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
