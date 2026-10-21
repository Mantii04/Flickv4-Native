.class public final LT1/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:LT1/G;


# direct methods
.method public constructor <init>(LT1/G;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LT1/w;->b:LT1/G;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object p1, p0, LT1/w;->b:LT1/G;

    .line 2
    .line 3
    iget-object v0, p1, LT1/G;->v:Lb2/c;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, LT1/G;->f:Lf2/e;

    .line 8
    .line 9
    invoke-virtual {p1}, Lf2/e;->getAnimatedValueAbsolute()F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {v0, p1}, Lb2/c;->setProgress(F)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
