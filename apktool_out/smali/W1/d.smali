.class public final LW1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW1/c;


# instance fields
.field public final a:Ljava/util/List;

.field public b:Lg2/a;

.field public c:Lg2/a;

.field public d:F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, LW1/d;->c:Lg2/a;

    .line 6
    .line 7
    const/high16 v0, -0x40800000    # -1.0f

    .line 8
    .line 9
    iput v0, p0, LW1/d;->d:F

    .line 10
    .line 11
    iput-object p1, p0, LW1/d;->a:Ljava/util/List;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, LW1/d;->a(F)Lg2/a;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, LW1/d;->b:Lg2/a;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(F)Lg2/a;
    .locals 5

    .line 1
    iget-object v0, p0, LW1/d;->a:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, LA/i;->c(ILjava/util/List;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    check-cast v2, Lg2/a;

    .line 9
    .line 10
    invoke-virtual {v2}, Lg2/a;->getStartProgress()F

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    cmpl-float v3, p1, v3

    .line 15
    .line 16
    if-ltz v3, :cond_0

    .line 17
    .line 18
    return-object v2

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    add-int/lit8 v2, v2, -0x2

    .line 24
    .line 25
    :goto_0
    if-lt v2, v1, :cond_3

    .line 26
    .line 27
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lg2/a;

    .line 32
    .line 33
    iget-object v4, p0, LW1/d;->b:Lg2/a;

    .line 34
    .line 35
    if-ne v4, v3, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {v3, p1}, Lg2/a;->containsProgress(F)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    return-object v3

    .line 45
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    const/4 p1, 0x0

    .line 49
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lg2/a;

    .line 54
    .line 55
    return-object p1
.end method

.method public getCurrentKeyframe()Lg2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg2/a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LW1/d;->b:Lg2/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEndProgress()F
    .locals 2

    .line 1
    iget-object v0, p0, LW1/d;->a:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, LA/i;->c(ILjava/util/List;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lg2/a;

    .line 9
    .line 10
    invoke-virtual {v0}, Lg2/a;->getEndProgress()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public getStartDelayProgress()F
    .locals 2

    .line 1
    iget-object v0, p0, LW1/d;->a:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lg2/a;

    .line 9
    .line 10
    invoke-virtual {v0}, Lg2/a;->getStartProgress()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public isCachedValueEnabled(F)Z
    .locals 2

    .line 1
    iget-object v0, p0, LW1/d;->c:Lg2/a;

    .line 2
    .line 3
    iget-object v1, p0, LW1/d;->b:Lg2/a;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, LW1/d;->d:F

    .line 8
    .line 9
    cmpl-float v0, v0, p1

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    iput-object v1, p0, LW1/d;->c:Lg2/a;

    .line 16
    .line 17
    iput p1, p0, LW1/d;->d:F

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isValueChanged(F)Z
    .locals 2

    .line 1
    iget-object v0, p0, LW1/d;->b:Lg2/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lg2/a;->containsProgress(F)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, LW1/d;->b:Lg2/a;

    .line 11
    .line 12
    invoke-virtual {p1}, Lg2/a;->isStatic()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    xor-int/2addr p1, v1

    .line 17
    return p1

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, LW1/d;->a(F)Lg2/a;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, LW1/d;->b:Lg2/a;

    .line 23
    .line 24
    return v1
.end method
