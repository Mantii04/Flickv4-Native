.class public final Lh4/h;
.super Lh4/j;
.source "SourceFile"


# instance fields
.field public final f:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lh4/j;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lh4/j;->b:F

    .line 5
    .line 6
    iput p2, p0, Lh4/h;->f:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public clone()Lh4/h;
    .locals 3

    .line 3
    new-instance v0, Lh4/h;

    invoke-virtual {p0}, Lh4/j;->getFraction()F

    move-result v1

    iget v2, p0, Lh4/h;->f:F

    invoke-direct {v0, v1, v2}, Lh4/h;-><init>(FF)V

    .line 4
    invoke-virtual {p0}, Lh4/j;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh4/j;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lh4/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lh4/h;->clone()Lh4/h;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lh4/h;->clone()Lh4/h;

    move-result-object v0

    return-object v0
.end method

.method public getFloatValue()F
    .locals 1

    .line 1
    iget v0, p0, Lh4/h;->f:F

    .line 2
    .line 3
    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lh4/h;->f:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
