.class public final Lr4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lr4/b;


# direct methods
.method public constructor <init>(Lr4/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr4/a;->e:Lr4/b;

    .line 5
    .line 6
    iput p2, p0, Lr4/a;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lr4/a;->e:Lr4/b;

    .line 2
    .line 3
    iget-object v1, v0, Lr4/b;->f:[Lq4/b;

    .line 4
    .line 5
    iget v2, p0, Lr4/a;->b:I

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {v1, p1}, Lq4/c;->setAlpha(I)V

    .line 20
    .line 21
    .line 22
    iget-object p1, v0, Lr4/g;->e:Lp4/a;

    .line 23
    .line 24
    invoke-interface {p1}, Lp4/a;->reDraw()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
