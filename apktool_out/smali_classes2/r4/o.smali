.class public final Lr4/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Lr4/p;


# direct methods
.method public constructor <init>(Lr4/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr4/o;->b:Lr4/p;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lr4/o;->b:Lr4/p;

    .line 12
    .line 13
    iput p1, v0, Lr4/p;->k:F

    .line 14
    .line 15
    iget-object p1, v0, Lr4/g;->e:Lp4/a;

    .line 16
    .line 17
    invoke-interface {p1}, Lp4/a;->reDraw()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
