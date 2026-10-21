.class public final Lh4/i;
.super Lh4/j;
.source "SourceFile"


# instance fields
.field public final f:I


# direct methods
.method public constructor <init>(FI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lh4/j;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lh4/j;->b:F

    .line 5
    .line 6
    iput p2, p0, Lh4/i;->f:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public clone()Lh4/i;
    .locals 3

    .line 3
    new-instance v0, Lh4/i;

    invoke-virtual {p0}, Lh4/j;->getFraction()F

    move-result v1

    iget v2, p0, Lh4/i;->f:I

    invoke-direct {v0, v1, v2}, Lh4/i;-><init>(FI)V

    .line 4
    invoke-virtual {p0}, Lh4/j;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh4/j;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lh4/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lh4/i;->clone()Lh4/i;

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
    invoke-virtual {p0}, Lh4/i;->clone()Lh4/i;

    move-result-object v0

    return-object v0
.end method

.method public getIntValue()I
    .locals 1

    .line 1
    iget v0, p0, Lh4/i;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lh4/i;->f:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
