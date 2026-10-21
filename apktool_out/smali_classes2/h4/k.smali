.class public abstract Lh4/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Landroid/view/animation/Interpolator;

.field public final c:Ljava/util/ArrayList;

.field public d:Lh4/o;


# direct methods
.method public varargs constructor <init>([Lh4/j;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    iput v0, p0, Lh4/k;->a:I

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lh4/k;->c:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lh4/j;

    .line 27
    .line 28
    add-int/lit8 v0, v0, -0x1

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lh4/j;

    .line 35
    .line 36
    invoke-virtual {p1}, Lh4/j;->getInterpolator()Landroid/view/animation/Interpolator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lh4/k;->b:Landroid/view/animation/Interpolator;

    .line 41
    .line 42
    return-void
.end method

.method public static varargs ofFloat([F)Lh4/k;
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-array v1, v1, [Lh4/h;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-ne v0, v4, :cond_0

    .line 13
    .line 14
    invoke-static {v2}, Lh4/j;->ofFloat(F)Lh4/j;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lh4/h;

    .line 19
    .line 20
    aput-object v0, v1, v3

    .line 21
    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    .line 24
    aget p0, p0, v3

    .line 25
    .line 26
    invoke-static {v0, p0}, Lh4/j;->ofFloat(FF)Lh4/j;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lh4/h;

    .line 31
    .line 32
    aput-object p0, v1, v4

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    aget v5, p0, v3

    .line 36
    .line 37
    invoke-static {v2, v5}, Lh4/j;->ofFloat(FF)Lh4/j;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lh4/h;

    .line 42
    .line 43
    aput-object v2, v1, v3

    .line 44
    .line 45
    :goto_0
    if-ge v4, v0, :cond_1

    .line 46
    .line 47
    int-to-float v2, v4

    .line 48
    add-int/lit8 v3, v0, -0x1

    .line 49
    .line 50
    int-to-float v3, v3

    .line 51
    div-float/2addr v2, v3

    .line 52
    aget v3, p0, v4

    .line 53
    .line 54
    invoke-static {v2, v3}, Lh4/j;->ofFloat(FF)Lh4/j;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lh4/h;

    .line 59
    .line 60
    aput-object v2, v1, v4

    .line 61
    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    :goto_1
    new-instance p0, Lh4/e;

    .line 66
    .line 67
    invoke-direct {p0, v1}, Lh4/e;-><init>([Lh4/h;)V

    .line 68
    .line 69
    .line 70
    return-object p0
.end method

.method public static varargs ofInt([I)Lh4/k;
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-array v1, v1, [Lh4/i;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-ne v0, v4, :cond_0

    .line 13
    .line 14
    invoke-static {v2}, Lh4/j;->ofInt(F)Lh4/j;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lh4/i;

    .line 19
    .line 20
    aput-object v0, v1, v3

    .line 21
    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    .line 24
    aget p0, p0, v3

    .line 25
    .line 26
    invoke-static {v0, p0}, Lh4/j;->ofInt(FI)Lh4/j;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lh4/i;

    .line 31
    .line 32
    aput-object p0, v1, v4

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    aget v5, p0, v3

    .line 36
    .line 37
    invoke-static {v2, v5}, Lh4/j;->ofInt(FI)Lh4/j;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lh4/i;

    .line 42
    .line 43
    aput-object v2, v1, v3

    .line 44
    .line 45
    :goto_0
    if-ge v4, v0, :cond_1

    .line 46
    .line 47
    int-to-float v2, v4

    .line 48
    add-int/lit8 v3, v0, -0x1

    .line 49
    .line 50
    int-to-float v3, v3

    .line 51
    div-float/2addr v2, v3

    .line 52
    aget v3, p0, v4

    .line 53
    .line 54
    invoke-static {v2, v3}, Lh4/j;->ofInt(FI)Lh4/j;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lh4/i;

    .line 59
    .line 60
    aput-object v2, v1, v4

    .line 61
    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    :goto_1
    new-instance p0, Lh4/g;

    .line 66
    .line 67
    invoke-direct {p0, v1}, Lh4/g;-><init>([Lh4/i;)V

    .line 68
    .line 69
    .line 70
    return-object p0
.end method


# virtual methods
.method public abstract clone()Lh4/k;
.end method

.method public setEvaluator(Lh4/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh4/k;->d:Lh4/o;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, p0, Lh4/k;->a:I

    .line 5
    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lb/c;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v2, p0, Lh4/k;->c:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lh4/j;

    .line 19
    .line 20
    invoke-virtual {v2}, Lh4/j;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, "  "

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-object v0
.end method
