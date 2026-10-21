.class public final LM/B0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:LM/D0;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(LM/D0;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, LM/B0;->a:LM/D0;

    .line 2
    .line 3
    iput-object p2, p0, LM/B0;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, LM/B0;->a:LM/D0;

    .line 2
    .line 3
    iget-object v0, p0, LM/B0;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-interface {p1, v0}, LM/D0;->onAnimationCancel(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, LM/B0;->a:LM/D0;

    .line 2
    .line 3
    iget-object v0, p0, LM/B0;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-interface {p1, v0}, LM/D0;->onAnimationEnd(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, LM/B0;->a:LM/D0;

    .line 2
    .line 3
    iget-object v0, p0, LM/B0;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-interface {p1, v0}, LM/D0;->onAnimationStart(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
