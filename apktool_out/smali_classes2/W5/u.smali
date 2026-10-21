.class public final LW5/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:LW5/s;

.field public static final f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final h:LW5/G;


# instance fields
.field private volatile _next:Ljava/lang/Object;

.field private volatile _state:J

.field public final a:I

.field public final b:Z

.field public final c:I

.field public final d:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LW5/s;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, LW5/s;-><init>(Lkotlin/jvm/internal/g;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, LW5/u;->e:LW5/s;

    .line 8
    .line 9
    const-class v0, Ljava/lang/Object;

    .line 10
    .line 11
    const-string v1, "_next"

    .line 12
    .line 13
    const-class v2, LW5/u;

    .line 14
    .line 15
    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, LW5/u;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    .line 21
    const-string v0, "_state"

    .line 22
    .line 23
    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, LW5/u;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 28
    .line 29
    new-instance v0, LW5/G;

    .line 30
    .line 31
    const-string v1, "REMOVE_FROZEN"

    .line 32
    .line 33
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, LW5/u;->h:LW5/G;

    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LW5/u;->a:I

    .line 5
    .line 6
    iput-boolean p2, p0, LW5/u;->b:Z

    .line 7
    .line 8
    add-int/lit8 p2, p1, -0x1

    .line 9
    .line 10
    iput p2, p0, LW5/u;->c:I

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, LW5/u;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 18
    .line 19
    const v0, 0x3fffffff    # 1.9999999f

    .line 20
    .line 21
    .line 22
    const-string v1, "Check failed."

    .line 23
    .line 24
    if-gt p2, v0, :cond_1

    .line 25
    .line 26
    and-int/2addr p1, p2

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method


# virtual methods
.method public final addLast(Ljava/lang/Object;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1
    :cond_0
    sget-object v0, LW5/u;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v3

    .line 7
    const-wide/high16 v1, 0x3000000000000000L    # 1.727233711018889E-77

    .line 8
    .line 9
    and-long/2addr v1, v3

    .line 10
    const-wide/16 v7, 0x0

    .line 11
    .line 12
    cmp-long v1, v1, v7

    .line 13
    .line 14
    sget-object v2, LW5/u;->e:LW5/s;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2, v3, v4}, LW5/s;->addFailReason(J)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_1
    const-wide/32 v5, 0x3fffffff

    .line 24
    .line 25
    .line 26
    and-long/2addr v5, v3

    .line 27
    long-to-int v1, v5

    .line 28
    const-wide v5, 0xfffffffc0000000L

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    and-long/2addr v5, v3

    .line 34
    const/16 v9, 0x1e

    .line 35
    .line 36
    shr-long/2addr v5, v9

    .line 37
    long-to-int v9, v5

    .line 38
    add-int/lit8 v5, v9, 0x2

    .line 39
    .line 40
    iget v10, p0, LW5/u;->c:I

    .line 41
    .line 42
    and-int/2addr v5, v10

    .line 43
    and-int v6, v1, v10

    .line 44
    .line 45
    const/4 v11, 0x1

    .line 46
    if-ne v5, v6, :cond_2

    .line 47
    .line 48
    return v11

    .line 49
    :cond_2
    iget-boolean v5, p0, LW5/u;->b:Z

    .line 50
    .line 51
    const v6, 0x3fffffff    # 1.9999999f

    .line 52
    .line 53
    .line 54
    iget-object v12, p0, LW5/u;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 55
    .line 56
    if-nez v5, :cond_4

    .line 57
    .line 58
    and-int v5, v9, v10

    .line 59
    .line 60
    invoke-virtual {v12, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    if-eqz v5, :cond_4

    .line 65
    .line 66
    const/16 v0, 0x400

    .line 67
    .line 68
    iget v2, p0, LW5/u;->a:I

    .line 69
    .line 70
    if-lt v2, v0, :cond_3

    .line 71
    .line 72
    sub-int/2addr v9, v1

    .line 73
    and-int v0, v9, v6

    .line 74
    .line 75
    shr-int/lit8 v1, v2, 0x1

    .line 76
    .line 77
    if-le v0, v1, :cond_0

    .line 78
    .line 79
    :cond_3
    return v11

    .line 80
    :cond_4
    add-int/lit8 v1, v9, 0x1

    .line 81
    .line 82
    and-int/2addr v1, v6

    .line 83
    move v5, v1

    .line 84
    sget-object v1, LW5/u;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 85
    .line 86
    invoke-virtual {v2, v3, v4, v5}, LW5/s;->updateTail(JI)J

    .line 87
    .line 88
    .line 89
    move-result-wide v5

    .line 90
    move-object v2, p0

    .line 91
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_0

    .line 96
    .line 97
    and-int v1, v9, v10

    .line 98
    .line 99
    invoke-virtual {v12, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    move-object v1, p0

    .line 103
    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 104
    .line 105
    .line 106
    move-result-wide v2

    .line 107
    const-wide/high16 v4, 0x1000000000000000L

    .line 108
    .line 109
    and-long/2addr v2, v4

    .line 110
    cmp-long v2, v2, v7

    .line 111
    .line 112
    if-eqz v2, :cond_7

    .line 113
    .line 114
    invoke-virtual {v1}, LW5/u;->next()LW5/u;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    iget-object v2, v1, LW5/u;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 119
    .line 120
    iget v3, v1, LW5/u;->c:I

    .line 121
    .line 122
    and-int/2addr v3, v9

    .line 123
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    instance-of v5, v4, LW5/t;

    .line 128
    .line 129
    if-eqz v5, :cond_6

    .line 130
    .line 131
    check-cast v4, LW5/t;

    .line 132
    .line 133
    iget v4, v4, LW5/t;->a:I

    .line 134
    .line 135
    if-ne v4, v9, :cond_6

    .line 136
    .line 137
    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_6
    const/4 v1, 0x0

    .line 142
    :goto_0
    if-nez v1, :cond_5

    .line 143
    .line 144
    :cond_7
    const/4 p1, 0x0

    .line 145
    return p1
.end method

.method public final close()Z
    .locals 12

    .line 1
    :cond_0
    sget-object v0, LW5/u;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    const-wide/high16 v4, 0x2000000000000000L

    .line 8
    .line 9
    and-long v6, v2, v4

    .line 10
    .line 11
    const-wide/16 v8, 0x0

    .line 12
    .line 13
    cmp-long v1, v6, v8

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    return v6

    .line 19
    :cond_1
    const-wide/high16 v10, 0x1000000000000000L

    .line 20
    .line 21
    and-long/2addr v10, v2

    .line 22
    cmp-long v1, v10, v8

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    return v0

    .line 28
    :cond_2
    or-long/2addr v4, v2

    .line 29
    move-object v1, p0

    .line 30
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    return v6
.end method

.method public final getSize()I
    .locals 5

    .line 1
    sget-object v0, LW5/u;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/32 v2, 0x3fffffff

    .line 8
    .line 9
    .line 10
    and-long/2addr v2, v0

    .line 11
    long-to-int v2, v2

    .line 12
    const-wide v3, 0xfffffffc0000000L

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    and-long/2addr v0, v3

    .line 18
    const/16 v3, 0x1e

    .line 19
    .line 20
    shr-long/2addr v0, v3

    .line 21
    long-to-int v0, v0

    .line 22
    sub-int/2addr v0, v2

    .line 23
    const v1, 0x3fffffff    # 1.9999999f

    .line 24
    .line 25
    .line 26
    and-int/2addr v0, v1

    .line 27
    return v0
.end method

.method public final isEmpty()Z
    .locals 5

    .line 1
    sget-object v0, LW5/u;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/32 v2, 0x3fffffff

    .line 8
    .line 9
    .line 10
    and-long/2addr v2, v0

    .line 11
    long-to-int v2, v2

    .line 12
    const-wide v3, 0xfffffffc0000000L

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    and-long/2addr v0, v3

    .line 18
    const/16 v3, 0x1e

    .line 19
    .line 20
    shr-long/2addr v0, v3

    .line 21
    long-to-int v0, v0

    .line 22
    if-ne v2, v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return v0
.end method

.method public final next()LW5/u;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LW5/u;"
        }
    .end annotation

    .line 1
    :cond_0
    sget-object v0, LW5/u;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    const-wide/high16 v6, 0x1000000000000000L

    .line 8
    .line 9
    and-long v4, v2, v6

    .line 10
    .line 11
    const-wide/16 v8, 0x0

    .line 12
    .line 13
    cmp-long v1, v4, v8

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    move-object v1, p0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    or-long v4, v2, v6

    .line 20
    .line 21
    move-object v1, p0

    .line 22
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    move-wide v2, v4

    .line 29
    :goto_0
    sget-object v4, LW5/u;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 30
    .line 31
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    check-cast v5, LW5/u;

    .line 36
    .line 37
    if-eqz v5, :cond_2

    .line 38
    .line 39
    return-object v5

    .line 40
    :cond_2
    new-instance v5, LW5/u;

    .line 41
    .line 42
    iget v8, v1, LW5/u;->a:I

    .line 43
    .line 44
    mul-int/lit8 v8, v8, 0x2

    .line 45
    .line 46
    iget-boolean v9, v1, LW5/u;->b:Z

    .line 47
    .line 48
    invoke-direct {v5, v8, v9}, LW5/u;-><init>(IZ)V

    .line 49
    .line 50
    .line 51
    const-wide/32 v8, 0x3fffffff

    .line 52
    .line 53
    .line 54
    and-long/2addr v8, v2

    .line 55
    long-to-int v8, v8

    .line 56
    const-wide v9, 0xfffffffc0000000L

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    and-long/2addr v9, v2

    .line 62
    const/16 v11, 0x1e

    .line 63
    .line 64
    shr-long/2addr v9, v11

    .line 65
    long-to-int v9, v9

    .line 66
    :goto_1
    iget v10, v1, LW5/u;->c:I

    .line 67
    .line 68
    and-int v11, v8, v10

    .line 69
    .line 70
    and-int/2addr v10, v9

    .line 71
    if-eq v11, v10, :cond_4

    .line 72
    .line 73
    iget-object v10, v1, LW5/u;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 74
    .line 75
    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    if-nez v10, :cond_3

    .line 80
    .line 81
    new-instance v10, LW5/t;

    .line 82
    .line 83
    invoke-direct {v10, v8}, LW5/t;-><init>(I)V

    .line 84
    .line 85
    .line 86
    :cond_3
    iget-object v11, v5, LW5/u;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 87
    .line 88
    iget v12, v5, LW5/u;->c:I

    .line 89
    .line 90
    and-int/2addr v12, v8

    .line 91
    invoke-virtual {v11, v12, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    add-int/lit8 v8, v8, 0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    sget-object v8, LW5/u;->e:LW5/s;

    .line 98
    .line 99
    invoke-virtual {v8, v2, v3, v6, v7}, LW5/s;->wo(JJ)J

    .line 100
    .line 101
    .line 102
    move-result-wide v8

    .line 103
    invoke-virtual {v0, v5, v8, v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    .line 104
    .line 105
    .line 106
    :cond_5
    const/4 v8, 0x0

    .line 107
    invoke-virtual {v4, p0, v8, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-eqz v8, :cond_6

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_6
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    if-eqz v8, :cond_5

    .line 119
    .line 120
    goto :goto_0
.end method

.method public final removeFirstOrNull()Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    :cond_0
    sget-object v0, LW5/u;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const-wide/high16 v6, 0x1000000000000000L

    .line 10
    .line 11
    and-long v4, v2, v6

    .line 12
    .line 13
    const-wide/16 v8, 0x0

    .line 14
    .line 15
    cmp-long v0, v4, v8

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sget-object v0, LW5/u;->h:LW5/G;

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    const-wide/32 v10, 0x3fffffff

    .line 23
    .line 24
    .line 25
    and-long v4, v2, v10

    .line 26
    .line 27
    long-to-int v12, v4

    .line 28
    const-wide v4, 0xfffffffc0000000L

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    and-long/2addr v4, v2

    .line 34
    const/16 v0, 0x1e

    .line 35
    .line 36
    shr-long/2addr v4, v0

    .line 37
    long-to-int v0, v4

    .line 38
    iget v13, v1, LW5/u;->c:I

    .line 39
    .line 40
    and-int/2addr v0, v13

    .line 41
    and-int v4, v12, v13

    .line 42
    .line 43
    const/4 v14, 0x0

    .line 44
    if-ne v0, v4, :cond_2

    .line 45
    .line 46
    return-object v14

    .line 47
    :cond_2
    iget-object v15, v1, LW5/u;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 48
    .line 49
    and-int v0, v12, v13

    .line 50
    .line 51
    invoke-virtual {v15, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-boolean v4, v1, LW5/u;->b:Z

    .line 56
    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    if-eqz v4, :cond_0

    .line 60
    .line 61
    return-object v14

    .line 62
    :cond_3
    instance-of v5, v0, LW5/t;

    .line 63
    .line 64
    if-eqz v5, :cond_4

    .line 65
    .line 66
    return-object v14

    .line 67
    :cond_4
    add-int/lit8 v5, v12, 0x1

    .line 68
    .line 69
    const v16, 0x3fffffff    # 1.9999999f

    .line 70
    .line 71
    .line 72
    and-int v5, v5, v16

    .line 73
    .line 74
    move-object/from16 v16, v0

    .line 75
    .line 76
    sget-object v0, LW5/u;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 77
    .line 78
    move-wide/from16 v17, v6

    .line 79
    .line 80
    sget-object v6, LW5/u;->e:LW5/s;

    .line 81
    .line 82
    move v7, v4

    .line 83
    move-wide/from16 v19, v8

    .line 84
    .line 85
    move v8, v5

    .line 86
    invoke-virtual {v6, v2, v3, v8}, LW5/s;->updateHead(JI)J

    .line 87
    .line 88
    .line 89
    move-result-wide v4

    .line 90
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    and-int v0, v12, v13

    .line 97
    .line 98
    invoke-virtual {v15, v0, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return-object v16

    .line 102
    :cond_5
    move-object/from16 v1, p0

    .line 103
    .line 104
    if-eqz v7, :cond_0

    .line 105
    .line 106
    :cond_6
    sget-object v0, LW5/u;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 109
    .line 110
    .line 111
    move-result-wide v2

    .line 112
    and-long v4, v2, v10

    .line 113
    .line 114
    long-to-int v4, v4

    .line 115
    and-long v12, v2, v17

    .line 116
    .line 117
    cmp-long v5, v12, v19

    .line 118
    .line 119
    if-eqz v5, :cond_7

    .line 120
    .line 121
    invoke-virtual {v1}, LW5/u;->next()LW5/u;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    move-object v1, v0

    .line 126
    goto :goto_0

    .line 127
    :cond_7
    invoke-virtual {v6, v2, v3, v8}, LW5/s;->updateHead(JI)J

    .line 128
    .line 129
    .line 130
    move-result-wide v25

    .line 131
    move-object/from16 v21, v0

    .line 132
    .line 133
    move-object/from16 v22, v1

    .line 134
    .line 135
    move-wide/from16 v23, v2

    .line 136
    .line 137
    invoke-virtual/range {v21 .. v26}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_6

    .line 142
    .line 143
    iget-object v0, v1, LW5/u;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 144
    .line 145
    iget v1, v1, LW5/u;->c:I

    .line 146
    .line 147
    and-int/2addr v1, v4

    .line 148
    invoke-virtual {v0, v1, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    move-object v1, v14

    .line 152
    :goto_0
    if-nez v1, :cond_6

    .line 153
    .line 154
    return-object v16
.end method
