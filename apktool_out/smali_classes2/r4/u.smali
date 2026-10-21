.class public final Lr4/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lr4/v;


# direct methods
.method public constructor <init>(Lr4/v;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr4/u;->e:Lr4/v;

    .line 5
    .line 6
    iput p2, p0, Lr4/u;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lr4/u;->e:Lr4/v;

    .line 2
    .line 3
    iget-object v1, v0, Lr4/v;->f:[Lq4/b;

    .line 4
    .line 5
    iget v2, p0, Lr4/u;->b:I

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    iget-object v2, v0, Lr4/g;->d:Landroid/graphics/PointF;

    .line 10
    .line 11
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Float;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {v1, v2, p1}, Lq4/b;->setCenter(FF)V

    .line 24
    .line 25
    .line 26
    iget-object p1, v0, Lr4/g;->e:Lp4/a;

    .line 27
    .line 28
    invoke-interface {p1}, Lp4/a;->reDraw()V

    .line 29
    .line 30
    .line 31
    return-void
.end method
