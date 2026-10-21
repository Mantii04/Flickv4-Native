.class public final LI3/d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:LI3/t;


# direct methods
.method public constructor <init>(LI3/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, LI3/d;->a:LI3/t;

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
    iget-object p1, p0, LI3/d;->a:LI3/t;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, LI3/A;->b()LI3/A;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object p1, p1, LI3/t;->u:LI3/l;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, LI3/A;->onShown(LI3/y;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, LI3/d;->a:LI3/t;

    .line 2
    .line 3
    iget-object v0, p1, LI3/t;->j:LI3/u;

    .line 4
    .line 5
    iget v1, p1, LI3/t;->c:I

    .line 6
    .line 7
    iget p1, p1, LI3/t;->a:I

    .line 8
    .line 9
    sub-int/2addr v1, p1

    .line 10
    invoke-interface {v0, v1, p1}, LI3/u;->animateContentIn(II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
