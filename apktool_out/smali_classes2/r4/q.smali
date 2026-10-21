.class public final Lr4/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lr4/r;


# direct methods
.method public constructor <init>(Lr4/r;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr4/q;->e:Lr4/r;

    .line 5
    .line 6
    iput p2, p0, Lr4/q;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lr4/q;->e:Lr4/r;

    .line 2
    .line 3
    iget-object v1, v0, Lr4/r;->h:[F

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Float;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget v2, p0, Lr4/q;->b:I

    .line 16
    .line 17
    aput p1, v1, v2

    .line 18
    .line 19
    iget-object p1, v0, Lr4/g;->e:Lp4/a;

    .line 20
    .line 21
    invoke-interface {p1}, Lp4/a;->reDraw()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
