.class public final Lx1/s;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/transition/e;


# direct methods
.method public constructor <init>(Landroidx/transition/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx1/s;->a:Landroidx/transition/e;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx1/s;->a:Landroidx/transition/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/transition/e;->end()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
