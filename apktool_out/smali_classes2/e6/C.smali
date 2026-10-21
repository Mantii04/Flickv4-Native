.class public final Le6/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le6/L;


# instance fields
.field public final b:Le6/n;

.field public final e:Le6/l;

.field public f:Le6/H;

.field public j:I

.field public m:Z

.field public n:J


# direct methods
.method public constructor <init>(Le6/n;)V
    .locals 1

    .line 1
    const-string v0, "upstream"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Le6/C;->b:Le6/n;

    .line 10
    .line 11
    invoke-interface {p1}, Le6/n;->getBuffer()Le6/l;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Le6/C;->e:Le6/l;

    .line 16
    .line 17
    iget-object p1, p1, Le6/l;->b:Le6/H;

    .line 18
    .line 19
    iput-object p1, p0, Le6/C;->f:Le6/H;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget p1, p1, Le6/H;->b:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, -0x1

    .line 27
    :goto_0
    iput p1, p0, Le6/C;->j:I

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le6/C;->m:Z

    .line 3
    .line 4
    return-void
.end method

.method public read(Le6/l;J)J
    .locals 8

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p2, v0

    .line 9
    .line 10
    if-ltz v2, :cond_6

    .line 11
    .line 12
    iget-boolean v3, p0, Le6/C;->m:Z

    .line 13
    .line 14
    if-nez v3, :cond_5

    .line 15
    .line 16
    iget-object v3, p0, Le6/C;->f:Le6/H;

    .line 17
    .line 18
    iget-object v4, p0, Le6/C;->e:Le6/l;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    iget-object v5, v4, Le6/l;->b:Le6/H;

    .line 23
    .line 24
    if-ne v3, v5, :cond_0

    .line 25
    .line 26
    iget v3, p0, Le6/C;->j:I

    .line 27
    .line 28
    invoke-static {v5}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget v5, v5, Le6/H;->b:I

    .line 32
    .line 33
    if-ne v3, v5, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string p2, "Peek source is invalid because upstream source was used"

    .line 39
    .line 40
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 45
    .line 46
    return-wide v0

    .line 47
    :cond_2
    iget-wide v0, p0, Le6/C;->n:J

    .line 48
    .line 49
    const-wide/16 v2, 0x1

    .line 50
    .line 51
    add-long/2addr v0, v2

    .line 52
    iget-object v2, p0, Le6/C;->b:Le6/n;

    .line 53
    .line 54
    invoke-interface {v2, v0, v1}, Le6/n;->request(J)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    const-wide/16 p1, -0x1

    .line 61
    .line 62
    return-wide p1

    .line 63
    :cond_3
    iget-object v0, p0, Le6/C;->f:Le6/H;

    .line 64
    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    iget-object v0, v4, Le6/l;->b:Le6/H;

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    iput-object v0, p0, Le6/C;->f:Le6/H;

    .line 72
    .line 73
    invoke-static {v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget v0, v0, Le6/H;->b:I

    .line 77
    .line 78
    iput v0, p0, Le6/C;->j:I

    .line 79
    .line 80
    :cond_4
    invoke-virtual {v4}, Le6/l;->size()J

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    iget-wide v2, p0, Le6/C;->n:J

    .line 85
    .line 86
    sub-long/2addr v0, v2

    .line 87
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 88
    .line 89
    .line 90
    move-result-wide v6

    .line 91
    iget-object v2, p0, Le6/C;->e:Le6/l;

    .line 92
    .line 93
    iget-wide v4, p0, Le6/C;->n:J

    .line 94
    .line 95
    move-object v3, p1

    .line 96
    invoke-virtual/range {v2 .. v7}, Le6/l;->copyTo(Le6/l;JJ)Le6/l;

    .line 97
    .line 98
    .line 99
    iget-wide p1, p0, Le6/C;->n:J

    .line 100
    .line 101
    add-long/2addr p1, v6

    .line 102
    iput-wide p1, p0, Le6/C;->n:J

    .line 103
    .line 104
    return-wide v6

    .line 105
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 106
    .line 107
    const-string p2, "closed"

    .line 108
    .line 109
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :cond_6
    const-string p1, "byteCount < 0: "

    .line 114
    .line 115
    invoke-static {p1, p2, p3}, LA/i;->i(Ljava/lang/String;J)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p2
.end method

.method public timeout()Le6/O;
    .locals 1

    .line 1
    iget-object v0, p0, Le6/C;->b:Le6/n;

    .line 2
    .line 3
    invoke-interface {v0}, Le6/L;->timeout()Le6/O;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
