.class public final Lm1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lm1/u;


# direct methods
.method public constructor <init>(Lm1/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm1/q;->b:Lm1/u;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lm1/q;->b:Lm1/u;

    .line 4
    .line 5
    iget v3, v2, Lm1/u;->A:I

    .line 6
    .line 7
    iget-object v4, v2, Lm1/u;->z:Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    if-eq v3, v1, :cond_0

    .line 10
    .line 11
    if-eq v3, v0, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 15
    .line 16
    .line 17
    :cond_1
    const/4 v3, 0x3

    .line 18
    iput v3, v2, Lm1/u;->A:I

    .line 19
    .line 20
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/Float;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    new-array v0, v0, [F

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    aput v2, v0, v3

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    aput v2, v0, v1

    .line 37
    .line 38
    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 39
    .line 40
    .line 41
    const/16 v0, 0x1f4

    .line 42
    .line 43
    int-to-long v0, v0

    .line 44
    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 48
    .line 49
    .line 50
    return-void
.end method
