.class public final LW1/r;
.super LW1/f;
.source "SourceFile"


# instance fields
.field public final i:Landroid/graphics/PointF;

.field public final j:LW1/f;

.field public final k:LW1/f;


# direct methods
.method public constructor <init>(LW1/f;LW1/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LW1/f;",
            "LW1/f;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, v0}, LW1/f;-><init>(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/graphics/PointF;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, LW1/r;->i:Landroid/graphics/PointF;

    .line 12
    .line 13
    iput-object p1, p0, LW1/r;->j:LW1/f;

    .line 14
    .line 15
    iput-object p2, p0, LW1/r;->k:LW1/f;

    .line 16
    .line 17
    invoke-virtual {p0}, LW1/f;->getProgress()F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0, p1}, LW1/r;->setProgress(F)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public getValue()Landroid/graphics/PointF;
    .locals 1

    .line 2
    iget-object v0, p0, LW1/r;->i:Landroid/graphics/PointF;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LW1/r;->getValue()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public final getValue(Lg2/a;F)Ljava/lang/Object;
    .locals 0

    .line 3
    iget-object p1, p0, LW1/r;->i:Landroid/graphics/PointF;

    return-object p1
.end method

.method public setProgress(F)V
    .locals 2

    .line 1
    iget-object v0, p0, LW1/r;->j:LW1/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LW1/f;->setProgress(F)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LW1/r;->k:LW1/f;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, LW1/f;->setProgress(F)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, LW1/r;->i:Landroid/graphics/PointF;

    .line 12
    .line 13
    invoke-virtual {v0}, LW1/f;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Float;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {v1}, LW1/f;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Float;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    :goto_0
    iget-object v0, p0, LW1/f;->a:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-ge p1, v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, LW1/a;

    .line 50
    .line 51
    invoke-interface {v0}, LW1/a;->onValueChanged()V

    .line 52
    .line 53
    .line 54
    add-int/lit8 p1, p1, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method
