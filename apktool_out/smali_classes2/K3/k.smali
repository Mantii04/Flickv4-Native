.class public final LK3/k;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:LK3/l;


# direct methods
.method public constructor <init>(LK3/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, LK3/k;->a:LK3/l;

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
    .locals 0

    .line 1
    iget-object p1, p0, LK3/k;->a:LK3/l;

    .line 2
    .line 3
    invoke-virtual {p1}, LK3/r;->l()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, LK3/l;->r:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
