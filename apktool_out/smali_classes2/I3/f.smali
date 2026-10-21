.class public final LI3/f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:LI3/t;


# direct methods
.method public constructor <init>(LI3/t;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LI3/f;->a:LI3/t;

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
    iget-object p1, p0, LI3/f;->a:LI3/t;

    .line 2
    .line 3
    invoke-virtual {p1}, LI3/t;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, LI3/f;->a:LI3/t;

    .line 2
    .line 3
    iget-object v0, p1, LI3/t;->j:LI3/u;

    .line 4
    .line 5
    iget p1, p1, LI3/t;->b:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, v1, p1}, LI3/u;->animateContentOut(II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
