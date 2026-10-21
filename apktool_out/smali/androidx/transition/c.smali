.class public final Landroidx/transition/c;
.super Landroidx/transition/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroidx/transition/g;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/transition/g;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/transition/g;->setMode(I)V

    return-void
.end method

.method public static p(Lx1/I;F)F
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lx1/I;->a:Ljava/util/HashMap;

    .line 4
    .line 5
    const-string v0, "android:fade:transitionAlpha"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/Float;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    return p1
.end method


# virtual methods
.method public captureStartValues(Lx1/I;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/g;->captureStartValues(Lx1/I;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lx1/I;->b:Landroid/view/View;

    .line 5
    .line 6
    sget v1, Landroidx/transition/R$id;->transition_pause_alpha:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Float;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p1, Lx1/I;->b:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    sget-object v1, Lx1/M;->a:Lx1/W;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lx1/O;->getTransitionAlpha(Landroid/view/View;)F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_1
    :goto_0
    iget-object p1, p1, Lx1/I;->a:Ljava/util/HashMap;

    .line 41
    .line 42
    const-string v1, "android:fade:transitionAlpha"

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final o(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .locals 2

    .line 1
    cmpl-float v0, p2, p3

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    sget-object v0, Lx1/M;->a:Lx1/W;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lx1/O;->setTransitionAlpha(Landroid/view/View;F)V

    .line 10
    .line 11
    .line 12
    sget-object p2, Lx1/M;->b:Lx1/K;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    new-array v0, v0, [F

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    aput p3, v0, v1

    .line 19
    .line 20
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    new-instance p3, Landroidx/transition/b;

    .line 25
    .line 26
    invoke-direct {p3, p1}, Landroidx/transition/b;-><init>(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/transition/e;->getRootTransition()Landroidx/transition/e;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1, p3}, Landroidx/transition/e;->addListener(Lx1/w;)Landroidx/transition/e;

    .line 37
    .line 38
    .line 39
    return-object p2
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Lx1/I;Lx1/I;)Landroid/animation/Animator;
    .locals 0

    .line 1
    sget-object p1, Lx1/M;->a:Lx1/W;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lx1/O;->saveNonTransitionAlpha(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-static {p3, p1}, Landroidx/transition/c;->p(Lx1/I;F)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/high16 p3, 0x3f800000    # 1.0f

    .line 12
    .line 13
    invoke-virtual {p0, p2, p1, p3}, Landroidx/transition/c;->o(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Lx1/I;Lx1/I;)Landroid/animation/Animator;
    .locals 2

    .line 1
    sget-object p1, Lx1/M;->a:Lx1/W;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lx1/O;->saveNonTransitionAlpha(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    invoke-static {p3, v0}, Landroidx/transition/c;->p(Lx1/I;F)F

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, p2, p3, v1}, Landroidx/transition/c;->o(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    if-nez p3, :cond_0

    .line 18
    .line 19
    invoke-static {p4, v0}, Landroidx/transition/c;->p(Lx1/I;F)F

    .line 20
    .line 21
    .line 22
    move-result p4

    .line 23
    invoke-virtual {p1, p2, p4}, Lx1/O;->setTransitionAlpha(Landroid/view/View;F)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-object p3
.end method
