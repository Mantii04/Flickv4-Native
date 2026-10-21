.class public final LM/S0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LM/R0;


# direct methods
.method public constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1e

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, LM/Q0;

    .line 11
    .line 12
    invoke-static {p1, p2, p3, p4}, LL1/g;->l(ILandroid/view/animation/Interpolator;J)Landroid/view/WindowInsetsAnimation;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v0, p1}, LM/Q0;-><init>(Landroid/view/WindowInsetsAnimation;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, LM/S0;->a:LM/R0;

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v0, LM/O0;

    .line 23
    .line 24
    invoke-direct {v0, p1, p2, p3, p4}, LM/R0;-><init>(ILandroid/view/animation/Interpolator;J)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, LM/S0;->a:LM/R0;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public getDurationMillis()J
    .locals 2

    .line 1
    iget-object v0, p0, LM/S0;->a:LM/R0;

    .line 2
    .line 3
    invoke-virtual {v0}, LM/R0;->getDurationMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getInterpolatedFraction()F
    .locals 1

    .line 1
    iget-object v0, p0, LM/S0;->a:LM/R0;

    .line 2
    .line 3
    invoke-virtual {v0}, LM/R0;->getInterpolatedFraction()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getTypeMask()I
    .locals 1

    .line 1
    iget-object v0, p0, LM/S0;->a:LM/R0;

    .line 2
    .line 3
    invoke-virtual {v0}, LM/R0;->getTypeMask()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setFraction(F)V
    .locals 1

    .line 1
    iget-object v0, p0, LM/S0;->a:LM/R0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LM/R0;->setFraction(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
