.class public final LW/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final x:LW/i;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:[F

.field public e:[F

.field public f:[F

.field public g:[F

.field public h:[I

.field public i:[I

.field public j:[I

.field public k:I

.field public l:Landroid/view/VelocityTracker;

.field public final m:F

.field public n:F

.field public o:I

.field public final p:I

.field public q:I

.field public final r:Landroid/widget/OverScroller;

.field public final s:LW/k;

.field public t:Landroid/view/View;

.field public u:Z

.field public final v:Landroid/view/ViewGroup;

.field public final w:LW/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LW/i;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LW/l;->x:LW/i;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;LW/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, LW/l;->c:I

    .line 6
    .line 7
    new-instance v0, LW/j;

    .line 8
    .line 9
    invoke-direct {v0, p0}, LW/j;-><init>(LW/l;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, LW/l;->w:LW/j;

    .line 13
    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    iput-object p2, p0, LW/l;->v:Landroid/view/ViewGroup;

    .line 17
    .line 18
    iput-object p3, p0, LW/l;->s:LW/k;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    .line 33
    .line 34
    const/high16 v0, 0x41a00000    # 20.0f

    .line 35
    .line 36
    mul-float/2addr p3, v0

    .line 37
    const/high16 v0, 0x3f000000    # 0.5f

    .line 38
    .line 39
    add-float/2addr p3, v0

    .line 40
    float-to-int p3, p3

    .line 41
    iput p3, p0, LW/l;->p:I

    .line 42
    .line 43
    iput p3, p0, LW/l;->o:I

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    iput p3, p0, LW/l;->b:I

    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    int-to-float p3, p3

    .line 56
    iput p3, p0, LW/l;->m:F

    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    int-to-float p2, p2

    .line 63
    iput p2, p0, LW/l;->n:F

    .line 64
    .line 65
    new-instance p2, Landroid/widget/OverScroller;

    .line 66
    .line 67
    sget-object p3, LW/l;->x:LW/i;

    .line 68
    .line 69
    invoke-direct {p2, p1, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 70
    .line 71
    .line 72
    iput-object p2, p0, LW/l;->r:Landroid/widget/OverScroller;

    .line 73
    .line 74
    return-void

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    const-string p2, "Callback may not be null"

    .line 78
    .line 79
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1
.end method

.method public static create(Landroid/view/ViewGroup;FLW/k;)LW/l;
    .locals 1

    .line 2
    invoke-static {p0, p2}, LW/l;->create(Landroid/view/ViewGroup;LW/k;)LW/l;

    move-result-object p0

    .line 3
    iget p2, p0, LW/l;->b:I

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    mul-float/2addr v0, p2

    float-to-int p1, v0

    iput p1, p0, LW/l;->b:I

    return-object p0
.end method

.method public static create(Landroid/view/ViewGroup;LW/k;)LW/l;
    .locals 2

    .line 1
    new-instance v0, LW/l;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, LW/l;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;LW/k;)V

    return-object v0
.end method


# virtual methods
.method public final a(FFII)Z
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget-object v0, p0, LW/l;->h:[I

    .line 10
    .line 11
    aget v0, v0, p3

    .line 12
    .line 13
    and-int/2addr v0, p4

    .line 14
    const/4 v1, 0x0

    .line 15
    if-ne v0, p4, :cond_2

    .line 16
    .line 17
    iget v0, p0, LW/l;->q:I

    .line 18
    .line 19
    and-int/2addr v0, p4

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, LW/l;->j:[I

    .line 23
    .line 24
    aget v0, v0, p3

    .line 25
    .line 26
    and-int/2addr v0, p4

    .line 27
    if-eq v0, p4, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, LW/l;->i:[I

    .line 30
    .line 31
    aget v0, v0, p3

    .line 32
    .line 33
    and-int/2addr v0, p4

    .line 34
    if-eq v0, p4, :cond_2

    .line 35
    .line 36
    iget v0, p0, LW/l;->b:I

    .line 37
    .line 38
    int-to-float v0, v0

    .line 39
    cmpg-float v2, p1, v0

    .line 40
    .line 41
    if-gtz v2, :cond_0

    .line 42
    .line 43
    cmpg-float v0, p2, v0

    .line 44
    .line 45
    if-gtz v0, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    .line 49
    .line 50
    mul-float/2addr p2, v0

    .line 51
    cmpg-float p2, p1, p2

    .line 52
    .line 53
    if-gez p2, :cond_1

    .line 54
    .line 55
    iget-object p2, p0, LW/l;->s:LW/k;

    .line 56
    .line 57
    invoke-virtual {p2, p4}, LW/k;->onEdgeLock(I)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_1

    .line 62
    .line 63
    iget-object p1, p0, LW/l;->j:[I

    .line 64
    .line 65
    aget p2, p1, p3

    .line 66
    .line 67
    or-int/2addr p2, p4

    .line 68
    aput p2, p1, p3

    .line 69
    .line 70
    return v1

    .line 71
    :cond_1
    iget-object p2, p0, LW/l;->i:[I

    .line 72
    .line 73
    aget p2, p2, p3

    .line 74
    .line 75
    and-int/2addr p2, p4

    .line 76
    if-nez p2, :cond_2

    .line 77
    .line 78
    iget p2, p0, LW/l;->b:I

    .line 79
    .line 80
    int-to-float p2, p2

    .line 81
    cmpl-float p1, p1, p2

    .line 82
    .line 83
    if-lez p1, :cond_2

    .line 84
    .line 85
    const/4 p1, 0x1

    .line 86
    return p1

    .line 87
    :cond_2
    :goto_0
    return v1
.end method

.method public final b(Landroid/view/View;FF)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, LW/l;->s:LW/k;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, LW/k;->getViewHorizontalDragRange(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-lez v2, :cond_1

    .line 13
    .line 14
    move v2, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move v2, v0

    .line 17
    :goto_0
    invoke-virtual {v1, p1}, LW/k;->getViewVerticalDragRange(Landroid/view/View;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-lez p1, :cond_2

    .line 22
    .line 23
    move p1, v3

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    move p1, v0

    .line 26
    :goto_1
    if-eqz v2, :cond_4

    .line 27
    .line 28
    if-eqz p1, :cond_4

    .line 29
    .line 30
    mul-float/2addr p2, p2

    .line 31
    mul-float/2addr p3, p3

    .line 32
    add-float/2addr p3, p2

    .line 33
    iget p1, p0, LW/l;->b:I

    .line 34
    .line 35
    mul-int/2addr p1, p1

    .line 36
    int-to-float p1, p1

    .line 37
    cmpl-float p1, p3, p1

    .line 38
    .line 39
    if-lez p1, :cond_3

    .line 40
    .line 41
    return v3

    .line 42
    :cond_3
    return v0

    .line 43
    :cond_4
    if-eqz v2, :cond_6

    .line 44
    .line 45
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iget p2, p0, LW/l;->b:I

    .line 50
    .line 51
    int-to-float p2, p2

    .line 52
    cmpl-float p1, p1, p2

    .line 53
    .line 54
    if-lez p1, :cond_5

    .line 55
    .line 56
    return v3

    .line 57
    :cond_5
    return v0

    .line 58
    :cond_6
    if-eqz p1, :cond_7

    .line 59
    .line 60
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iget p2, p0, LW/l;->b:I

    .line 65
    .line 66
    int-to-float p2, p2

    .line 67
    cmpl-float p1, p1, p2

    .line 68
    .line 69
    if-lez p1, :cond_7

    .line 70
    .line 71
    return v3

    .line 72
    :cond_7
    return v0
.end method

.method public final c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, LW/l;->d:[F

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, LW/l;->isPointerDown(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, LW/l;->d:[F

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    aput v1, v0, p1

    .line 16
    .line 17
    iget-object v0, p0, LW/l;->e:[F

    .line 18
    .line 19
    aput v1, v0, p1

    .line 20
    .line 21
    iget-object v0, p0, LW/l;->f:[F

    .line 22
    .line 23
    aput v1, v0, p1

    .line 24
    .line 25
    iget-object v0, p0, LW/l;->g:[F

    .line 26
    .line 27
    aput v1, v0, p1

    .line 28
    .line 29
    iget-object v0, p0, LW/l;->h:[I

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    aput v1, v0, p1

    .line 33
    .line 34
    iget-object v0, p0, LW/l;->i:[I

    .line 35
    .line 36
    aput v1, v0, p1

    .line 37
    .line 38
    iget-object v0, p0, LW/l;->j:[I

    .line 39
    .line 40
    aput v1, v0, p1

    .line 41
    .line 42
    iget v0, p0, LW/l;->k:I

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    shl-int p1, v1, p1

    .line 46
    .line 47
    not-int p1, p1

    .line 48
    and-int/2addr p1, v0

    .line 49
    iput p1, p0, LW/l;->k:I

    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, LW/l;->c:I

    .line 3
    .line 4
    iget-object v0, p0, LW/l;->d:[F

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, LW/l;->e:[F

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, LW/l;->f:[F

    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, LW/l;->g:[F

    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, LW/l;->h:[I

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, LW/l;->i:[I

    .line 35
    .line 36
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, LW/l;->j:[I

    .line 40
    .line 41
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 42
    .line 43
    .line 44
    iput v1, p0, LW/l;->k:I

    .line 45
    .line 46
    :goto_0
    iget-object v0, p0, LW/l;->l:Landroid/view/VelocityTracker;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, LW/l;->l:Landroid/view/VelocityTracker;

    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, LW/l;->v:Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, LW/l;->t:Landroid/view/View;

    .line 10
    .line 11
    iput p2, p0, LW/l;->c:I

    .line 12
    .line 13
    iget-object v0, p0, LW/l;->s:LW/k;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, LW/k;->onViewCaptured(Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, LW/l;->k(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v0, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    .line 28
    .line 29
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, ")"

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public checkTouchSlop(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, LW/l;->d:[F

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-virtual {p0, p1, v2}, LW/l;->checkTouchSlop(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public checkTouchSlop(II)Z
    .locals 6

    .line 3
    invoke-virtual {p0, p2}, LW/l;->isPointerDown(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v3, 0x2

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v1

    .line 4
    :goto_1
    iget-object v3, p0, LW/l;->f:[F

    aget v3, v3, p2

    iget-object v4, p0, LW/l;->d:[F

    aget v4, v4, p2

    sub-float/2addr v3, v4

    .line 5
    iget-object v4, p0, LW/l;->g:[F

    aget v4, v4, p2

    iget-object v5, p0, LW/l;->e:[F

    aget p2, v5, p2

    sub-float/2addr v4, p2

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v4, v3

    .line 6
    iget p1, p0, LW/l;->b:I

    mul-int/2addr p1, p1

    int-to-float p1, p1

    cmpl-float p1, v4, p1

    if-lez p1, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    if-eqz v0, :cond_6

    .line 7
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, LW/l;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    return v2

    :cond_5
    return v1

    :cond_6
    if-eqz p1, :cond_7

    .line 8
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, LW/l;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    return v2

    :cond_7
    return v1
.end method

.method public continueSettling(Z)Z
    .locals 10

    .line 1
    iget v0, p0, LW/l;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    if-ne v0, v2, :cond_6

    .line 6
    .line 7
    iget-object v0, p0, LW/l;->r:Landroid/widget/OverScroller;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    .line 18
    .line 19
    .line 20
    move-result v7

    .line 21
    iget-object v4, p0, LW/l;->t:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    sub-int v8, v6, v4

    .line 28
    .line 29
    iget-object v4, p0, LW/l;->t:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    sub-int v9, v7, v4

    .line 36
    .line 37
    if-eqz v8, :cond_0

    .line 38
    .line 39
    iget-object v4, p0, LW/l;->t:Landroid/view/View;

    .line 40
    .line 41
    invoke-static {v4, v8}, LM/p0;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 42
    .line 43
    .line 44
    :cond_0
    if-eqz v9, :cond_1

    .line 45
    .line 46
    iget-object v4, p0, LW/l;->t:Landroid/view/View;

    .line 47
    .line 48
    invoke-static {v4, v9}, LM/p0;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 49
    .line 50
    .line 51
    :cond_1
    if-nez v8, :cond_2

    .line 52
    .line 53
    if-eqz v9, :cond_3

    .line 54
    .line 55
    :cond_2
    iget-object v4, p0, LW/l;->s:LW/k;

    .line 56
    .line 57
    iget-object v5, p0, LW/l;->t:Landroid/view/View;

    .line 58
    .line 59
    invoke-virtual/range {v4 .. v9}, LW/k;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 60
    .line 61
    .line 62
    :cond_3
    if-eqz v3, :cond_4

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-ne v6, v4, :cond_4

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-ne v7, v4, :cond_4

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 77
    .line 78
    .line 79
    move v3, v1

    .line 80
    :cond_4
    if-nez v3, :cond_6

    .line 81
    .line 82
    if-eqz p1, :cond_5

    .line 83
    .line 84
    iget-object p1, p0, LW/l;->w:LW/j;

    .line 85
    .line 86
    iget-object v0, p0, LW/l;->v:Landroid/view/ViewGroup;

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    invoke-virtual {p0, v1}, LW/l;->k(I)V

    .line 93
    .line 94
    .line 95
    :cond_6
    :goto_0
    iget p1, p0, LW/l;->a:I

    .line 96
    .line 97
    if-ne p1, v2, :cond_7

    .line 98
    .line 99
    const/4 p1, 0x1

    .line 100
    return p1

    .line 101
    :cond_7
    return v1
.end method

.method public final d(III)I
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-object v0, p0, LW/l;->v:Landroid/view/ViewGroup;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    div-int/lit8 v1, v0, 0x2

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    int-to-float v2, v2

    .line 18
    int-to-float v0, v0

    .line 19
    div-float/2addr v2, v0

    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    .line 22
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    int-to-float v1, v1

    .line 27
    const/high16 v3, 0x3f000000    # 0.5f

    .line 28
    .line 29
    sub-float/2addr v2, v3

    .line 30
    const v3, 0x3ef1463b

    .line 31
    .line 32
    .line 33
    mul-float/2addr v2, v3

    .line 34
    float-to-double v2, v2

    .line 35
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    double-to-float v2, v2

    .line 40
    mul-float/2addr v2, v1

    .line 41
    add-float/2addr v2, v1

    .line 42
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-lez p2, :cond_1

    .line 47
    .line 48
    int-to-float p1, p2

    .line 49
    div-float/2addr v2, p1

    .line 50
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 55
    .line 56
    mul-float/2addr p1, p2

    .line 57
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    mul-int/lit8 p1, p1, 0x4

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    int-to-float p1, p1

    .line 69
    int-to-float p2, p3

    .line 70
    div-float/2addr p1, p2

    .line 71
    add-float/2addr p1, v0

    .line 72
    const/high16 p2, 0x43800000    # 256.0f

    .line 73
    .line 74
    mul-float/2addr p1, p2

    .line 75
    float-to-int p1, p1

    .line 76
    :goto_0
    const/16 p2, 0x258

    .line 77
    .line 78
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    return p1
.end method

.method public final e(IIII)Z
    .locals 10

    .line 1
    iget-object v0, p0, LW/l;->t:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object v0, p0, LW/l;->t:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    sub-int v4, p1, v2

    .line 14
    .line 15
    sub-int v5, p2, v3

    .line 16
    .line 17
    iget-object v1, p0, LW/l;->r:Landroid/widget/OverScroller;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    if-nez v5, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, LW/l;->k(I)V

    .line 28
    .line 29
    .line 30
    return p1

    .line 31
    :cond_0
    iget-object p2, p0, LW/l;->t:Landroid/view/View;

    .line 32
    .line 33
    iget v0, p0, LW/l;->n:F

    .line 34
    .line 35
    float-to-int v0, v0

    .line 36
    iget v6, p0, LW/l;->m:F

    .line 37
    .line 38
    float-to-int v6, v6

    .line 39
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-ge v7, v0, :cond_1

    .line 44
    .line 45
    move p3, p1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    if-le v7, v6, :cond_3

    .line 48
    .line 49
    if-lez p3, :cond_2

    .line 50
    .line 51
    move p3, v6

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    neg-int p3, v6

    .line 54
    :cond_3
    :goto_0
    iget v0, p0, LW/l;->n:F

    .line 55
    .line 56
    float-to-int v0, v0

    .line 57
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-ge v7, v0, :cond_4

    .line 62
    .line 63
    move p4, p1

    .line 64
    goto :goto_1

    .line 65
    :cond_4
    if-le v7, v6, :cond_6

    .line 66
    .line 67
    if-lez p4, :cond_5

    .line 68
    .line 69
    move p4, v6

    .line 70
    goto :goto_1

    .line 71
    :cond_5
    neg-int p4, v6

    .line 72
    :cond_6
    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    add-int v8, v6, v7

    .line 89
    .line 90
    add-int v9, p1, v0

    .line 91
    .line 92
    if-eqz p3, :cond_7

    .line 93
    .line 94
    int-to-float p1, v6

    .line 95
    int-to-float v6, v8

    .line 96
    :goto_2
    div-float/2addr p1, v6

    .line 97
    goto :goto_3

    .line 98
    :cond_7
    int-to-float p1, p1

    .line 99
    int-to-float v6, v9

    .line 100
    goto :goto_2

    .line 101
    :goto_3
    if-eqz p4, :cond_8

    .line 102
    .line 103
    int-to-float v0, v7

    .line 104
    int-to-float v6, v8

    .line 105
    :goto_4
    div-float/2addr v0, v6

    .line 106
    goto :goto_5

    .line 107
    :cond_8
    int-to-float v0, v0

    .line 108
    int-to-float v6, v9

    .line 109
    goto :goto_4

    .line 110
    :goto_5
    iget-object v6, p0, LW/l;->s:LW/k;

    .line 111
    .line 112
    invoke-virtual {v6, p2}, LW/k;->getViewHorizontalDragRange(Landroid/view/View;)I

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    invoke-virtual {p0, v4, p3, v7}, LW/l;->d(III)I

    .line 117
    .line 118
    .line 119
    move-result p3

    .line 120
    invoke-virtual {v6, p2}, LW/k;->getViewVerticalDragRange(Landroid/view/View;)I

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    invoke-virtual {p0, v5, p4, p2}, LW/l;->d(III)I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    int-to-float p3, p3

    .line 129
    mul-float/2addr p3, p1

    .line 130
    int-to-float p1, p2

    .line 131
    mul-float/2addr p1, v0

    .line 132
    add-float/2addr p1, p3

    .line 133
    float-to-int v6, p1

    .line 134
    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 135
    .line 136
    .line 137
    const/4 p1, 0x2

    .line 138
    invoke-virtual {p0, p1}, LW/l;->k(I)V

    .line 139
    .line 140
    .line 141
    const/4 p1, 0x1

    .line 142
    return p1
.end method

.method public final f(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, LW/l;->isPointerDown(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "Ignoring pointerId="

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p1, " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream."

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "ViewDragHelper"

    .line 27
    .line 28
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    return p1

    .line 33
    :cond_0
    const/4 p1, 0x1

    .line 34
    return p1
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, LW/l;->v:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v1, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, LW/l;->s:LW/k;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, LW/k;->getOrderedChildIndex(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-lt p1, v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ge p1, v3, :cond_0

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-lt p2, v3, :cond_0

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-ge p2, v3, :cond_0

    .line 44
    .line 45
    return-object v2

    .line 46
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 p1, 0x0

    .line 50
    return-object p1
.end method

.method public final g()V
    .locals 6

    .line 1
    iget-object v0, p0, LW/l;->l:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    iget v1, p0, LW/l;->m:F

    .line 4
    .line 5
    const/16 v2, 0x3e8

    .line 6
    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, LW/l;->l:Landroid/view/VelocityTracker;

    .line 11
    .line 12
    iget v2, p0, LW/l;->c:I

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v2, p0, LW/l;->n:F

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    cmpg-float v2, v3, v2

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    if-gez v2, :cond_0

    .line 28
    .line 29
    move v0, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    cmpl-float v2, v3, v1

    .line 32
    .line 33
    if-lez v2, :cond_2

    .line 34
    .line 35
    cmpl-float v0, v0, v4

    .line 36
    .line 37
    if-lez v0, :cond_1

    .line 38
    .line 39
    move v0, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    neg-float v0, v1

    .line 42
    :cond_2
    :goto_0
    iget-object v2, p0, LW/l;->l:Landroid/view/VelocityTracker;

    .line 43
    .line 44
    iget v3, p0, LW/l;->c:I

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    iget v3, p0, LW/l;->n:F

    .line 51
    .line 52
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    cmpg-float v3, v5, v3

    .line 57
    .line 58
    if-gez v3, :cond_3

    .line 59
    .line 60
    move v1, v4

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    cmpl-float v3, v5, v1

    .line 63
    .line 64
    if-lez v3, :cond_5

    .line 65
    .line 66
    cmpl-float v2, v2, v4

    .line 67
    .line 68
    if-lez v2, :cond_4

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    neg-float v1, v1

    .line 72
    goto :goto_1

    .line 73
    :cond_5
    move v1, v2

    .line 74
    :goto_1
    const/4 v2, 0x1

    .line 75
    iput-boolean v2, p0, LW/l;->u:Z

    .line 76
    .line 77
    iget-object v3, p0, LW/l;->s:LW/k;

    .line 78
    .line 79
    iget-object v4, p0, LW/l;->t:Landroid/view/View;

    .line 80
    .line 81
    invoke-virtual {v3, v4, v0, v1}, LW/k;->onViewReleased(Landroid/view/View;FF)V

    .line 82
    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, LW/l;->u:Z

    .line 86
    .line 87
    iget v1, p0, LW/l;->a:I

    .line 88
    .line 89
    if-ne v1, v2, :cond_6

    .line 90
    .line 91
    invoke-virtual {p0, v0}, LW/l;->k(I)V

    .line 92
    .line 93
    .line 94
    :cond_6
    return-void
.end method

.method public getCapturedView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, LW/l;->t:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDefaultEdgeSize()I
    .locals 1

    .line 1
    iget v0, p0, LW/l;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public getEdgeSize()I
    .locals 1

    .line 1
    iget v0, p0, LW/l;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public getTouchSlop()I
    .locals 1

    .line 1
    iget v0, p0, LW/l;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public getViewDragState()I
    .locals 1

    .line 1
    iget v0, p0, LW/l;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final h(FFI)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, LW/l;->a(FFII)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {p0, p2, p1, p3, v1}, LW/l;->a(FFII)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    or-int/lit8 v0, v0, 0x4

    .line 14
    .line 15
    :cond_0
    const/4 v1, 0x2

    .line 16
    invoke-virtual {p0, p1, p2, p3, v1}, LW/l;->a(FFII)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    or-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    :cond_1
    const/16 v1, 0x8

    .line 25
    .line 26
    invoke-virtual {p0, p2, p1, p3, v1}, LW/l;->a(FFII)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    or-int/lit8 v0, v0, 0x8

    .line 33
    .line 34
    :cond_2
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-object p1, p0, LW/l;->i:[I

    .line 37
    .line 38
    aget p2, p1, p3

    .line 39
    .line 40
    or-int/2addr p2, v0

    .line 41
    aput p2, p1, p3

    .line 42
    .line 43
    iget-object p1, p0, LW/l;->s:LW/k;

    .line 44
    .line 45
    invoke-virtual {p1, v0, p3}, LW/k;->onEdgeDragStarted(II)V

    .line 46
    .line 47
    .line 48
    :cond_3
    return-void
.end method

.method public final i(FFI)V
    .locals 10

    .line 1
    iget-object v0, p0, LW/l;->d:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    array-length v2, v0

    .line 7
    if-gt v2, p3, :cond_2

    .line 8
    .line 9
    :cond_0
    add-int/lit8 v2, p3, 0x1

    .line 10
    .line 11
    new-array v3, v2, [F

    .line 12
    .line 13
    new-array v4, v2, [F

    .line 14
    .line 15
    new-array v5, v2, [F

    .line 16
    .line 17
    new-array v6, v2, [F

    .line 18
    .line 19
    new-array v7, v2, [I

    .line 20
    .line 21
    new-array v8, v2, [I

    .line 22
    .line 23
    new-array v2, v2, [I

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    array-length v9, v0

    .line 28
    invoke-static {v0, v1, v3, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, LW/l;->e:[F

    .line 32
    .line 33
    array-length v9, v0

    .line 34
    invoke-static {v0, v1, v4, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, LW/l;->f:[F

    .line 38
    .line 39
    array-length v9, v0

    .line 40
    invoke-static {v0, v1, v5, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, LW/l;->g:[F

    .line 44
    .line 45
    array-length v9, v0

    .line 46
    invoke-static {v0, v1, v6, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, LW/l;->h:[I

    .line 50
    .line 51
    array-length v9, v0

    .line 52
    invoke-static {v0, v1, v7, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, LW/l;->i:[I

    .line 56
    .line 57
    array-length v9, v0

    .line 58
    invoke-static {v0, v1, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, LW/l;->j:[I

    .line 62
    .line 63
    array-length v9, v0

    .line 64
    invoke-static {v0, v1, v2, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iput-object v3, p0, LW/l;->d:[F

    .line 68
    .line 69
    iput-object v4, p0, LW/l;->e:[F

    .line 70
    .line 71
    iput-object v5, p0, LW/l;->f:[F

    .line 72
    .line 73
    iput-object v6, p0, LW/l;->g:[F

    .line 74
    .line 75
    iput-object v7, p0, LW/l;->h:[I

    .line 76
    .line 77
    iput-object v8, p0, LW/l;->i:[I

    .line 78
    .line 79
    iput-object v2, p0, LW/l;->j:[I

    .line 80
    .line 81
    :cond_2
    iget-object v0, p0, LW/l;->d:[F

    .line 82
    .line 83
    iget-object v2, p0, LW/l;->f:[F

    .line 84
    .line 85
    aput p1, v2, p3

    .line 86
    .line 87
    aput p1, v0, p3

    .line 88
    .line 89
    iget-object v0, p0, LW/l;->e:[F

    .line 90
    .line 91
    iget-object v2, p0, LW/l;->g:[F

    .line 92
    .line 93
    aput p2, v2, p3

    .line 94
    .line 95
    aput p2, v0, p3

    .line 96
    .line 97
    iget-object v0, p0, LW/l;->h:[I

    .line 98
    .line 99
    float-to-int p1, p1

    .line 100
    float-to-int p2, p2

    .line 101
    iget-object v2, p0, LW/l;->v:Landroid/view/ViewGroup;

    .line 102
    .line 103
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    iget v4, p0, LW/l;->o:I

    .line 108
    .line 109
    add-int/2addr v3, v4

    .line 110
    const/4 v4, 0x1

    .line 111
    if-ge p1, v3, :cond_3

    .line 112
    .line 113
    move v1, v4

    .line 114
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    iget v5, p0, LW/l;->o:I

    .line 119
    .line 120
    add-int/2addr v3, v5

    .line 121
    if-ge p2, v3, :cond_4

    .line 122
    .line 123
    or-int/lit8 v1, v1, 0x4

    .line 124
    .line 125
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    iget v5, p0, LW/l;->o:I

    .line 130
    .line 131
    sub-int/2addr v3, v5

    .line 132
    if-le p1, v3, :cond_5

    .line 133
    .line 134
    or-int/lit8 v1, v1, 0x2

    .line 135
    .line 136
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    iget v2, p0, LW/l;->o:I

    .line 141
    .line 142
    sub-int/2addr p1, v2

    .line 143
    if-le p2, p1, :cond_6

    .line 144
    .line 145
    or-int/lit8 v1, v1, 0x8

    .line 146
    .line 147
    :cond_6
    aput v1, v0, p3

    .line 148
    .line 149
    iget p1, p0, LW/l;->k:I

    .line 150
    .line 151
    shl-int p2, v4, p3

    .line 152
    .line 153
    or-int/2addr p1, p2

    .line 154
    iput p1, p0, LW/l;->k:I

    .line 155
    .line 156
    return-void
.end method

.method public isCapturedViewUnder(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, LW/l;->t:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2}, LW/l;->isViewUnder(Landroid/view/View;II)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isPointerDown(I)Z
    .locals 2

    .line 1
    iget v0, p0, LW/l;->k:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    shl-int p1, v1, p1

    .line 5
    .line 6
    and-int/2addr p1, v0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lt p2, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge p2, v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-lt p3, p2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-ge p3, p1, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_1
    return v0
.end method

.method public final j(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {p0, v2}, LW/l;->f(I)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    iget-object v5, p0, LW/l;->f:[F

    .line 28
    .line 29
    aput v3, v5, v2

    .line 30
    .line 31
    iget-object v3, p0, LW/l;->g:[F

    .line 32
    .line 33
    aput v4, v3, v2

    .line 34
    .line 35
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public final k(I)V
    .locals 2

    .line 1
    iget-object v0, p0, LW/l;->w:LW/j;

    .line 2
    .line 3
    iget-object v1, p0, LW/l;->v:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    iget v0, p0, LW/l;->a:I

    .line 9
    .line 10
    if-eq v0, p1, :cond_0

    .line 11
    .line 12
    iput p1, p0, LW/l;->a:I

    .line 13
    .line 14
    iget-object v0, p0, LW/l;->s:LW/k;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, LW/k;->onViewDragStateChanged(I)V

    .line 17
    .line 18
    .line 19
    iget p1, p0, LW/l;->a:I

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, LW/l;->t:Landroid/view/View;

    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final l(Landroid/view/View;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, LW/l;->t:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, LW/l;->c:I

    .line 7
    .line 8
    if-ne v0, p2, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, LW/l;->s:LW/k;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, LW/k;->tryCaptureView(Landroid/view/View;I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iput p2, p0, LW/l;->c:I

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, LW/l;->captureChildView(Landroid/view/View;I)V

    .line 24
    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, LW/l;->cancel()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v4, v0, LW/l;->l:Landroid/view/VelocityTracker;

    .line 19
    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iput-object v4, v0, LW/l;->l:Landroid/view/VelocityTracker;

    .line 27
    .line 28
    :cond_1
    iget-object v4, v0, LW/l;->l:Landroid/view/VelocityTracker;

    .line 29
    .line 30
    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    iget-object v5, v0, LW/l;->s:LW/k;

    .line 35
    .line 36
    if-eqz v2, :cond_18

    .line 37
    .line 38
    const/4 v6, 0x1

    .line 39
    if-eq v2, v6, :cond_16

    .line 40
    .line 41
    const/4 v7, 0x2

    .line 42
    if-eq v2, v7, :cond_b

    .line 43
    .line 44
    const/4 v7, 0x3

    .line 45
    if-eq v2, v7, :cond_9

    .line 46
    .line 47
    const/4 v7, 0x5

    .line 48
    if-eq v2, v7, :cond_7

    .line 49
    .line 50
    const/4 v5, 0x6

    .line 51
    if-eq v2, v5, :cond_2

    .line 52
    .line 53
    goto/16 :goto_6

    .line 54
    .line 55
    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    iget v3, v0, LW/l;->a:I

    .line 60
    .line 61
    if-ne v3, v6, :cond_6

    .line 62
    .line 63
    iget v3, v0, LW/l;->c:I

    .line 64
    .line 65
    if-ne v2, v3, :cond_6

    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    :goto_0
    const/4 v5, -0x1

    .line 72
    if-ge v4, v3, :cond_5

    .line 73
    .line 74
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    iget v7, v0, LW/l;->c:I

    .line 79
    .line 80
    if-ne v6, v7, :cond_3

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    float-to-int v7, v7

    .line 92
    float-to-int v8, v8

    .line 93
    invoke-virtual {v0, v7, v8}, LW/l;->findTopChildUnder(II)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    iget-object v8, v0, LW/l;->t:Landroid/view/View;

    .line 98
    .line 99
    if-ne v7, v8, :cond_4

    .line 100
    .line 101
    invoke-virtual {v0, v8, v6}, LW/l;->l(Landroid/view/View;I)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_4

    .line 106
    .line 107
    iget v1, v0, LW/l;->c:I

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_5
    move v1, v5

    .line 114
    :goto_2
    if-ne v1, v5, :cond_6

    .line 115
    .line 116
    invoke-virtual {v0}, LW/l;->g()V

    .line 117
    .line 118
    .line 119
    :cond_6
    invoke-virtual {v0, v2}, LW/l;->c(I)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_7
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-virtual {v0, v4, v1, v2}, LW/l;->i(FFI)V

    .line 136
    .line 137
    .line 138
    iget v3, v0, LW/l;->a:I

    .line 139
    .line 140
    if-nez v3, :cond_8

    .line 141
    .line 142
    float-to-int v3, v4

    .line 143
    float-to-int v1, v1

    .line 144
    invoke-virtual {v0, v3, v1}, LW/l;->findTopChildUnder(II)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, v1, v2}, LW/l;->l(Landroid/view/View;I)Z

    .line 149
    .line 150
    .line 151
    iget-object v1, v0, LW/l;->h:[I

    .line 152
    .line 153
    aget v1, v1, v2

    .line 154
    .line 155
    iget v3, v0, LW/l;->q:I

    .line 156
    .line 157
    and-int/2addr v1, v3

    .line 158
    if-eqz v1, :cond_19

    .line 159
    .line 160
    invoke-virtual {v5, v1, v2}, LW/k;->onEdgeTouched(II)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_8
    float-to-int v3, v4

    .line 165
    float-to-int v1, v1

    .line 166
    invoke-virtual {v0, v3, v1}, LW/l;->isCapturedViewUnder(II)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_19

    .line 171
    .line 172
    iget-object v1, v0, LW/l;->t:Landroid/view/View;

    .line 173
    .line 174
    invoke-virtual {v0, v1, v2}, LW/l;->l(Landroid/view/View;I)Z

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :cond_9
    iget v1, v0, LW/l;->a:I

    .line 179
    .line 180
    if-ne v1, v6, :cond_a

    .line 181
    .line 182
    iput-boolean v6, v0, LW/l;->u:Z

    .line 183
    .line 184
    iget-object v1, v0, LW/l;->t:Landroid/view/View;

    .line 185
    .line 186
    const/4 v2, 0x0

    .line 187
    invoke-virtual {v5, v1, v2, v2}, LW/k;->onViewReleased(Landroid/view/View;FF)V

    .line 188
    .line 189
    .line 190
    iput-boolean v4, v0, LW/l;->u:Z

    .line 191
    .line 192
    iget v1, v0, LW/l;->a:I

    .line 193
    .line 194
    if-ne v1, v6, :cond_a

    .line 195
    .line 196
    invoke-virtual {v0, v4}, LW/l;->k(I)V

    .line 197
    .line 198
    .line 199
    :cond_a
    invoke-virtual {v0}, LW/l;->cancel()V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :cond_b
    iget v2, v0, LW/l;->a:I

    .line 204
    .line 205
    if-ne v2, v6, :cond_11

    .line 206
    .line 207
    iget v2, v0, LW/l;->c:I

    .line 208
    .line 209
    invoke-virtual {v0, v2}, LW/l;->f(I)Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-nez v2, :cond_c

    .line 214
    .line 215
    goto/16 :goto_6

    .line 216
    .line 217
    :cond_c
    iget v2, v0, LW/l;->c:I

    .line 218
    .line 219
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    iget-object v4, v0, LW/l;->f:[F

    .line 232
    .line 233
    iget v6, v0, LW/l;->c:I

    .line 234
    .line 235
    aget v4, v4, v6

    .line 236
    .line 237
    sub-float/2addr v3, v4

    .line 238
    float-to-int v3, v3

    .line 239
    iget-object v4, v0, LW/l;->g:[F

    .line 240
    .line 241
    aget v4, v4, v6

    .line 242
    .line 243
    sub-float/2addr v2, v4

    .line 244
    float-to-int v2, v2

    .line 245
    iget-object v4, v0, LW/l;->t:Landroid/view/View;

    .line 246
    .line 247
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    add-int/2addr v4, v3

    .line 252
    iget-object v6, v0, LW/l;->t:Landroid/view/View;

    .line 253
    .line 254
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    add-int/2addr v6, v2

    .line 259
    iget-object v7, v0, LW/l;->t:Landroid/view/View;

    .line 260
    .line 261
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 262
    .line 263
    .line 264
    move-result v7

    .line 265
    iget-object v8, v0, LW/l;->t:Landroid/view/View;

    .line 266
    .line 267
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 268
    .line 269
    .line 270
    move-result v8

    .line 271
    if-eqz v3, :cond_d

    .line 272
    .line 273
    iget-object v9, v0, LW/l;->t:Landroid/view/View;

    .line 274
    .line 275
    invoke-virtual {v5, v9, v4, v3}, LW/k;->clampViewPositionHorizontal(Landroid/view/View;II)I

    .line 276
    .line 277
    .line 278
    move-result v4

    .line 279
    iget-object v9, v0, LW/l;->t:Landroid/view/View;

    .line 280
    .line 281
    sub-int v10, v4, v7

    .line 282
    .line 283
    invoke-static {v9, v10}, LM/p0;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 284
    .line 285
    .line 286
    :cond_d
    move v13, v4

    .line 287
    if-eqz v2, :cond_e

    .line 288
    .line 289
    iget-object v4, v0, LW/l;->t:Landroid/view/View;

    .line 290
    .line 291
    invoke-virtual {v5, v4, v6, v2}, LW/k;->clampViewPositionVertical(Landroid/view/View;II)I

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    iget-object v4, v0, LW/l;->t:Landroid/view/View;

    .line 296
    .line 297
    sub-int v5, v6, v8

    .line 298
    .line 299
    invoke-static {v4, v5}, LM/p0;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 300
    .line 301
    .line 302
    :cond_e
    move v14, v6

    .line 303
    if-nez v3, :cond_f

    .line 304
    .line 305
    if-eqz v2, :cond_10

    .line 306
    .line 307
    :cond_f
    sub-int v15, v13, v7

    .line 308
    .line 309
    sub-int v16, v14, v8

    .line 310
    .line 311
    iget-object v11, v0, LW/l;->s:LW/k;

    .line 312
    .line 313
    iget-object v12, v0, LW/l;->t:Landroid/view/View;

    .line 314
    .line 315
    invoke-virtual/range {v11 .. v16}, LW/k;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 316
    .line 317
    .line 318
    :cond_10
    invoke-virtual/range {p0 .. p1}, LW/l;->j(Landroid/view/MotionEvent;)V

    .line 319
    .line 320
    .line 321
    return-void

    .line 322
    :cond_11
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    :goto_3
    if-ge v4, v2, :cond_15

    .line 327
    .line 328
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    invoke-virtual {v0, v3}, LW/l;->f(I)Z

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    if-nez v5, :cond_12

    .line 337
    .line 338
    goto :goto_4

    .line 339
    :cond_12
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 344
    .line 345
    .line 346
    move-result v7

    .line 347
    iget-object v8, v0, LW/l;->d:[F

    .line 348
    .line 349
    aget v8, v8, v3

    .line 350
    .line 351
    sub-float v8, v5, v8

    .line 352
    .line 353
    iget-object v9, v0, LW/l;->e:[F

    .line 354
    .line 355
    aget v9, v9, v3

    .line 356
    .line 357
    sub-float v9, v7, v9

    .line 358
    .line 359
    invoke-virtual {v0, v8, v9, v3}, LW/l;->h(FFI)V

    .line 360
    .line 361
    .line 362
    iget v10, v0, LW/l;->a:I

    .line 363
    .line 364
    if-ne v10, v6, :cond_13

    .line 365
    .line 366
    goto :goto_5

    .line 367
    :cond_13
    float-to-int v5, v5

    .line 368
    float-to-int v7, v7

    .line 369
    invoke-virtual {v0, v5, v7}, LW/l;->findTopChildUnder(II)Landroid/view/View;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    invoke-virtual {v0, v5, v8, v9}, LW/l;->b(Landroid/view/View;FF)Z

    .line 374
    .line 375
    .line 376
    move-result v7

    .line 377
    if-eqz v7, :cond_14

    .line 378
    .line 379
    invoke-virtual {v0, v5, v3}, LW/l;->l(Landroid/view/View;I)Z

    .line 380
    .line 381
    .line 382
    move-result v3

    .line 383
    if-eqz v3, :cond_14

    .line 384
    .line 385
    goto :goto_5

    .line 386
    :cond_14
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 387
    .line 388
    goto :goto_3

    .line 389
    :cond_15
    :goto_5
    invoke-virtual/range {p0 .. p1}, LW/l;->j(Landroid/view/MotionEvent;)V

    .line 390
    .line 391
    .line 392
    return-void

    .line 393
    :cond_16
    iget v1, v0, LW/l;->a:I

    .line 394
    .line 395
    if-ne v1, v6, :cond_17

    .line 396
    .line 397
    invoke-virtual {v0}, LW/l;->g()V

    .line 398
    .line 399
    .line 400
    :cond_17
    invoke-virtual {v0}, LW/l;->cancel()V

    .line 401
    .line 402
    .line 403
    return-void

    .line 404
    :cond_18
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 409
    .line 410
    .line 411
    move-result v3

    .line 412
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    float-to-int v4, v2

    .line 417
    float-to-int v6, v3

    .line 418
    invoke-virtual {v0, v4, v6}, LW/l;->findTopChildUnder(II)Landroid/view/View;

    .line 419
    .line 420
    .line 421
    move-result-object v4

    .line 422
    invoke-virtual {v0, v2, v3, v1}, LW/l;->i(FFI)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0, v4, v1}, LW/l;->l(Landroid/view/View;I)Z

    .line 426
    .line 427
    .line 428
    iget-object v2, v0, LW/l;->h:[I

    .line 429
    .line 430
    aget v2, v2, v1

    .line 431
    .line 432
    iget v3, v0, LW/l;->q:I

    .line 433
    .line 434
    and-int/2addr v2, v3

    .line 435
    if-eqz v2, :cond_19

    .line 436
    .line 437
    invoke-virtual {v5, v2, v1}, LW/k;->onEdgeTouched(II)V

    .line 438
    .line 439
    .line 440
    :cond_19
    :goto_6
    return-void
.end method

.method public setEdgeSize(I)V
    .locals 0

    .line 1
    iput p1, p0, LW/l;->o:I

    .line 2
    .line 3
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 0

    .line 1
    iput p1, p0, LW/l;->q:I

    .line 2
    .line 3
    return-void
.end method

.method public setMinVelocity(F)V
    .locals 0

    .line 1
    iput p1, p0, LW/l;->n:F

    .line 2
    .line 3
    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, LW/l;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LW/l;->l:Landroid/view/VelocityTracker;

    .line 6
    .line 7
    iget v1, p0, LW/l;->c:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    float-to-int v0, v0

    .line 14
    iget-object v1, p0, LW/l;->l:Landroid/view/VelocityTracker;

    .line 15
    .line 16
    iget v2, p0, LW/l;->c:I

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    float-to-int v1, v1

    .line 23
    invoke-virtual {p0, p1, p2, v0, v1}, LW/l;->e(IIII)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string p2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    .line 31
    .line 32
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, LW/l;->cancel()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v4, v0, LW/l;->l:Landroid/view/VelocityTracker;

    .line 19
    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iput-object v4, v0, LW/l;->l:Landroid/view/VelocityTracker;

    .line 27
    .line 28
    :cond_1
    iget-object v4, v0, LW/l;->l:Landroid/view/VelocityTracker;

    .line 29
    .line 30
    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    const/4 v5, 0x2

    .line 35
    iget-object v7, v0, LW/l;->s:LW/k;

    .line 36
    .line 37
    if-eqz v2, :cond_f

    .line 38
    .line 39
    if-eq v2, v4, :cond_e

    .line 40
    .line 41
    if-eq v2, v5, :cond_5

    .line 42
    .line 43
    const/4 v8, 0x3

    .line 44
    if-eq v2, v8, :cond_e

    .line 45
    .line 46
    const/4 v8, 0x5

    .line 47
    if-eq v2, v8, :cond_3

    .line 48
    .line 49
    const/4 v5, 0x6

    .line 50
    if-eq v2, v5, :cond_2

    .line 51
    .line 52
    goto/16 :goto_4

    .line 53
    .line 54
    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {v0, v1}, LW/l;->c(I)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_4

    .line 62
    .line 63
    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-virtual {v0, v8, v1, v2}, LW/l;->i(FFI)V

    .line 76
    .line 77
    .line 78
    iget v3, v0, LW/l;->a:I

    .line 79
    .line 80
    if-nez v3, :cond_4

    .line 81
    .line 82
    iget-object v1, v0, LW/l;->h:[I

    .line 83
    .line 84
    aget v1, v1, v2

    .line 85
    .line 86
    iget v3, v0, LW/l;->q:I

    .line 87
    .line 88
    and-int/2addr v1, v3

    .line 89
    if-eqz v1, :cond_11

    .line 90
    .line 91
    invoke-virtual {v7, v1, v2}, LW/k;->onEdgeTouched(II)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_4

    .line 95
    .line 96
    :cond_4
    if-ne v3, v5, :cond_11

    .line 97
    .line 98
    float-to-int v3, v8

    .line 99
    float-to-int v1, v1

    .line 100
    invoke-virtual {v0, v3, v1}, LW/l;->findTopChildUnder(II)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iget-object v3, v0, LW/l;->t:Landroid/view/View;

    .line 105
    .line 106
    if-ne v1, v3, :cond_11

    .line 107
    .line 108
    invoke-virtual {v0, v1, v2}, LW/l;->l(Landroid/view/View;I)Z

    .line 109
    .line 110
    .line 111
    goto/16 :goto_4

    .line 112
    .line 113
    :cond_5
    iget-object v2, v0, LW/l;->d:[F

    .line 114
    .line 115
    if-eqz v2, :cond_11

    .line 116
    .line 117
    iget-object v2, v0, LW/l;->e:[F

    .line 118
    .line 119
    if-nez v2, :cond_6

    .line 120
    .line 121
    goto/16 :goto_4

    .line 122
    .line 123
    :cond_6
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    const/4 v3, 0x0

    .line 128
    :goto_0
    if-ge v3, v2, :cond_d

    .line 129
    .line 130
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    invoke-virtual {v0, v5}, LW/l;->f(I)Z

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    if-nez v8, :cond_7

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_7
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    iget-object v10, v0, LW/l;->d:[F

    .line 150
    .line 151
    aget v10, v10, v5

    .line 152
    .line 153
    sub-float v10, v8, v10

    .line 154
    .line 155
    iget-object v11, v0, LW/l;->e:[F

    .line 156
    .line 157
    aget v11, v11, v5

    .line 158
    .line 159
    sub-float v11, v9, v11

    .line 160
    .line 161
    float-to-int v8, v8

    .line 162
    float-to-int v9, v9

    .line 163
    invoke-virtual {v0, v8, v9}, LW/l;->findTopChildUnder(II)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    if-eqz v8, :cond_8

    .line 168
    .line 169
    invoke-virtual {v0, v8, v10, v11}, LW/l;->b(Landroid/view/View;FF)Z

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    if-eqz v9, :cond_8

    .line 174
    .line 175
    move v9, v4

    .line 176
    goto :goto_1

    .line 177
    :cond_8
    const/4 v9, 0x0

    .line 178
    :goto_1
    if-eqz v9, :cond_a

    .line 179
    .line 180
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 181
    .line 182
    .line 183
    move-result v12

    .line 184
    float-to-int v13, v10

    .line 185
    add-int v14, v12, v13

    .line 186
    .line 187
    invoke-virtual {v7, v8, v14, v13}, LW/k;->clampViewPositionHorizontal(Landroid/view/View;II)I

    .line 188
    .line 189
    .line 190
    move-result v13

    .line 191
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 192
    .line 193
    .line 194
    move-result v14

    .line 195
    float-to-int v15, v11

    .line 196
    add-int v6, v14, v15

    .line 197
    .line 198
    invoke-virtual {v7, v8, v6, v15}, LW/k;->clampViewPositionVertical(Landroid/view/View;II)I

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    invoke-virtual {v7, v8}, LW/k;->getViewHorizontalDragRange(Landroid/view/View;)I

    .line 203
    .line 204
    .line 205
    move-result v15

    .line 206
    invoke-virtual {v7, v8}, LW/k;->getViewVerticalDragRange(Landroid/view/View;)I

    .line 207
    .line 208
    .line 209
    move-result v17

    .line 210
    if-eqz v15, :cond_9

    .line 211
    .line 212
    if-lez v15, :cond_a

    .line 213
    .line 214
    if-ne v13, v12, :cond_a

    .line 215
    .line 216
    :cond_9
    if-eqz v17, :cond_d

    .line 217
    .line 218
    if-lez v17, :cond_a

    .line 219
    .line 220
    if-ne v6, v14, :cond_a

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_a
    invoke-virtual {v0, v10, v11, v5}, LW/l;->h(FFI)V

    .line 224
    .line 225
    .line 226
    iget v6, v0, LW/l;->a:I

    .line 227
    .line 228
    if-ne v6, v4, :cond_b

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_b
    if-eqz v9, :cond_c

    .line 232
    .line 233
    invoke-virtual {v0, v8, v5}, LW/l;->l(Landroid/view/View;I)Z

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-eqz v5, :cond_c

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_c
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 241
    .line 242
    goto :goto_0

    .line 243
    :cond_d
    :goto_3
    invoke-virtual/range {p0 .. p1}, LW/l;->j(Landroid/view/MotionEvent;)V

    .line 244
    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_e
    invoke-virtual {v0}, LW/l;->cancel()V

    .line 248
    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_f
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    const/4 v6, 0x0

    .line 260
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    invoke-virtual {v0, v2, v3, v1}, LW/l;->i(FFI)V

    .line 265
    .line 266
    .line 267
    float-to-int v2, v2

    .line 268
    float-to-int v3, v3

    .line 269
    invoke-virtual {v0, v2, v3}, LW/l;->findTopChildUnder(II)Landroid/view/View;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    iget-object v3, v0, LW/l;->t:Landroid/view/View;

    .line 274
    .line 275
    if-ne v2, v3, :cond_10

    .line 276
    .line 277
    iget v3, v0, LW/l;->a:I

    .line 278
    .line 279
    if-ne v3, v5, :cond_10

    .line 280
    .line 281
    invoke-virtual {v0, v2, v1}, LW/l;->l(Landroid/view/View;I)Z

    .line 282
    .line 283
    .line 284
    :cond_10
    iget-object v2, v0, LW/l;->h:[I

    .line 285
    .line 286
    aget v2, v2, v1

    .line 287
    .line 288
    iget v3, v0, LW/l;->q:I

    .line 289
    .line 290
    and-int/2addr v2, v3

    .line 291
    if-eqz v2, :cond_11

    .line 292
    .line 293
    invoke-virtual {v7, v2, v1}, LW/k;->onEdgeTouched(II)V

    .line 294
    .line 295
    .line 296
    :cond_11
    :goto_4
    iget v1, v0, LW/l;->a:I

    .line 297
    .line 298
    if-ne v1, v4, :cond_12

    .line 299
    .line 300
    return v4

    .line 301
    :cond_12
    const/16 v16, 0x0

    .line 302
    .line 303
    return v16
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 0

    .line 1
    iput-object p1, p0, LW/l;->t:Landroid/view/View;

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    iput p1, p0, LW/l;->c:I

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p2, p3, p1, p1}, LW/l;->e(IIII)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget p2, p0, LW/l;->a:I

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, LW/l;->t:Landroid/view/View;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    iput-object p2, p0, LW/l;->t:Landroid/view/View;

    .line 23
    .line 24
    :cond_0
    return p1
.end method
