.class public final Lh4/w;
.super Lh4/b;
.source "SourceFile"


# static fields
.field public static final B:Ljava/lang/ThreadLocal;

.field public static final C:Lh4/p;

.field public static final D:Lh4/q;

.field public static final E:Lh4/r;

.field public static final F:Lh4/s;

.field public static final G:Lh4/t;

.field public static final H:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field public static final I:J


# instance fields
.field public A:Ljava/util/HashMap;

.field public e:J

.field public f:J

.field public j:Z

.field public m:I

.field public n:F

.field public p:Z

.field public q:J

.field public r:I

.field public s:Z

.field public t:Z

.field public u:J

.field public final v:J

.field public final w:I

.field public final x:Landroid/view/animation/Interpolator;

.field public y:Ljava/util/ArrayList;

.field public z:[Lh4/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lh4/w;->B:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    new-instance v0, Lh4/p;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lh4/w;->C:Lh4/p;

    .line 14
    .line 15
    new-instance v0, Lh4/q;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lh4/w;->D:Lh4/q;

    .line 21
    .line 22
    new-instance v0, Lh4/r;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lh4/w;->E:Lh4/r;

    .line 28
    .line 29
    new-instance v0, Lh4/s;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lh4/w;->F:Lh4/s;

    .line 35
    .line 36
    new-instance v0, Lh4/t;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lh4/w;->G:Lh4/t;

    .line 42
    .line 43
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 44
    .line 45
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lh4/w;->H:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 49
    .line 50
    new-instance v0, Lh4/f;

    .line 51
    .line 52
    invoke-direct {v0}, Lh4/f;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v0, Lh4/d;

    .line 56
    .line 57
    invoke-direct {v0}, Lh4/d;-><init>()V

    .line 58
    .line 59
    .line 60
    const-wide/16 v0, 0xa

    .line 61
    .line 62
    sput-wide v0, Lh4/w;->I:J

    .line 63
    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lh4/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lh4/w;->f:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lh4/w;->j:Z

    .line 10
    .line 11
    iput v0, p0, Lh4/w;->m:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput v1, p0, Lh4/w;->n:F

    .line 15
    .line 16
    iput-boolean v0, p0, Lh4/w;->p:Z

    .line 17
    .line 18
    iput v0, p0, Lh4/w;->r:I

    .line 19
    .line 20
    iput-boolean v0, p0, Lh4/w;->s:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lh4/w;->t:Z

    .line 23
    .line 24
    const-wide/16 v0, 0x12c

    .line 25
    .line 26
    iput-wide v0, p0, Lh4/w;->u:J

    .line 27
    .line 28
    const-wide/16 v0, 0x0

    .line 29
    .line 30
    iput-wide v0, p0, Lh4/w;->v:J

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lh4/w;->w:I

    .line 34
    .line 35
    sget-object v0, Lh4/w;->H:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 36
    .line 37
    iput-object v0, p0, Lh4/w;->x:Landroid/view/animation/Interpolator;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lh4/w;->y:Ljava/util/ArrayList;

    .line 41
    .line 42
    return-void
.end method

.method public static a(Lh4/w;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lh4/w;->d()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lh4/w;->C:Lh4/p;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget-wide v0, p0, Lh4/w;->v:J

    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    cmp-long v0, v0, v2

    .line 20
    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lh4/b;->b:Ljava/util/ArrayList;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x0

    .line 38
    :goto_0
    if-ge v2, v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lh4/a;

    .line 45
    .line 46
    invoke-interface {v3, p0}, Lh4/a;->onAnimationStart(Lh4/b;)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public static varargs ofFloat([F)Lh4/w;
    .locals 1

    .line 1
    new-instance v0, Lh4/w;

    .line 2
    .line 3
    invoke-direct {v0}, Lh4/w;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lh4/w;->setFloatValues([F)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static varargs ofInt([I)Lh4/w;
    .locals 1

    .line 1
    new-instance v0, Lh4/w;

    .line 2
    .line 3
    invoke-direct {v0}, Lh4/w;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lh4/w;->setIntValues([I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public addUpdateListener(Lh4/v;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh4/w;->y:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lh4/w;->y:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lh4/w;->y:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final b(J)Z
    .locals 10

    .line 1
    iget v0, p0, Lh4/w;->r:I

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iput v3, p0, Lh4/w;->r:I

    .line 9
    .line 10
    iget-wide v4, p0, Lh4/w;->f:J

    .line 11
    .line 12
    cmp-long v0, v4, v1

    .line 13
    .line 14
    if-gez v0, :cond_0

    .line 15
    .line 16
    iput-wide p1, p0, Lh4/w;->e:J

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sub-long v4, p1, v4

    .line 20
    .line 21
    iput-wide v4, p0, Lh4/w;->e:J

    .line 22
    .line 23
    const-wide/16 v4, -0x1

    .line 24
    .line 25
    iput-wide v4, p0, Lh4/w;->f:J

    .line 26
    .line 27
    :cond_1
    :goto_0
    iget v0, p0, Lh4/w;->r:I

    .line 28
    .line 29
    const/4 v4, 0x2

    .line 30
    const/4 v5, 0x0

    .line 31
    if-eq v0, v3, :cond_2

    .line 32
    .line 33
    if-eq v0, v4, :cond_2

    .line 34
    .line 35
    return v5

    .line 36
    :cond_2
    iget-wide v6, p0, Lh4/w;->u:J

    .line 37
    .line 38
    cmp-long v0, v6, v1

    .line 39
    .line 40
    const/high16 v1, 0x3f800000    # 1.0f

    .line 41
    .line 42
    if-lez v0, :cond_3

    .line 43
    .line 44
    iget-wide v8, p0, Lh4/w;->e:J

    .line 45
    .line 46
    sub-long/2addr p1, v8

    .line 47
    long-to-float p1, p1

    .line 48
    long-to-float p2, v6

    .line 49
    div-float/2addr p1, p2

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    move p1, v1

    .line 52
    :goto_1
    cmpl-float p2, p1, v1

    .line 53
    .line 54
    if-ltz p2, :cond_7

    .line 55
    .line 56
    iget p2, p0, Lh4/w;->m:I

    .line 57
    .line 58
    if-ltz p2, :cond_4

    .line 59
    .line 60
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    goto :goto_3

    .line 65
    :cond_4
    iget-object p2, p0, Lh4/b;->b:Ljava/util/ArrayList;

    .line 66
    .line 67
    if-eqz p2, :cond_5

    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    move v0, v5

    .line 74
    :goto_2
    if-ge v0, p2, :cond_5

    .line 75
    .line 76
    iget-object v2, p0, Lh4/b;->b:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Lh4/a;

    .line 83
    .line 84
    invoke-interface {v2, p0}, Lh4/a;->onAnimationRepeat(Lh4/b;)V

    .line 85
    .line 86
    .line 87
    add-int/lit8 v0, v0, 0x1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    iget p2, p0, Lh4/w;->w:I

    .line 91
    .line 92
    if-ne p2, v4, :cond_6

    .line 93
    .line 94
    iget-boolean p2, p0, Lh4/w;->j:Z

    .line 95
    .line 96
    xor-int/2addr p2, v3

    .line 97
    iput-boolean p2, p0, Lh4/w;->j:Z

    .line 98
    .line 99
    :cond_6
    iget p2, p0, Lh4/w;->m:I

    .line 100
    .line 101
    float-to-int v0, p1

    .line 102
    add-int/2addr p2, v0

    .line 103
    iput p2, p0, Lh4/w;->m:I

    .line 104
    .line 105
    rem-float/2addr p1, v1

    .line 106
    iget-wide v2, p0, Lh4/w;->e:J

    .line 107
    .line 108
    iget-wide v6, p0, Lh4/w;->u:J

    .line 109
    .line 110
    add-long/2addr v2, v6

    .line 111
    iput-wide v2, p0, Lh4/w;->e:J

    .line 112
    .line 113
    :cond_7
    move v3, v5

    .line 114
    :goto_3
    iget-boolean p2, p0, Lh4/w;->j:Z

    .line 115
    .line 116
    if-eqz p2, :cond_8

    .line 117
    .line 118
    sub-float p1, v1, p1

    .line 119
    .line 120
    :cond_8
    iget-object p2, p0, Lh4/w;->x:Landroid/view/animation/Interpolator;

    .line 121
    .line 122
    invoke-interface {p2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    iput p1, p0, Lh4/w;->n:F

    .line 127
    .line 128
    iget-object p2, p0, Lh4/w;->z:[Lh4/n;

    .line 129
    .line 130
    array-length p2, p2

    .line 131
    move v0, v5

    .line 132
    :goto_4
    if-ge v0, p2, :cond_9

    .line 133
    .line 134
    iget-object v1, p0, Lh4/w;->z:[Lh4/n;

    .line 135
    .line 136
    aget-object v1, v1, v0

    .line 137
    .line 138
    invoke-virtual {v1, p1}, Lh4/n;->a(F)V

    .line 139
    .line 140
    .line 141
    add-int/lit8 v0, v0, 0x1

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_9
    iget-object p1, p0, Lh4/w;->y:Ljava/util/ArrayList;

    .line 145
    .line 146
    if-eqz p1, :cond_a

    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    :goto_5
    if-ge v5, p1, :cond_a

    .line 153
    .line 154
    iget-object p2, p0, Lh4/w;->y:Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    check-cast p2, Lh4/v;

    .line 161
    .line 162
    invoke-interface {p2, p0}, Lh4/v;->onAnimationUpdate(Lh4/w;)V

    .line 163
    .line 164
    .line 165
    add-int/lit8 v5, v5, 0x1

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_a
    return v3
.end method

.method public final c()V
    .locals 5

    .line 1
    sget-object v0, Lh4/w;->C:Lh4/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    sget-object v0, Lh4/w;->D:Lh4/q;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    sget-object v0, Lh4/w;->E:Lh4/r;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lh4/w;->r:I

    .line 36
    .line 37
    iget-boolean v1, p0, Lh4/w;->s:Z

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    iget-object v1, p0, Lh4/b;->b:Ljava/util/ArrayList;

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    move v3, v0

    .line 56
    :goto_0
    if-ge v3, v2, :cond_0

    .line 57
    .line 58
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Lh4/a;

    .line 63
    .line 64
    invoke-interface {v4, p0}, Lh4/a;->onAnimationEnd(Lh4/b;)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    iput-boolean v0, p0, Lh4/w;->s:Z

    .line 71
    .line 72
    return-void
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget v0, p0, Lh4/w;->r:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lh4/w;->D:Lh4/q;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    sget-object v0, Lh4/w;->E:Lh4/r;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void

    .line 35
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lh4/w;->s:Z

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lh4/b;->b:Ljava/util/ArrayList;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lh4/a;

    .line 64
    .line 65
    invoke-interface {v1, p0}, Lh4/a;->onAnimationCancel(Lh4/b;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {p0}, Lh4/w;->c()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public clone()Lh4/w;
    .locals 7

    .line 2
    invoke-super {p0}, Lh4/b;->clone()Lh4/b;

    move-result-object v0

    check-cast v0, Lh4/w;

    .line 3
    iget-object v1, p0, Lh4/w;->y:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lh4/w;->y:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    .line 6
    iget-object v5, v0, Lh4/w;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, -0x1

    .line 7
    iput-wide v3, v0, Lh4/w;->f:J

    .line 8
    iput-boolean v2, v0, Lh4/w;->j:Z

    .line 9
    iput v2, v0, Lh4/w;->m:I

    .line 10
    iput-boolean v2, v0, Lh4/w;->t:Z

    .line 11
    iput v2, v0, Lh4/w;->r:I

    .line 12
    iput-boolean v2, v0, Lh4/w;->p:Z

    .line 13
    iget-object v1, p0, Lh4/w;->z:[Lh4/n;

    if-eqz v1, :cond_1

    .line 14
    array-length v3, v1

    .line 15
    new-array v4, v3, [Lh4/n;

    iput-object v4, v0, Lh4/w;->z:[Lh4/n;

    .line 16
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, v0, Lh4/w;->A:Ljava/util/HashMap;

    :goto_1
    if-ge v2, v3, :cond_1

    .line 17
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lh4/n;->clone()Lh4/n;

    move-result-object v4

    .line 18
    iget-object v5, v0, Lh4/w;->z:[Lh4/n;

    aput-object v4, v5, v2

    .line 19
    iget-object v5, v0, Lh4/w;->A:Ljava/util/HashMap;

    invoke-virtual {v4}, Lh4/n;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lh4/w;->clone()Lh4/w;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lh4/w;->t:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lh4/w;->z:[Lh4/n;

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_4

    .line 10
    .line 11
    iget-object v2, p0, Lh4/w;->z:[Lh4/n;

    .line 12
    .line 13
    aget-object v2, v2, v1

    .line 14
    .line 15
    iget-object v3, v2, Lh4/n;->m:Lh4/o;

    .line 16
    .line 17
    if-nez v3, :cond_2

    .line 18
    .line 19
    iget-object v3, v2, Lh4/n;->e:Ljava/lang/Class;

    .line 20
    .line 21
    const-class v4, Ljava/lang/Integer;

    .line 22
    .line 23
    if-ne v3, v4, :cond_0

    .line 24
    .line 25
    sget-object v3, Lh4/n;->n:Lh4/f;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const-class v4, Ljava/lang/Float;

    .line 29
    .line 30
    if-ne v3, v4, :cond_1

    .line 31
    .line 32
    sget-object v3, Lh4/n;->p:Lh4/d;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v3, 0x0

    .line 36
    :goto_1
    iput-object v3, v2, Lh4/n;->m:Lh4/o;

    .line 37
    .line 38
    :cond_2
    iget-object v3, v2, Lh4/n;->m:Lh4/o;

    .line 39
    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    iget-object v2, v2, Lh4/n;->f:Lh4/k;

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Lh4/k;->setEvaluator(Lh4/o;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lh4/w;->t:Z

    .line 52
    .line 53
    :cond_5
    return-void
.end method

.method public getAnimatedFraction()F
    .locals 1

    .line 1
    iget v0, p0, Lh4/w;->n:F

    .line 2
    .line 3
    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lh4/w;->z:[Lh4/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aget-object v0, v0, v1

    .line 10
    .line 11
    invoke-virtual {v0}, Lh4/n;->b()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public getCurrentPlayTime()J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lh4/w;->t:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lh4/w;->r:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-wide v2, p0, Lh4/w;->e:J

    .line 15
    .line 16
    sub-long/2addr v0, v2

    .line 17
    return-wide v0

    .line 18
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    return-wide v0
.end method

.method public setCurrentPlayTime(J)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lh4/w;->d()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iget v2, p0, Lh4/w;->r:I

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-eq v2, v3, :cond_0

    .line 12
    .line 13
    iput-wide p1, p0, Lh4/w;->f:J

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    iput v2, p0, Lh4/w;->r:I

    .line 17
    .line 18
    :cond_0
    sub-long p1, v0, p1

    .line 19
    .line 20
    iput-wide p1, p0, Lh4/w;->e:J

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Lh4/w;->b(J)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setDuration(J)Lh4/w;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lh4/w;->u:J

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v1, "Animators cannot have negative duration: "

    .line 13
    .line 14
    invoke-static {v1, p1, p2}, LA/i;->i(Ljava/lang/String;J)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public varargs setFloatValues([F)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object v1, p0, Lh4/w;->z:[Lh4/n;

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    array-length v2, v1

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    aget-object v1, v1, v0

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lh4/n;->setFloatValues([F)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    :goto_0
    const-string v1, ""

    .line 23
    .line 24
    invoke-static {v1, p1}, Lh4/n;->ofFloat(Ljava/lang/String;[F)Lh4/n;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v1, 0x1

    .line 29
    new-array v1, v1, [Lh4/n;

    .line 30
    .line 31
    aput-object p1, v1, v0

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lh4/w;->setValues([Lh4/n;)V

    .line 34
    .line 35
    .line 36
    :goto_1
    iput-boolean v0, p0, Lh4/w;->t:Z

    .line 37
    .line 38
    :cond_3
    :goto_2
    return-void
.end method

.method public varargs setIntValues([I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object v1, p0, Lh4/w;->z:[Lh4/n;

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    array-length v2, v1

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    aget-object v1, v1, v0

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lh4/n;->setIntValues([I)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    :goto_0
    const-string v1, ""

    .line 23
    .line 24
    invoke-static {v1, p1}, Lh4/n;->ofInt(Ljava/lang/String;[I)Lh4/n;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v1, 0x1

    .line 29
    new-array v1, v1, [Lh4/n;

    .line 30
    .line 31
    aput-object p1, v1, v0

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lh4/w;->setValues([Lh4/n;)V

    .line 34
    .line 35
    .line 36
    :goto_1
    iput-boolean v0, p0, Lh4/w;->t:Z

    .line 37
    .line 38
    :cond_3
    :goto_2
    return-void
.end method

.method public varargs setValues([Lh4/n;)V
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    iput-object p1, p0, Lh4/w;->z:[Lh4/n;

    .line 3
    .line 4
    new-instance v1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lh4/w;->A:Ljava/util/HashMap;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    if-ge v2, v0, :cond_0

    .line 14
    .line 15
    aget-object v3, p1, v2

    .line 16
    .line 17
    iget-object v4, p0, Lh4/w;->A:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {v3}, Lh4/n;->getPropertyName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iput-boolean v1, p0, Lh4/w;->t:Z

    .line 30
    .line 31
    return-void
.end method

.method public start()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lh4/w;->j:Z

    .line 9
    .line 10
    iput v0, p0, Lh4/w;->m:I

    .line 11
    .line 12
    iput v0, p0, Lh4/w;->r:I

    .line 13
    .line 14
    iput-boolean v0, p0, Lh4/w;->p:Z

    .line 15
    .line 16
    sget-object v1, Lh4/w;->D:Lh4/q;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-wide v1, p0, Lh4/w;->v:J

    .line 28
    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    cmp-long v1, v1, v3

    .line 32
    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Lh4/w;->getCurrentPlayTime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    invoke-virtual {p0, v1, v2}, Lh4/w;->setCurrentPlayTime(J)V

    .line 40
    .line 41
    .line 42
    iput v0, p0, Lh4/w;->r:I

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lh4/w;->s:Z

    .line 46
    .line 47
    iget-object v1, p0, Lh4/b;->b:Ljava/util/ArrayList;

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    move v3, v0

    .line 62
    :goto_0
    if-ge v3, v2, :cond_0

    .line 63
    .line 64
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Lh4/a;

    .line 69
    .line 70
    invoke-interface {v4, p0}, Lh4/a;->onAnimationStart(Lh4/b;)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    sget-object v1, Lh4/w;->B:Ljava/lang/ThreadLocal;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Lh4/u;

    .line 83
    .line 84
    if-nez v2, :cond_1

    .line 85
    .line 86
    new-instance v2, Lh4/u;

    .line 87
    .line 88
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_1
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_2
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 99
    .line 100
    const-string v1, "Animators may only be run on Looper threads"

    .line 101
    .line 102
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ValueAnimator@"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lh4/w;->z:[Lh4/n;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    iget-object v2, p0, Lh4/w;->z:[Lh4/n;

    .line 29
    .line 30
    array-length v2, v2

    .line 31
    if-ge v1, v2, :cond_0

    .line 32
    .line 33
    const-string v2, "\n    "

    .line 34
    .line 35
    invoke-static {v0, v2}, LA/i;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v2, p0, Lh4/w;->z:[Lh4/n;

    .line 40
    .line 41
    aget-object v2, v2, v1

    .line 42
    .line 43
    invoke-virtual {v2}, Lh4/n;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-object v0
.end method
