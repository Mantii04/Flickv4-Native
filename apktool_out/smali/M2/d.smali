.class public abstract LM2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static create(FFFF)Landroid/view/animation/Interpolator;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
