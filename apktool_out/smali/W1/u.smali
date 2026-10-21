.class public final LW1/u;
.super LW1/f;
.source "SourceFile"


# instance fields
.field public final i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg2/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg2/c;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, LW1/u;-><init>(Lg2/c;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lg2/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg2/c;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, v0}, LW1/f;-><init>(Ljava/util/List;)V

    .line 3
    new-instance v0, Lg2/b;

    invoke-direct {v0}, Lg2/b;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 5
    iput-object p2, p0, LW1/u;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LW1/f;->e:Lg2/c;

    invoke-virtual {p0}, LW1/f;->getProgress()F

    move-result v5

    invoke-virtual {p0}, LW1/f;->getProgress()F

    move-result v6

    invoke-virtual {p0}, LW1/f;->getProgress()F

    move-result v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, LW1/u;->i:Ljava/lang/Object;

    move-object v4, v3

    invoke-virtual/range {v0 .. v7}, Lg2/c;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getValue(Lg2/a;F)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, LW1/u;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public notifyListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, LW1/f;->e:Lg2/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, LW1/f;->notifyListeners()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 1
    iput p1, p0, LW1/f;->d:F

    .line 2
    .line 3
    return-void
.end method
