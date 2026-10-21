.class public final LN0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/C;


# static fields
.field public static final k0:[B

.field public static final l0:[B

.field public static final m0:[B

.field public static final n0:[B

.field public static final o0:Ljava/util/UUID;

.field public static final p0:Ljava/util/Map;


# instance fields
.field public A:I

.field public B:J

.field public final C:Landroid/util/SparseArray;

.field public D:Z

.field public E:J

.field public F:I

.field public G:J

.field public H:J

.field public I:I

.field public J:Z

.field public K:J

.field public L:J

.field public M:J

.field public N:Z

.field public O:I

.field public P:J

.field public Q:J

.field public R:I

.field public S:I

.field public T:[I

.field public U:I

.field public V:I

.field public W:I

.field public X:I

.field public Y:Z

.field public Z:J

.field public final a:LN0/b;

.field public a0:I

.field public final b:LN0/j;

.field public b0:I

.field public final c:Landroid/util/SparseArray;

.field public c0:I

.field public final d:Z

.field public d0:Z

.field public final e:Z

.field public e0:Z

.field public final f:LS0/q;

.field public f0:Z

.field public final g:Landroidx/media3/common/util/ParsableByteArray;

.field public g0:I

.field public final h:Landroidx/media3/common/util/ParsableByteArray;

.field public h0:B

.field public final i:Landroidx/media3/common/util/ParsableByteArray;

.field public i0:Z

.field public final j:Landroidx/media3/common/util/ParsableByteArray;

.field public j0:Lv0/F;

.field public final k:Landroidx/media3/common/util/ParsableByteArray;

.field public final l:Landroidx/media3/common/util/ParsableByteArray;

.field public final m:Landroidx/media3/common/util/ParsableByteArray;

.field public final n:Landroidx/media3/common/util/ParsableByteArray;

.field public final o:Landroidx/media3/common/util/ParsableByteArray;

.field public final p:Landroidx/media3/common/util/ParsableByteArray;

.field public q:Ljava/nio/ByteBuffer;

.field public r:J

.field public s:J

.field public t:J

.field public u:J

.field public v:J

.field public w:Z

.field public x:Z

.field public y:LN0/g;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, LN0/h;->k0:[B

    .line 9
    .line 10
    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    .line 11
    .line 12
    invoke-static {v1}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sput-object v1, LN0/h;->l0:[B

    .line 17
    .line 18
    new-array v0, v0, [B

    .line 19
    .line 20
    fill-array-data v0, :array_1

    .line 21
    .line 22
    .line 23
    sput-object v0, LN0/h;->m0:[B

    .line 24
    .line 25
    const/16 v0, 0x26

    .line 26
    .line 27
    new-array v0, v0, [B

    .line 28
    .line 29
    fill-array-data v0, :array_2

    .line 30
    .line 31
    .line 32
    sput-object v0, LN0/h;->n0:[B

    .line 33
    .line 34
    new-instance v0, Ljava/util/UUID;

    .line 35
    .line 36
    const-wide v1, 0x100000000001000L

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 47
    .line 48
    .line 49
    sput-object v0, LN0/h;->o0:Ljava/util/UUID;

    .line 50
    .line 51
    new-instance v0, Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "htc_video_rotA-000"

    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    const/16 v1, 0x5a

    .line 67
    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v2, "htc_video_rotA-090"

    .line 73
    .line 74
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    const/16 v1, 0xb4

    .line 78
    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "htc_video_rotA-180"

    .line 84
    .line 85
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    const/16 v1, 0x10e

    .line 89
    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v2, "htc_video_rotA-270"

    .line 95
    .line 96
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sput-object v0, LN0/h;->p0:Ljava/util/Map;

    .line 104
    .line 105
    return-void

    .line 106
    nop

    .line 107
    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :array_1
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_2
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x56t
        0x54t
        0x54t
        0xat
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data
.end method

.method public constructor <init>(LS0/q;I)V
    .locals 6

    .line 1
    new-instance v0, LN0/b;

    .line 2
    .line 3
    invoke-direct {v0}, LN0/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const-wide/16 v1, -0x1

    .line 10
    .line 11
    iput-wide v1, p0, LN0/h;->s:J

    .line 12
    .line 13
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide v3, p0, LN0/h;->t:J

    .line 19
    .line 20
    iput-wide v3, p0, LN0/h;->u:J

    .line 21
    .line 22
    iput-wide v3, p0, LN0/h;->v:J

    .line 23
    .line 24
    iput-wide v3, p0, LN0/h;->E:J

    .line 25
    .line 26
    const/4 v5, -0x1

    .line 27
    iput v5, p0, LN0/h;->F:I

    .line 28
    .line 29
    iput-wide v1, p0, LN0/h;->G:J

    .line 30
    .line 31
    iput-wide v1, p0, LN0/h;->H:J

    .line 32
    .line 33
    iput v5, p0, LN0/h;->I:I

    .line 34
    .line 35
    iput-wide v1, p0, LN0/h;->K:J

    .line 36
    .line 37
    iput-wide v1, p0, LN0/h;->L:J

    .line 38
    .line 39
    iput-wide v3, p0, LN0/h;->M:J

    .line 40
    .line 41
    iput-object v0, p0, LN0/h;->a:LN0/b;

    .line 42
    .line 43
    new-instance v1, LN0/d;

    .line 44
    .line 45
    invoke-direct {v1, p0}, LN0/d;-><init>(LN0/h;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, LN0/b;->init(LN0/c;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, LN0/h;->f:LS0/q;

    .line 52
    .line 53
    new-instance p1, Landroid/util/SparseArray;

    .line 54
    .line 55
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, LN0/h;->C:Landroid/util/SparseArray;

    .line 59
    .line 60
    and-int/lit8 p1, p2, 0x1

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    const/4 v1, 0x0

    .line 64
    if-nez p1, :cond_0

    .line 65
    .line 66
    move p1, v0

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    move p1, v1

    .line 69
    :goto_0
    iput-boolean p1, p0, LN0/h;->d:Z

    .line 70
    .line 71
    and-int/lit8 p1, p2, 0x2

    .line 72
    .line 73
    if-nez p1, :cond_1

    .line 74
    .line 75
    move v1, v0

    .line 76
    :cond_1
    iput-boolean v1, p0, LN0/h;->e:Z

    .line 77
    .line 78
    new-instance p1, LN0/j;

    .line 79
    .line 80
    invoke-direct {p1}, LN0/j;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object p1, p0, LN0/h;->b:LN0/j;

    .line 84
    .line 85
    new-instance p1, Landroid/util/SparseArray;

    .line 86
    .line 87
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, LN0/h;->c:Landroid/util/SparseArray;

    .line 91
    .line 92
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 93
    .line 94
    const/4 p2, 0x4

    .line 95
    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, LN0/h;->i:Landroidx/media3/common/util/ParsableByteArray;

    .line 99
    .line 100
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 101
    .line 102
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-direct {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 115
    .line 116
    .line 117
    iput-object p1, p0, LN0/h;->j:Landroidx/media3/common/util/ParsableByteArray;

    .line 118
    .line 119
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 120
    .line 121
    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 122
    .line 123
    .line 124
    iput-object p1, p0, LN0/h;->k:Landroidx/media3/common/util/ParsableByteArray;

    .line 125
    .line 126
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 127
    .line 128
    sget-object v1, Ls0/v;->a:[B

    .line 129
    .line 130
    invoke-direct {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 131
    .line 132
    .line 133
    iput-object p1, p0, LN0/h;->g:Landroidx/media3/common/util/ParsableByteArray;

    .line 134
    .line 135
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 136
    .line 137
    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 138
    .line 139
    .line 140
    iput-object p1, p0, LN0/h;->h:Landroidx/media3/common/util/ParsableByteArray;

    .line 141
    .line 142
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 143
    .line 144
    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-object p1, p0, LN0/h;->l:Landroidx/media3/common/util/ParsableByteArray;

    .line 148
    .line 149
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 150
    .line 151
    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 152
    .line 153
    .line 154
    iput-object p1, p0, LN0/h;->m:Landroidx/media3/common/util/ParsableByteArray;

    .line 155
    .line 156
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 157
    .line 158
    const/16 p2, 0x8

    .line 159
    .line 160
    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 161
    .line 162
    .line 163
    iput-object p1, p0, LN0/h;->n:Landroidx/media3/common/util/ParsableByteArray;

    .line 164
    .line 165
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 166
    .line 167
    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 168
    .line 169
    .line 170
    iput-object p1, p0, LN0/h;->o:Landroidx/media3/common/util/ParsableByteArray;

    .line 171
    .line 172
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 173
    .line 174
    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 175
    .line 176
    .line 177
    iput-object p1, p0, LN0/h;->p:Landroidx/media3/common/util/ParsableByteArray;

    .line 178
    .line 179
    new-array p1, v0, [I

    .line 180
    .line 181
    iput-object p1, p0, LN0/h;->T:[I

    .line 182
    .line 183
    iput-boolean v0, p0, LN0/h;->x:Z

    .line 184
    .line 185
    return-void
.end method

.method public static d(JJLjava/lang/String;)[B
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v2, p0, v2

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    move v2, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v2, v0

    .line 15
    :goto_0
    invoke-static {v2}, LP3/v;->checkArgument(Z)V

    .line 16
    .line 17
    .line 18
    const-wide v2, 0xd693a400L

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    div-long v4, p0, v2

    .line 24
    .line 25
    long-to-int v4, v4

    .line 26
    int-to-long v5, v4

    .line 27
    mul-long/2addr v5, v2

    .line 28
    sub-long/2addr p0, v5

    .line 29
    const-wide/32 v2, 0x3938700

    .line 30
    .line 31
    .line 32
    div-long v5, p0, v2

    .line 33
    .line 34
    long-to-int v5, v5

    .line 35
    int-to-long v6, v5

    .line 36
    mul-long/2addr v6, v2

    .line 37
    sub-long/2addr p0, v6

    .line 38
    const-wide/32 v2, 0xf4240

    .line 39
    .line 40
    .line 41
    div-long v6, p0, v2

    .line 42
    .line 43
    long-to-int v6, v6

    .line 44
    int-to-long v7, v6

    .line 45
    mul-long/2addr v7, v2

    .line 46
    sub-long/2addr p0, v7

    .line 47
    div-long/2addr p0, p2

    .line 48
    long-to-int p0, p0

    .line 49
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 50
    .line 51
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const/4 v3, 0x4

    .line 68
    new-array v3, v3, [Ljava/lang/Object;

    .line 69
    .line 70
    aput-object p2, v3, v0

    .line 71
    .line 72
    aput-object p3, v3, v1

    .line 73
    .line 74
    const/4 p2, 0x2

    .line 75
    aput-object v2, v3, p2

    .line 76
    .line 77
    const/4 p2, 0x3

    .line 78
    aput-object p0, v3, p2

    .line 79
    .line 80
    invoke-static {p1, p4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, LN0/h;->D:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "Element "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, " must be in a Cues"

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-static {p1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    throw p1
.end method

.method public final b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, LN0/h;->y:LN0/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "Element "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, " must be in a TrackEntry"

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-static {p1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    throw p1
.end method

.method public binaryElement(IILv0/D;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v7, p3

    .line 8
    .line 9
    iget-object v3, v0, LN0/h;->c:Landroid/util/SparseArray;

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    const/4 v8, 0x1

    .line 13
    const/16 v5, 0xa1

    .line 14
    .line 15
    const/16 v6, 0xa3

    .line 16
    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x0

    .line 19
    if-eq v1, v5, :cond_8

    .line 20
    .line 21
    if-eq v1, v6, :cond_8

    .line 22
    .line 23
    const/16 v5, 0xa5

    .line 24
    .line 25
    if-eq v1, v5, :cond_6

    .line 26
    .line 27
    const/16 v3, 0x41ed

    .line 28
    .line 29
    if-eq v1, v3, :cond_5

    .line 30
    .line 31
    const/16 v3, 0x4255

    .line 32
    .line 33
    if-eq v1, v3, :cond_4

    .line 34
    .line 35
    const/16 v3, 0x47e2

    .line 36
    .line 37
    if-eq v1, v3, :cond_3

    .line 38
    .line 39
    const/16 v3, 0x53ab

    .line 40
    .line 41
    if-eq v1, v3, :cond_2

    .line 42
    .line 43
    const/16 v3, 0x63a2

    .line 44
    .line 45
    if-eq v1, v3, :cond_1

    .line 46
    .line 47
    const/16 v3, 0x7672

    .line 48
    .line 49
    if-ne v1, v3, :cond_0

    .line 50
    .line 51
    invoke-virtual/range {p0 .. p1}, LN0/h;->b(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, LN0/h;->y:LN0/g;

    .line 55
    .line 56
    new-array v3, v2, [B

    .line 57
    .line 58
    iput-object v3, v1, LN0/g;->x:[B

    .line 59
    .line 60
    invoke-interface {v7, v3, v10, v2}, Lv0/D;->readFully([BII)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v3, "Unexpected id: "

    .line 67
    .line 68
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v1, v9}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    throw v1

    .line 83
    :cond_1
    invoke-virtual/range {p0 .. p1}, LN0/h;->b(I)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, LN0/h;->y:LN0/g;

    .line 87
    .line 88
    new-array v3, v2, [B

    .line 89
    .line 90
    iput-object v3, v1, LN0/g;->l:[B

    .line 91
    .line 92
    invoke-interface {v7, v3, v10, v2}, Lv0/D;->readFully([BII)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_2
    iget-object v1, v0, LN0/h;->k:Landroidx/media3/common/util/ParsableByteArray;

    .line 97
    .line 98
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {v3, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    rsub-int/lit8 v4, v2, 0x4

    .line 110
    .line 111
    invoke-interface {v7, v3, v4, v2}, Lv0/D;->readFully([BII)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 118
    .line 119
    .line 120
    move-result-wide v1

    .line 121
    long-to-int v1, v1

    .line 122
    iput v1, v0, LN0/h;->A:I

    .line 123
    .line 124
    return-void

    .line 125
    :cond_3
    new-array v3, v2, [B

    .line 126
    .line 127
    invoke-interface {v7, v3, v10, v2}, Lv0/D;->readFully([BII)V

    .line 128
    .line 129
    .line 130
    invoke-virtual/range {p0 .. p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    new-instance v2, Lv0/q0;

    .line 135
    .line 136
    invoke-direct {v2, v8, v3, v10, v10}, Lv0/q0;-><init>(I[BII)V

    .line 137
    .line 138
    .line 139
    iput-object v2, v1, LN0/g;->k:Lv0/q0;

    .line 140
    .line 141
    return-void

    .line 142
    :cond_4
    invoke-virtual/range {p0 .. p1}, LN0/h;->b(I)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v0, LN0/h;->y:LN0/g;

    .line 146
    .line 147
    new-array v3, v2, [B

    .line 148
    .line 149
    iput-object v3, v1, LN0/g;->j:[B

    .line 150
    .line 151
    invoke-interface {v7, v3, v10, v2}, Lv0/D;->readFully([BII)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_5
    invoke-virtual/range {p0 .. p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v0, v1, v7, v2}, LN0/h;->handleBlockAddIDExtraData(LN0/g;Lv0/D;I)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_6
    iget v1, v0, LN0/h;->O:I

    .line 164
    .line 165
    if-eq v1, v4, :cond_7

    .line 166
    .line 167
    goto/16 :goto_10

    .line 168
    .line 169
    :cond_7
    iget v1, v0, LN0/h;->U:I

    .line 170
    .line 171
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    check-cast v1, LN0/g;

    .line 176
    .line 177
    iget v3, v0, LN0/h;->X:I

    .line 178
    .line 179
    invoke-virtual {v0, v1, v3, v7, v2}, LN0/h;->handleBlockAdditionalData(LN0/g;ILv0/D;I)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_8
    iget v5, v0, LN0/h;->O:I

    .line 184
    .line 185
    const/16 v11, 0x8

    .line 186
    .line 187
    iget-object v12, v0, LN0/h;->i:Landroidx/media3/common/util/ParsableByteArray;

    .line 188
    .line 189
    if-nez v5, :cond_9

    .line 190
    .line 191
    iget-object v5, v0, LN0/h;->b:LN0/j;

    .line 192
    .line 193
    invoke-virtual {v5, v7, v10, v8, v11}, LN0/j;->readUnsignedVarint(Lv0/D;ZZI)J

    .line 194
    .line 195
    .line 196
    move-result-wide v13

    .line 197
    long-to-int v13, v13

    .line 198
    iput v13, v0, LN0/h;->U:I

    .line 199
    .line 200
    invoke-virtual {v5}, LN0/j;->getLastLength()I

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    iput v5, v0, LN0/h;->V:I

    .line 205
    .line 206
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    iput-wide v13, v0, LN0/h;->Q:J

    .line 212
    .line 213
    iput v8, v0, LN0/h;->O:I

    .line 214
    .line 215
    invoke-virtual {v12, v10}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 216
    .line 217
    .line 218
    :cond_9
    iget v5, v0, LN0/h;->U:I

    .line 219
    .line 220
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    check-cast v3, LN0/g;

    .line 225
    .line 226
    if-nez v3, :cond_a

    .line 227
    .line 228
    iget v1, v0, LN0/h;->V:I

    .line 229
    .line 230
    sub-int v1, v2, v1

    .line 231
    .line 232
    invoke-interface {v7, v1}, Lv0/D;->skipFully(I)V

    .line 233
    .line 234
    .line 235
    iput v10, v0, LN0/h;->O:I

    .line 236
    .line 237
    return-void

    .line 238
    :cond_a
    iget-object v5, v3, LN0/g;->a0:Lv0/r0;

    .line 239
    .line 240
    invoke-static {v5}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    iget v5, v0, LN0/h;->O:I

    .line 244
    .line 245
    if-ne v5, v8, :cond_1f

    .line 246
    .line 247
    const/4 v5, 0x3

    .line 248
    invoke-virtual {v0, v7, v5}, LN0/h;->f(Lv0/D;I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 252
    .line 253
    .line 254
    move-result-object v13

    .line 255
    aget-byte v13, v13, v4

    .line 256
    .line 257
    and-int/lit8 v13, v13, 0x6

    .line 258
    .line 259
    shr-int/2addr v13, v8

    .line 260
    const/16 v14, 0xff

    .line 261
    .line 262
    if-nez v13, :cond_d

    .line 263
    .line 264
    iput v8, v0, LN0/h;->S:I

    .line 265
    .line 266
    iget-object v9, v0, LN0/h;->T:[I

    .line 267
    .line 268
    if-nez v9, :cond_b

    .line 269
    .line 270
    new-array v9, v8, [I

    .line 271
    .line 272
    goto :goto_0

    .line 273
    :cond_b
    array-length v13, v9

    .line 274
    if-lt v13, v8, :cond_c

    .line 275
    .line 276
    goto :goto_0

    .line 277
    :cond_c
    array-length v9, v9

    .line 278
    mul-int/2addr v9, v4

    .line 279
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    .line 280
    .line 281
    .line 282
    move-result v9

    .line 283
    new-array v9, v9, [I

    .line 284
    .line 285
    :goto_0
    iput-object v9, v0, LN0/h;->T:[I

    .line 286
    .line 287
    iget v13, v0, LN0/h;->V:I

    .line 288
    .line 289
    sub-int/2addr v2, v13

    .line 290
    sub-int/2addr v2, v5

    .line 291
    aput v2, v9, v10

    .line 292
    .line 293
    :goto_1
    move/from16 v19, v4

    .line 294
    .line 295
    move/from16 v17, v10

    .line 296
    .line 297
    move/from16 v18, v11

    .line 298
    .line 299
    move v11, v8

    .line 300
    goto/16 :goto_a

    .line 301
    .line 302
    :cond_d
    const/4 v15, 0x4

    .line 303
    invoke-virtual {v0, v7, v15}, LN0/h;->f(Lv0/D;I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 307
    .line 308
    .line 309
    move-result-object v16

    .line 310
    move/from16 v17, v15

    .line 311
    .line 312
    aget-byte v15, v16, v5

    .line 313
    .line 314
    and-int/2addr v15, v14

    .line 315
    add-int/2addr v15, v8

    .line 316
    iput v15, v0, LN0/h;->S:I

    .line 317
    .line 318
    iget-object v6, v0, LN0/h;->T:[I

    .line 319
    .line 320
    if-nez v6, :cond_e

    .line 321
    .line 322
    new-array v6, v15, [I

    .line 323
    .line 324
    goto :goto_2

    .line 325
    :cond_e
    array-length v9, v6

    .line 326
    if-lt v9, v15, :cond_f

    .line 327
    .line 328
    goto :goto_2

    .line 329
    :cond_f
    array-length v6, v6

    .line 330
    mul-int/2addr v6, v4

    .line 331
    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    .line 332
    .line 333
    .line 334
    move-result v6

    .line 335
    new-array v6, v6, [I

    .line 336
    .line 337
    :goto_2
    iput-object v6, v0, LN0/h;->T:[I

    .line 338
    .line 339
    if-ne v13, v4, :cond_10

    .line 340
    .line 341
    iget v5, v0, LN0/h;->V:I

    .line 342
    .line 343
    sub-int/2addr v2, v5

    .line 344
    add-int/lit8 v2, v2, -0x4

    .line 345
    .line 346
    iget v5, v0, LN0/h;->S:I

    .line 347
    .line 348
    div-int/2addr v2, v5

    .line 349
    invoke-static {v6, v10, v5, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 350
    .line 351
    .line 352
    goto :goto_1

    .line 353
    :cond_10
    if-ne v13, v8, :cond_13

    .line 354
    .line 355
    move v5, v10

    .line 356
    move v6, v5

    .line 357
    move/from16 v15, v17

    .line 358
    .line 359
    :goto_3
    iget v9, v0, LN0/h;->S:I

    .line 360
    .line 361
    sub-int/2addr v9, v8

    .line 362
    if-ge v5, v9, :cond_12

    .line 363
    .line 364
    iget-object v9, v0, LN0/h;->T:[I

    .line 365
    .line 366
    aput v10, v9, v5

    .line 367
    .line 368
    :goto_4
    add-int/lit8 v9, v15, 0x1

    .line 369
    .line 370
    invoke-virtual {v0, v7, v9}, LN0/h;->f(Lv0/D;I)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 374
    .line 375
    .line 376
    move-result-object v13

    .line 377
    aget-byte v13, v13, v15

    .line 378
    .line 379
    and-int/2addr v13, v14

    .line 380
    iget-object v15, v0, LN0/h;->T:[I

    .line 381
    .line 382
    aget v17, v15, v5

    .line 383
    .line 384
    add-int v17, v17, v13

    .line 385
    .line 386
    aput v17, v15, v5

    .line 387
    .line 388
    if-eq v13, v14, :cond_11

    .line 389
    .line 390
    add-int v6, v6, v17

    .line 391
    .line 392
    add-int/lit8 v5, v5, 0x1

    .line 393
    .line 394
    move v15, v9

    .line 395
    goto :goto_3

    .line 396
    :cond_11
    move v15, v9

    .line 397
    goto :goto_4

    .line 398
    :cond_12
    iget-object v5, v0, LN0/h;->T:[I

    .line 399
    .line 400
    iget v13, v0, LN0/h;->V:I

    .line 401
    .line 402
    sub-int/2addr v2, v13

    .line 403
    sub-int/2addr v2, v15

    .line 404
    sub-int/2addr v2, v6

    .line 405
    aput v2, v5, v9

    .line 406
    .line 407
    goto :goto_1

    .line 408
    :cond_13
    if-ne v13, v5, :cond_1e

    .line 409
    .line 410
    move v5, v10

    .line 411
    move v6, v5

    .line 412
    move/from16 v15, v17

    .line 413
    .line 414
    :goto_5
    iget v9, v0, LN0/h;->S:I

    .line 415
    .line 416
    sub-int/2addr v9, v8

    .line 417
    if-ge v5, v9, :cond_1b

    .line 418
    .line 419
    iget-object v9, v0, LN0/h;->T:[I

    .line 420
    .line 421
    aput v10, v9, v5

    .line 422
    .line 423
    add-int/lit8 v9, v15, 0x1

    .line 424
    .line 425
    invoke-virtual {v0, v7, v9}, LN0/h;->f(Lv0/D;I)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 429
    .line 430
    .line 431
    move-result-object v13

    .line 432
    aget-byte v13, v13, v15

    .line 433
    .line 434
    if-eqz v13, :cond_1a

    .line 435
    .line 436
    move v13, v10

    .line 437
    :goto_6
    if-ge v13, v11, :cond_17

    .line 438
    .line 439
    rsub-int/lit8 v17, v13, 0x7

    .line 440
    .line 441
    move/from16 v18, v11

    .line 442
    .line 443
    shl-int v11, v8, v17

    .line 444
    .line 445
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 446
    .line 447
    .line 448
    move-result-object v17

    .line 449
    aget-byte v17, v17, v15

    .line 450
    .line 451
    and-int v17, v17, v11

    .line 452
    .line 453
    if-eqz v17, :cond_16

    .line 454
    .line 455
    move/from16 v17, v10

    .line 456
    .line 457
    add-int v10, v9, v13

    .line 458
    .line 459
    invoke-virtual {v0, v7, v10}, LN0/h;->f(Lv0/D;I)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 463
    .line 464
    .line 465
    move-result-object v19

    .line 466
    aget-byte v15, v19, v15

    .line 467
    .line 468
    and-int/2addr v15, v14

    .line 469
    not-int v11, v11

    .line 470
    and-int/2addr v11, v15

    .line 471
    move/from16 v19, v4

    .line 472
    .line 473
    move/from16 v20, v5

    .line 474
    .line 475
    int-to-long v4, v11

    .line 476
    :goto_7
    if-ge v9, v10, :cond_14

    .line 477
    .line 478
    shl-long v4, v4, v18

    .line 479
    .line 480
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 481
    .line 482
    .line 483
    move-result-object v11

    .line 484
    add-int/lit8 v15, v9, 0x1

    .line 485
    .line 486
    aget-byte v9, v11, v9

    .line 487
    .line 488
    and-int/2addr v9, v14

    .line 489
    move v11, v8

    .line 490
    int-to-long v8, v9

    .line 491
    or-long/2addr v4, v8

    .line 492
    move v8, v11

    .line 493
    move v9, v15

    .line 494
    goto :goto_7

    .line 495
    :cond_14
    move v11, v8

    .line 496
    if-lez v20, :cond_15

    .line 497
    .line 498
    mul-int/lit8 v13, v13, 0x7

    .line 499
    .line 500
    add-int/lit8 v13, v13, 0x6

    .line 501
    .line 502
    const-wide/16 v8, 0x1

    .line 503
    .line 504
    shl-long v21, v8, v13

    .line 505
    .line 506
    sub-long v21, v21, v8

    .line 507
    .line 508
    sub-long v4, v4, v21

    .line 509
    .line 510
    :cond_15
    move v15, v10

    .line 511
    goto :goto_8

    .line 512
    :cond_16
    move/from16 v19, v4

    .line 513
    .line 514
    move/from16 v20, v5

    .line 515
    .line 516
    move v11, v8

    .line 517
    move/from16 v17, v10

    .line 518
    .line 519
    add-int/lit8 v13, v13, 0x1

    .line 520
    .line 521
    move/from16 v11, v18

    .line 522
    .line 523
    goto :goto_6

    .line 524
    :cond_17
    move/from16 v19, v4

    .line 525
    .line 526
    move/from16 v20, v5

    .line 527
    .line 528
    move/from16 v17, v10

    .line 529
    .line 530
    move/from16 v18, v11

    .line 531
    .line 532
    move v11, v8

    .line 533
    const-wide/16 v4, 0x0

    .line 534
    .line 535
    move v15, v9

    .line 536
    :goto_8
    const-wide/32 v8, -0x80000000

    .line 537
    .line 538
    .line 539
    cmp-long v8, v4, v8

    .line 540
    .line 541
    if-ltz v8, :cond_19

    .line 542
    .line 543
    const-wide/32 v8, 0x7fffffff

    .line 544
    .line 545
    .line 546
    cmp-long v8, v4, v8

    .line 547
    .line 548
    if-gtz v8, :cond_19

    .line 549
    .line 550
    long-to-int v4, v4

    .line 551
    iget-object v5, v0, LN0/h;->T:[I

    .line 552
    .line 553
    if-nez v20, :cond_18

    .line 554
    .line 555
    goto :goto_9

    .line 556
    :cond_18
    add-int/lit8 v8, v20, -0x1

    .line 557
    .line 558
    aget v8, v5, v8

    .line 559
    .line 560
    add-int/2addr v4, v8

    .line 561
    :goto_9
    aput v4, v5, v20

    .line 562
    .line 563
    add-int/2addr v6, v4

    .line 564
    add-int/lit8 v5, v20, 0x1

    .line 565
    .line 566
    move v8, v11

    .line 567
    move/from16 v10, v17

    .line 568
    .line 569
    move/from16 v11, v18

    .line 570
    .line 571
    move/from16 v4, v19

    .line 572
    .line 573
    goto/16 :goto_5

    .line 574
    .line 575
    :cond_19
    const-string v1, "EBML lacing sample size out of range."

    .line 576
    .line 577
    const/4 v2, 0x0

    .line 578
    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    throw v1

    .line 583
    :cond_1a
    const/4 v2, 0x0

    .line 584
    const-string v1, "No valid varint length mask found"

    .line 585
    .line 586
    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    throw v1

    .line 591
    :cond_1b
    move/from16 v19, v4

    .line 592
    .line 593
    move/from16 v17, v10

    .line 594
    .line 595
    move/from16 v18, v11

    .line 596
    .line 597
    move v11, v8

    .line 598
    iget-object v4, v0, LN0/h;->T:[I

    .line 599
    .line 600
    iget v5, v0, LN0/h;->V:I

    .line 601
    .line 602
    sub-int/2addr v2, v5

    .line 603
    sub-int/2addr v2, v15

    .line 604
    sub-int/2addr v2, v6

    .line 605
    aput v2, v4, v9

    .line 606
    .line 607
    :goto_a
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    aget-byte v2, v2, v17

    .line 612
    .line 613
    shl-int/lit8 v2, v2, 0x8

    .line 614
    .line 615
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 616
    .line 617
    .line 618
    move-result-object v4

    .line 619
    aget-byte v4, v4, v11

    .line 620
    .line 621
    and-int/2addr v4, v14

    .line 622
    or-int/2addr v2, v4

    .line 623
    iget-wide v4, v0, LN0/h;->M:J

    .line 624
    .line 625
    int-to-long v8, v2

    .line 626
    invoke-virtual {v0, v8, v9}, LN0/h;->h(J)J

    .line 627
    .line 628
    .line 629
    move-result-wide v8

    .line 630
    add-long/2addr v8, v4

    .line 631
    iput-wide v8, v0, LN0/h;->P:J

    .line 632
    .line 633
    iget v2, v3, LN0/g;->e:I

    .line 634
    .line 635
    if-eq v2, v11, :cond_1d

    .line 636
    .line 637
    const/16 v2, 0xa3

    .line 638
    .line 639
    if-ne v1, v2, :cond_1c

    .line 640
    .line 641
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    aget-byte v2, v2, v19

    .line 646
    .line 647
    const/16 v4, 0x80

    .line 648
    .line 649
    and-int/2addr v2, v4

    .line 650
    if-ne v2, v4, :cond_1c

    .line 651
    .line 652
    goto :goto_b

    .line 653
    :cond_1c
    move/from16 v2, v17

    .line 654
    .line 655
    goto :goto_c

    .line 656
    :cond_1d
    :goto_b
    const/4 v2, 0x1

    .line 657
    :goto_c
    iput v2, v0, LN0/h;->W:I

    .line 658
    .line 659
    move/from16 v2, v19

    .line 660
    .line 661
    iput v2, v0, LN0/h;->O:I

    .line 662
    .line 663
    move/from16 v2, v17

    .line 664
    .line 665
    iput v2, v0, LN0/h;->R:I

    .line 666
    .line 667
    const/16 v2, 0xa3

    .line 668
    .line 669
    goto :goto_d

    .line 670
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 671
    .line 672
    const-string v2, "Unexpected lacing value: "

    .line 673
    .line 674
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v1

    .line 684
    const/4 v2, 0x0

    .line 685
    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 686
    .line 687
    .line 688
    move-result-object v1

    .line 689
    throw v1

    .line 690
    :cond_1f
    move v2, v6

    .line 691
    :goto_d
    if-ne v1, v2, :cond_21

    .line 692
    .line 693
    :goto_e
    iget v1, v0, LN0/h;->R:I

    .line 694
    .line 695
    iget v2, v0, LN0/h;->S:I

    .line 696
    .line 697
    if-ge v1, v2, :cond_20

    .line 698
    .line 699
    iget-object v2, v0, LN0/h;->T:[I

    .line 700
    .line 701
    aget v1, v2, v1

    .line 702
    .line 703
    const/4 v2, 0x0

    .line 704
    invoke-virtual {v0, v7, v3, v1, v2}, LN0/h;->i(Lv0/D;LN0/g;IZ)I

    .line 705
    .line 706
    .line 707
    move-result v5

    .line 708
    iget-wide v1, v0, LN0/h;->P:J

    .line 709
    .line 710
    iget v4, v0, LN0/h;->R:I

    .line 711
    .line 712
    iget v6, v3, LN0/g;->f:I

    .line 713
    .line 714
    mul-int/2addr v4, v6

    .line 715
    div-int/lit16 v4, v4, 0x3e8

    .line 716
    .line 717
    int-to-long v8, v4

    .line 718
    add-long/2addr v1, v8

    .line 719
    iget v4, v0, LN0/h;->W:I

    .line 720
    .line 721
    const/4 v6, 0x0

    .line 722
    move-wide/from16 v23, v1

    .line 723
    .line 724
    move-object v1, v3

    .line 725
    move-wide/from16 v2, v23

    .line 726
    .line 727
    invoke-virtual/range {v0 .. v6}, LN0/h;->c(LN0/g;JIII)V

    .line 728
    .line 729
    .line 730
    iget v2, v0, LN0/h;->R:I

    .line 731
    .line 732
    const/4 v11, 0x1

    .line 733
    add-int/2addr v2, v11

    .line 734
    iput v2, v0, LN0/h;->R:I

    .line 735
    .line 736
    move-object v3, v1

    .line 737
    goto :goto_e

    .line 738
    :cond_20
    const/4 v2, 0x0

    .line 739
    iput v2, v0, LN0/h;->O:I

    .line 740
    .line 741
    return-void

    .line 742
    :cond_21
    move-object v1, v3

    .line 743
    const/4 v11, 0x1

    .line 744
    :goto_f
    iget v2, v0, LN0/h;->R:I

    .line 745
    .line 746
    iget v3, v0, LN0/h;->S:I

    .line 747
    .line 748
    if-ge v2, v3, :cond_22

    .line 749
    .line 750
    iget-object v3, v0, LN0/h;->T:[I

    .line 751
    .line 752
    aget v4, v3, v2

    .line 753
    .line 754
    invoke-virtual {v0, v7, v1, v4, v11}, LN0/h;->i(Lv0/D;LN0/g;IZ)I

    .line 755
    .line 756
    .line 757
    move-result v4

    .line 758
    aput v4, v3, v2

    .line 759
    .line 760
    iget v2, v0, LN0/h;->R:I

    .line 761
    .line 762
    add-int/2addr v2, v11

    .line 763
    iput v2, v0, LN0/h;->R:I

    .line 764
    .line 765
    goto :goto_f

    .line 766
    :cond_22
    :goto_10
    return-void
.end method

.method public final c(LN0/g;JIII)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const-string v3, "S_TEXT/WEBVTT"

    .line 7
    .line 8
    const-string v4, "S_TEXT/SSA"

    .line 9
    .line 10
    const-string v5, "S_TEXT/ASS"

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const-string v7, "S_TEXT/UTF8"

    .line 14
    .line 15
    iget-object v8, v1, LN0/g;->V:Lv0/s0;

    .line 16
    .line 17
    const/4 v9, 0x1

    .line 18
    if-eqz v8, :cond_0

    .line 19
    .line 20
    move v10, v9

    .line 21
    iget-object v9, v1, LN0/g;->a0:Lv0/r0;

    .line 22
    .line 23
    iget-object v15, v1, LN0/g;->k:Lv0/q0;

    .line 24
    .line 25
    move/from16 v12, p4

    .line 26
    .line 27
    move/from16 v13, p5

    .line 28
    .line 29
    move/from16 v14, p6

    .line 30
    .line 31
    move v1, v10

    .line 32
    move-wide/from16 v10, p2

    .line 33
    .line 34
    invoke-virtual/range {v8 .. v15}, Lv0/s0;->sampleMetadata(Lv0/r0;JIIILv0/q0;)V

    .line 35
    .line 36
    .line 37
    move v10, v1

    .line 38
    goto/16 :goto_7

    .line 39
    .line 40
    :cond_0
    move v10, v9

    .line 41
    iget-object v8, v1, LN0/g;->c:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-nez v8, :cond_1

    .line 48
    .line 49
    iget-object v8, v1, LN0/g;->c:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-nez v8, :cond_1

    .line 56
    .line 57
    iget-object v8, v1, LN0/g;->c:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-nez v8, :cond_1

    .line 64
    .line 65
    iget-object v8, v1, LN0/g;->c:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_3

    .line 72
    .line 73
    :cond_1
    iget v8, v0, LN0/h;->S:I

    .line 74
    .line 75
    const-string v9, "MatroskaExtractor"

    .line 76
    .line 77
    if-le v8, v10, :cond_2

    .line 78
    .line 79
    const-string v3, "Skipping subtitle sample in laced block."

    .line 80
    .line 81
    invoke-static {v9, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    iget-wide v11, v0, LN0/h;->Q:J

    .line 86
    .line 87
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    cmp-long v8, v11, v13

    .line 93
    .line 94
    if-nez v8, :cond_4

    .line 95
    .line 96
    const-string v3, "Skipping subtitle sample with no duration."

    .line 97
    .line 98
    invoke-static {v9, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_3
    :goto_0
    move/from16 v3, p5

    .line 102
    .line 103
    goto/16 :goto_5

    .line 104
    .line 105
    :cond_4
    iget-object v8, v1, LN0/g;->c:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v9, v0, LN0/h;->m:Landroidx/media3/common/util/ParsableByteArray;

    .line 108
    .line 109
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 110
    .line 111
    .line 112
    move-result-object v13

    .line 113
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    const-wide/16 v14, 0x3e8

    .line 117
    .line 118
    const/16 v16, -0x1

    .line 119
    .line 120
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 121
    .line 122
    .line 123
    move-result v17

    .line 124
    sparse-switch v17, :sswitch_data_0

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :sswitch_0
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-nez v3, :cond_5

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_5
    const/4 v3, 0x3

    .line 136
    move/from16 v16, v3

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :sswitch_1
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-nez v3, :cond_6

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_6
    move/from16 v16, v2

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :sswitch_2
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-nez v3, :cond_7

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_7
    move/from16 v16, v10

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :sswitch_3
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-nez v3, :cond_8

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_8
    move/from16 v16, v6

    .line 167
    .line 168
    :goto_1
    packed-switch v16, :pswitch_data_0

    .line 169
    .line 170
    .line 171
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 172
    .line 173
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 174
    .line 175
    .line 176
    throw v1

    .line 177
    :pswitch_0
    const-string v3, "%02d:%02d:%02d,%03d"

    .line 178
    .line 179
    invoke-static {v11, v12, v14, v15, v3}, LN0/h;->d(JJLjava/lang/String;)[B

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    const/16 v4, 0x13

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :pswitch_1
    const-string v3, "%02d:%02d:%02d.%03d"

    .line 187
    .line 188
    invoke-static {v11, v12, v14, v15, v3}, LN0/h;->d(JJLjava/lang/String;)[B

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    const/16 v4, 0x19

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :pswitch_2
    const-string v3, "%01d:%02d:%02d:%02d"

    .line 196
    .line 197
    const-wide/16 v4, 0x2710

    .line 198
    .line 199
    invoke-static {v11, v12, v4, v5, v3}, LN0/h;->d(JJLjava/lang/String;)[B

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    const/16 v4, 0x15

    .line 204
    .line 205
    :goto_2
    array-length v5, v3

    .line 206
    invoke-static {v3, v6, v13, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    :goto_3
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    if-ge v3, v4, :cond_a

    .line 218
    .line 219
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    aget-byte v4, v4, v3

    .line 224
    .line 225
    if-nez v4, :cond_9

    .line 226
    .line 227
    invoke-virtual {v9, v3}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 228
    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_9
    add-int/2addr v3, v10

    .line 232
    goto :goto_3

    .line 233
    :cond_a
    :goto_4
    iget-object v3, v1, LN0/g;->a0:Lv0/r0;

    .line 234
    .line 235
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    invoke-interface {v3, v9, v4}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    add-int v3, v3, p5

    .line 247
    .line 248
    :goto_5
    const/high16 v4, 0x10000000

    .line 249
    .line 250
    and-int v4, p4, v4

    .line 251
    .line 252
    if-eqz v4, :cond_c

    .line 253
    .line 254
    iget v4, v0, LN0/h;->S:I

    .line 255
    .line 256
    iget-object v5, v0, LN0/h;->p:Landroidx/media3/common/util/ParsableByteArray;

    .line 257
    .line 258
    if-le v4, v10, :cond_b

    .line 259
    .line 260
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 261
    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_b
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    iget-object v6, v1, LN0/g;->a0:Lv0/r0;

    .line 269
    .line 270
    invoke-interface {v6, v5, v4, v2}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 271
    .line 272
    .line 273
    add-int/2addr v3, v4

    .line 274
    :cond_c
    :goto_6
    move/from16 v20, v3

    .line 275
    .line 276
    iget-object v2, v1, LN0/g;->a0:Lv0/r0;

    .line 277
    .line 278
    iget-object v1, v1, LN0/g;->k:Lv0/q0;

    .line 279
    .line 280
    move-wide/from16 v17, p2

    .line 281
    .line 282
    move/from16 v19, p4

    .line 283
    .line 284
    move/from16 v21, p6

    .line 285
    .line 286
    move-object/from16 v22, v1

    .line 287
    .line 288
    move-object/from16 v16, v2

    .line 289
    .line 290
    invoke-interface/range {v16 .. v22}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 291
    .line 292
    .line 293
    :goto_7
    iput-boolean v10, v0, LN0/h;->N:Z

    .line 294
    .line 295
    return-void

    .line 296
    nop

    .line 297
    :sswitch_data_0
    .sparse-switch
        0x2c0618eb -> :sswitch_3
        0x2c065c6b -> :sswitch_2
        0x3e4ca2d8 -> :sswitch_1
        0x54c61e47 -> :sswitch_0
    .end sparse-switch

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-boolean v0, p0, LN0/h;->x:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_0
    iget-object v2, p0, LN0/h;->c:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v1, v3, :cond_2

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, LN0/g;

    .line 21
    .line 22
    iget-boolean v2, v2, LN0/g;->W:Z

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    :goto_1
    return-void

    .line 27
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iget-object v1, p0, LN0/h;->j0:Lv0/F;

    .line 31
    .line 32
    invoke-static {v1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lv0/F;

    .line 37
    .line 38
    invoke-interface {v1}, Lv0/F;->endTracks()V

    .line 39
    .line 40
    .line 41
    iput-boolean v0, p0, LN0/h;->x:Z

    .line 42
    .line 43
    return-void
.end method

.method public endMasterElement(I)V
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    const-string v2, "A_OPUS"

    const/16 v3, 0x8

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 2
    iget-object v9, v0, LN0/h;->j0:Lv0/F;

    invoke-static {v9}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v9, v0, LN0/h;->c:Landroid/util/SparseArray;

    const/16 v10, 0xa0

    if-eq v1, v10, :cond_4f

    const/16 v10, 0xae

    const/4 v13, 0x0

    if-eq v1, v10, :cond_2b

    iget-object v15, v0, LN0/h;->C:Landroid/util/SparseArray;

    const/16 v2, 0xb7

    const-wide/16 v16, -0x1

    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v1, v2, :cond_29

    const/16 v2, 0x4dbb

    const v3, 0x1c53bb6b

    if-eq v1, v2, :cond_27

    const/16 v2, 0x6240

    if-eq v1, v2, :cond_25

    const/16 v2, 0x6d80

    if-eq v1, v2, :cond_23

    const v2, 0x1549a966

    if-eq v1, v2, :cond_21

    const v2, 0x1654ae6b

    if-eq v1, v2, :cond_12

    if-eq v1, v3, :cond_0

    goto/16 :goto_17

    .line 4
    :cond_0
    iget-boolean v1, v0, LN0/h;->z:Z

    if-nez v1, :cond_50

    move v1, v7

    .line 5
    :goto_0
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 6
    invoke-virtual {v15, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 7
    iget-wide v1, v0, LN0/h;->v:J

    cmp-long v1, v1, v23

    if-nez v1, :cond_2

    :cond_1
    const-wide/16 v25, 0x0

    goto :goto_2

    :cond_2
    move v1, v7

    .line 8
    :goto_1
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 9
    invoke-virtual {v15, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    add-int/2addr v1, v8

    goto :goto_1

    .line 10
    :cond_3
    new-instance v14, LN0/f;

    iget-wide v1, v0, LN0/h;->v:J

    iget v3, v0, LN0/h;->I:I

    const-wide/16 v25, 0x0

    iget-wide v11, v0, LN0/h;->s:J

    iget-wide v4, v0, LN0/h;->r:J

    move-wide/from16 v16, v1

    move/from16 v18, v3

    move-wide/from16 v21, v4

    move-wide/from16 v19, v11

    invoke-direct/range {v14 .. v22}, LN0/f;-><init>(Landroid/util/SparseArray;JIJJ)V

    .line 11
    iget-object v1, v0, LN0/h;->j0:Lv0/F;

    invoke-interface {v1, v14}, Lv0/F;->seekMap(Lv0/g0;)V

    goto :goto_3

    :cond_4
    const-wide/16 v25, 0x0

    add-int/2addr v1, v8

    goto :goto_0

    .line 12
    :goto_2
    iget-object v1, v0, LN0/h;->j0:Lv0/F;

    new-instance v2, Lv0/f0;

    iget-wide v3, v0, LN0/h;->v:J

    invoke-direct {v2, v3, v4}, Lv0/f0;-><init>(J)V

    invoke-interface {v1, v2}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 13
    :goto_3
    iput-boolean v8, v0, LN0/h;->z:Z

    .line 14
    iput-boolean v7, v0, LN0/h;->D:Z

    move v1, v7

    .line 15
    :goto_4
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 16
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN0/g;

    .line 17
    iget-wide v3, v0, LN0/h;->v:J

    iget-wide v11, v0, LN0/h;->s:J

    iget-wide v13, v0, LN0/h;->r:J

    .line 18
    iget v5, v2, LN0/g;->e:I

    if-eq v5, v6, :cond_6

    :cond_5
    :goto_5
    move/from16 v21, v7

    move-object/from16 v22, v9

    goto/16 :goto_d

    .line 19
    :cond_6
    iget v5, v2, LN0/g;->d:I

    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_5

    .line 20
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_7

    goto :goto_5

    .line 21
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_8

    move/from16 v21, v7

    move/from16 v20, v8

    move-object/from16 v22, v9

    :goto_6
    move-wide/from16 v3, v23

    goto/16 :goto_b

    .line 22
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    move-wide/from16 v16, v13

    const/16 v13, 0x14

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v10

    const-wide/16 v18, 0x0

    move v13, v7

    const/4 v14, -0x1

    :goto_7
    if-ge v13, v10, :cond_c

    .line 23
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v21, v7

    move-object/from16 v7, v20

    check-cast v7, LN0/e;

    move/from16 v20, v8

    move-object/from16 v22, v9

    .line 24
    iget-wide v8, v7, LN0/e;->b:J

    const-wide/32 v27, 0x989680

    cmp-long v8, v8, v27

    if-lez v8, :cond_9

    :goto_8
    const/4 v3, -0x1

    goto :goto_a

    .line 25
    :cond_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    move-wide/from16 v27, v3

    iget-wide v3, v7, LN0/e;->b:J

    move-wide/from16 v29, v3

    iget-wide v3, v7, LN0/e;->f:J

    iget-wide v6, v7, LN0/e;->e:J

    if-ge v13, v8, :cond_a

    add-int/lit8 v8, v13, 0x1

    .line 26
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LN0/e;

    move/from16 v31, v10

    .line 27
    iget-wide v9, v8, LN0/e;->e:J

    move-wide/from16 v32, v3

    .line 28
    iget-wide v3, v8, LN0/e;->f:J

    add-long/2addr v9, v3

    add-long v6, v6, v32

    sub-long/2addr v9, v6

    .line 29
    iget-wide v3, v8, LN0/e;->b:J

    sub-long v3, v3, v29

    goto :goto_9

    :cond_a
    move-wide/from16 v32, v3

    move/from16 v31, v10

    add-long v3, v11, v16

    add-long v6, v6, v32

    sub-long v9, v3, v6

    sub-long v3, v27, v29

    :goto_9
    cmp-long v6, v3, v25

    if-lez v6, :cond_b

    long-to-double v6, v9

    long-to-double v3, v3

    div-double/2addr v6, v3

    cmpl-double v3, v6, v18

    if-lez v3, :cond_b

    move-wide/from16 v18, v6

    move v14, v13

    :cond_b
    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v20

    move/from16 v7, v21

    move-object/from16 v9, v22

    move-wide/from16 v3, v27

    move/from16 v10, v31

    const/4 v6, 0x2

    goto :goto_7

    :cond_c
    move/from16 v21, v7

    move/from16 v20, v8

    move-object/from16 v22, v9

    goto :goto_8

    :goto_a
    if-ne v14, v3, :cond_d

    goto/16 :goto_6

    .line 30
    :cond_d
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN0/e;

    .line 31
    iget-wide v3, v3, LN0/e;->b:J

    :goto_b
    cmp-long v5, v3, v23

    if-eqz v5, :cond_f

    .line 32
    iget-object v5, v2, LN0/g;->b0:Landroidx/media3/common/Format;

    invoke-static {v5}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 33
    new-instance v6, LE0/e;

    invoke-direct {v6, v3, v4}, LE0/e;-><init>(J)V

    if-nez v5, :cond_e

    .line 34
    new-instance v3, Landroidx/media3/common/Metadata;

    move/from16 v4, v20

    new-array v5, v4, [Landroidx/media3/common/Metadata$Entry;

    aput-object v6, v5, v21

    invoke-direct {v3, v5}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    goto :goto_c

    :cond_e
    move/from16 v4, v20

    .line 35
    new-array v3, v4, [Landroidx/media3/common/Metadata$Entry;

    aput-object v6, v3, v21

    invoke-virtual {v5, v3}, Landroidx/media3/common/Metadata;->copyWithAppendedEntries([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object v3

    .line 36
    :goto_c
    iget-object v4, v2, LN0/g;->b0:Landroidx/media3/common/Format;

    invoke-virtual {v4}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v3

    iput-object v3, v2, LN0/g;->b0:Landroidx/media3/common/Format;

    .line 37
    :cond_f
    :goto_d
    iget-boolean v3, v2, LN0/g;->W:Z

    if-nez v3, :cond_10

    .line 38
    iget-object v3, v2, LN0/g;->a0:Lv0/r0;

    .line 39
    invoke-static {v3}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v3, v2, LN0/g;->a0:Lv0/r0;

    iget-object v2, v2, LN0/g;->b0:Landroidx/media3/common/Format;

    invoke-static {v2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Format;

    invoke-interface {v3, v2}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    :cond_10
    const/16 v20, 0x1

    add-int/lit8 v1, v1, 0x1

    move/from16 v7, v21

    move-object/from16 v9, v22

    const/4 v6, 0x2

    const/4 v8, 0x1

    goto/16 :goto_4

    .line 41
    :cond_11
    invoke-virtual {v0}, LN0/h;->e()V

    return-void

    :cond_12
    move/from16 v21, v7

    move-object/from16 v22, v9

    move-object v4, v13

    .line 42
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_20

    .line 43
    iget-boolean v1, v0, LN0/h;->d:Z

    if-eqz v1, :cond_14

    iget-wide v1, v0, LN0/h;->K:J

    cmp-long v1, v1, v16

    if-nez v1, :cond_13

    goto :goto_e

    :cond_13
    move/from16 v1, v21

    goto :goto_f

    :cond_14
    :goto_e
    const/4 v1, 0x1

    :goto_f
    move/from16 v2, v21

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    .line 44
    :goto_10
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v2, v7, :cond_1a

    move-object/from16 v7, v22

    .line 45
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LN0/g;

    .line 46
    iget v10, v8, LN0/g;->e:I

    const/4 v9, 0x2

    if-ne v10, v9, :cond_16

    .line 47
    iget-boolean v10, v8, LN0/g;->Y:Z

    if-eqz v10, :cond_15

    .line 48
    iget v3, v8, LN0/g;->d:I

    :cond_15
    const/4 v11, -0x1

    if-ne v4, v11, :cond_18

    .line 49
    iget v4, v8, LN0/g;->d:I

    goto :goto_11

    :cond_16
    const/4 v11, -0x1

    const/4 v12, 0x1

    if-ne v10, v12, :cond_18

    .line 50
    iget-boolean v10, v8, LN0/g;->Y:Z

    if-eqz v10, :cond_17

    .line 51
    iget v5, v8, LN0/g;->d:I

    :cond_17
    if-ne v6, v11, :cond_18

    .line 52
    iget v6, v8, LN0/g;->d:I

    :cond_18
    :goto_11
    if-eqz v1, :cond_19

    .line 53
    iget-object v10, v8, LN0/g;->a0:Lv0/r0;

    .line 54
    invoke-static {v10}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-boolean v10, v8, LN0/g;->W:Z

    if-nez v10, :cond_19

    .line 56
    iget-object v10, v8, LN0/g;->a0:Lv0/r0;

    iget-object v8, v8, LN0/g;->b0:Landroidx/media3/common/Format;

    invoke-static {v8}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/common/Format;

    invoke-interface {v10, v8}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    :cond_19
    const/16 v20, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v22, v7

    goto :goto_10

    :cond_1a
    move-object/from16 v7, v22

    const/4 v11, -0x1

    if-eq v3, v11, :cond_1b

    .line 57
    iput v3, v0, LN0/h;->I:I

    goto :goto_13

    :cond_1b
    if-eq v4, v11, :cond_1c

    .line 58
    iput v4, v0, LN0/h;->I:I

    goto :goto_13

    :cond_1c
    if-eq v5, v11, :cond_1d

    .line 59
    iput v5, v0, LN0/h;->I:I

    goto :goto_13

    :cond_1d
    if-eq v6, v11, :cond_1e

    .line 60
    iput v6, v0, LN0/h;->I:I

    goto :goto_13

    .line 61
    :cond_1e
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_1f

    move/from16 v2, v21

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN0/g;

    iget v5, v2, LN0/g;->d:I

    goto :goto_12

    :cond_1f
    const/4 v5, -0x1

    :goto_12
    iput v5, v0, LN0/h;->I:I

    :goto_13
    if-eqz v1, :cond_50

    .line 62
    invoke-virtual {v0}, LN0/h;->e()V

    return-void

    .line 63
    :cond_20
    const-string v1, "No valid tracks were found"

    invoke-static {v1, v4}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 64
    :cond_21
    iget-wide v1, v0, LN0/h;->t:J

    cmp-long v1, v1, v23

    if-nez v1, :cond_22

    const-wide/32 v1, 0xf4240

    .line 65
    iput-wide v1, v0, LN0/h;->t:J

    .line 66
    :cond_22
    iget-wide v1, v0, LN0/h;->u:J

    cmp-long v3, v1, v23

    if-eqz v3, :cond_50

    .line 67
    invoke-virtual {v0, v1, v2}, LN0/h;->h(J)J

    move-result-wide v1

    iput-wide v1, v0, LN0/h;->v:J

    return-void

    :cond_23
    move-object v4, v13

    .line 68
    invoke-virtual/range {p0 .. p1}, LN0/h;->b(I)V

    .line 69
    iget-object v1, v0, LN0/h;->y:LN0/g;

    iget-boolean v2, v1, LN0/g;->i:Z

    if-eqz v2, :cond_50

    iget-object v1, v1, LN0/g;->j:[B

    if-nez v1, :cond_24

    goto/16 :goto_17

    .line 70
    :cond_24
    const-string v1, "Combining encryption and compression is not supported"

    invoke-static {v1, v4}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_25
    move-object v4, v13

    .line 71
    invoke-virtual/range {p0 .. p1}, LN0/h;->b(I)V

    .line 72
    iget-object v1, v0, LN0/h;->y:LN0/g;

    iget-boolean v2, v1, LN0/g;->i:Z

    if-eqz v2, :cond_50

    .line 73
    iget-object v2, v1, LN0/g;->k:Lv0/q0;

    if-eqz v2, :cond_26

    .line 74
    new-instance v2, Landroidx/media3/common/DrmInitData;

    new-instance v3, Landroidx/media3/common/DrmInitData$SchemeData;

    sget-object v4, Landroidx/media3/common/C;->UUID_NIL:Ljava/util/UUID;

    iget-object v5, v0, LN0/h;->y:LN0/g;

    iget-object v5, v5, LN0/g;->k:Lv0/q0;

    iget-object v5, v5, Lv0/q0;->b:[B

    const-string v6, "video/webm"

    invoke-direct {v3, v4, v6, v5}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    const/4 v4, 0x1

    new-array v4, v4, [Landroidx/media3/common/DrmInitData$SchemeData;

    const/16 v21, 0x0

    aput-object v3, v4, v21

    invoke-direct {v2, v4}, Landroidx/media3/common/DrmInitData;-><init>([Landroidx/media3/common/DrmInitData$SchemeData;)V

    iput-object v2, v1, LN0/g;->m:Landroidx/media3/common/DrmInitData;

    return-void

    .line 75
    :cond_26
    const-string v1, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-static {v1, v4}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_27
    move-object v4, v13

    .line 76
    iget v1, v0, LN0/h;->A:I

    const/4 v11, -0x1

    if-eq v1, v11, :cond_28

    iget-wide v5, v0, LN0/h;->B:J

    cmp-long v2, v5, v16

    if-eqz v2, :cond_28

    if-ne v1, v3, :cond_50

    .line 77
    iput-wide v5, v0, LN0/h;->K:J

    return-void

    .line 78
    :cond_28
    const-string v1, "Mandatory element SeekID or SeekPosition not found"

    invoke-static {v1, v4}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 79
    :cond_29
    iget-boolean v2, v0, LN0/h;->z:Z

    if-nez v2, :cond_50

    .line 80
    invoke-virtual/range {p0 .. p1}, LN0/h;->a(I)V

    .line 81
    iget-wide v1, v0, LN0/h;->E:J

    cmp-long v1, v1, v23

    if-eqz v1, :cond_50

    iget v1, v0, LN0/h;->F:I

    const/4 v11, -0x1

    if-eq v1, v11, :cond_50

    iget-wide v2, v0, LN0/h;->G:J

    cmp-long v2, v2, v16

    if-eqz v2, :cond_50

    .line 82
    invoke-virtual {v15, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2a

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iget v2, v0, LN0/h;->F:I

    invoke-virtual {v15, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    :cond_2a
    new-instance v2, LN0/e;

    iget-wide v3, v0, LN0/h;->E:J

    iget-wide v5, v0, LN0/h;->s:J

    iget-wide v7, v0, LN0/h;->G:J

    add-long/2addr v5, v7

    iget-wide v7, v0, LN0/h;->H:J

    invoke-direct/range {v2 .. v8}, LN0/e;-><init>(JJJ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2b
    move-object v7, v9

    move-object v4, v13

    const/4 v11, -0x1

    .line 86
    iget-object v1, v0, LN0/h;->y:LN0/g;

    invoke-static {v1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN0/g;

    .line 87
    iget-object v5, v1, LN0/g;->c:Ljava/lang/String;

    if-eqz v5, :cond_4e

    .line 88
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_14
    move v3, v11

    goto/16 :goto_15

    :sswitch_0
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    goto :goto_14

    :cond_2c
    const/16 v3, 0x21

    goto/16 :goto_15

    :sswitch_1
    const-string v2, "A_FLAC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_14

    :cond_2d
    const/16 v3, 0x20

    goto/16 :goto_15

    :sswitch_2
    const-string v2, "A_EAC3"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    goto :goto_14

    :cond_2e
    const/16 v3, 0x1f

    goto/16 :goto_15

    :sswitch_3
    const-string v2, "V_MPEG2"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_14

    :cond_2f
    const/16 v3, 0x1e

    goto/16 :goto_15

    :sswitch_4
    const-string v2, "S_TEXT/UTF8"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_14

    :cond_30
    const/16 v3, 0x1d

    goto/16 :goto_15

    :sswitch_5
    const-string v2, "S_TEXT/WEBVTT"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_14

    :cond_31
    const/16 v3, 0x1c

    goto/16 :goto_15

    :sswitch_6
    const-string v2, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    goto :goto_14

    :cond_32
    const/16 v3, 0x1b

    goto/16 :goto_15

    :sswitch_7
    const-string v2, "S_TEXT/SSA"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    goto :goto_14

    :cond_33
    const/16 v3, 0x1a

    goto/16 :goto_15

    :sswitch_8
    const-string v2, "S_TEXT/ASS"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    goto :goto_14

    :cond_34
    const/16 v3, 0x19

    goto/16 :goto_15

    :sswitch_9
    const-string v2, "A_PCM/INT/LIT"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    goto :goto_14

    :cond_35
    const/16 v3, 0x18

    goto/16 :goto_15

    :sswitch_a
    const-string v2, "A_PCM/INT/BIG"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    goto/16 :goto_14

    :cond_36
    const/16 v3, 0x17

    goto/16 :goto_15

    :sswitch_b
    const-string v2, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    goto/16 :goto_14

    :cond_37
    const/16 v3, 0x16

    goto/16 :goto_15

    :sswitch_c
    const-string v2, "A_DTS/EXPRESS"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    goto/16 :goto_14

    :cond_38
    const/16 v3, 0x15

    goto/16 :goto_15

    :sswitch_d
    const-string v2, "V_THEORA"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    goto/16 :goto_14

    :cond_39
    const/16 v3, 0x14

    goto/16 :goto_15

    :sswitch_e
    const-string v2, "S_HDMV/PGS"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    goto/16 :goto_14

    :cond_3a
    const/16 v3, 0x13

    goto/16 :goto_15

    :sswitch_f
    const-string v2, "V_VP9"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    goto/16 :goto_14

    :cond_3b
    const/16 v3, 0x12

    goto/16 :goto_15

    :sswitch_10
    const-string v2, "V_VP8"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    goto/16 :goto_14

    :cond_3c
    const/16 v3, 0x11

    goto/16 :goto_15

    :sswitch_11
    const-string v2, "V_AV1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    goto/16 :goto_14

    :cond_3d
    const/16 v3, 0x10

    goto/16 :goto_15

    :sswitch_12
    const-string v2, "A_DTS"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    goto/16 :goto_14

    :cond_3e
    const/16 v3, 0xf

    goto/16 :goto_15

    :sswitch_13
    const-string v2, "A_AC3"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    goto/16 :goto_14

    :cond_3f
    const/16 v3, 0xe

    goto/16 :goto_15

    :sswitch_14
    const-string v2, "A_AAC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    goto/16 :goto_14

    :cond_40
    const/16 v3, 0xd

    goto/16 :goto_15

    :sswitch_15
    const-string v2, "A_DTS/LOSSLESS"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    goto/16 :goto_14

    :cond_41
    const/16 v3, 0xc

    goto/16 :goto_15

    :sswitch_16
    const-string v2, "S_VOBSUB"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    goto/16 :goto_14

    :cond_42
    const/16 v3, 0xb

    goto/16 :goto_15

    :sswitch_17
    const-string v2, "V_MPEG4/ISO/AVC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    goto/16 :goto_14

    :cond_43
    const/16 v3, 0xa

    goto/16 :goto_15

    :sswitch_18
    const-string v2, "V_MPEG4/ISO/ASP"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    goto/16 :goto_14

    :cond_44
    const/16 v3, 0x9

    goto/16 :goto_15

    :sswitch_19
    const-string v2, "S_DVBSUB"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    goto/16 :goto_14

    :sswitch_1a
    const-string v2, "V_MS/VFW/FOURCC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    goto/16 :goto_14

    :cond_45
    const/4 v3, 0x7

    goto :goto_15

    :sswitch_1b
    const-string v2, "A_MPEG/L3"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    goto/16 :goto_14

    :cond_46
    const/4 v3, 0x6

    goto :goto_15

    :sswitch_1c
    const-string v2, "A_MPEG/L2"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    goto/16 :goto_14

    :cond_47
    const/4 v3, 0x5

    goto :goto_15

    :sswitch_1d
    const-string v2, "A_VORBIS"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    goto/16 :goto_14

    :cond_48
    const/4 v3, 0x4

    goto :goto_15

    :sswitch_1e
    const-string v2, "A_TRUEHD"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    goto/16 :goto_14

    :cond_49
    const/4 v3, 0x3

    goto :goto_15

    :sswitch_1f
    const-string v2, "A_MS/ACM"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    goto/16 :goto_14

    :cond_4a
    const/4 v3, 0x2

    goto :goto_15

    :sswitch_20
    const-string v2, "V_MPEG4/ISO/SP"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    goto/16 :goto_14

    :cond_4b
    const/4 v3, 0x1

    goto :goto_15

    :sswitch_21
    const-string v2, "V_MPEG4/ISO/AP"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    goto/16 :goto_14

    :cond_4c
    const/4 v3, 0x0

    :cond_4d
    :goto_15
    packed-switch v3, :pswitch_data_0

    goto :goto_16

    .line 89
    :pswitch_0
    iget v2, v1, LN0/g;->d:I

    invoke-virtual {v1, v2}, LN0/g;->initializeFormat(I)V

    .line 90
    iget-object v2, v0, LN0/h;->j0:Lv0/F;

    iget v3, v1, LN0/g;->d:I

    iget v5, v1, LN0/g;->e:I

    invoke-interface {v2, v3, v5}, Lv0/F;->track(II)Lv0/r0;

    move-result-object v2

    iput-object v2, v1, LN0/g;->a0:Lv0/r0;

    .line 91
    iget v2, v1, LN0/g;->d:I

    invoke-virtual {v7, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    :goto_16
    iput-object v4, v0, LN0/h;->y:LN0/g;

    return-void

    .line 93
    :cond_4e
    const-string v1, "CodecId is missing in TrackEntry element"

    invoke-static {v1, v4}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_4f
    move-object v7, v9

    const-wide/16 v25, 0x0

    .line 94
    iget v1, v0, LN0/h;->O:I

    const/4 v9, 0x2

    if-eq v1, v9, :cond_51

    :cond_50
    :goto_17
    return-void

    .line 95
    :cond_51
    iget v1, v0, LN0/h;->U:I

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN0/g;

    .line 96
    iget-object v4, v1, LN0/g;->a0:Lv0/r0;

    .line 97
    invoke-static {v4}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-wide v4, v0, LN0/h;->Z:J

    cmp-long v4, v4, v25

    if-lez v4, :cond_52

    iget-object v4, v1, LN0/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 99
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 100
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v3, v0, LN0/h;->Z:J

    .line 101
    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 102
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 103
    iget-object v3, v0, LN0/h;->p:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset([B)V

    :cond_52
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 104
    :goto_18
    iget v4, v0, LN0/h;->S:I

    if-ge v2, v4, :cond_53

    .line 105
    iget-object v4, v0, LN0/h;->T:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    const/16 v20, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_53
    const/4 v7, 0x0

    .line 106
    :goto_19
    iget v2, v0, LN0/h;->S:I

    if-ge v7, v2, :cond_55

    .line 107
    iget-wide v4, v0, LN0/h;->P:J

    iget v2, v1, LN0/g;->f:I

    mul-int/2addr v2, v7

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v8, v2

    add-long/2addr v4, v8

    .line 108
    iget v2, v0, LN0/h;->W:I

    if-nez v7, :cond_54

    .line 109
    iget-boolean v6, v0, LN0/h;->Y:Z

    if-nez v6, :cond_54

    const/16 v20, 0x1

    or-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_54
    const/16 v20, 0x1

    .line 110
    :goto_1a
    iget-object v6, v0, LN0/h;->T:[I

    aget v6, v6, v7

    sub-int/2addr v3, v6

    move-wide/from16 v34, v4

    move v4, v2

    move v5, v6

    move v6, v3

    move-wide/from16 v2, v34

    .line 111
    invoke-virtual/range {v0 .. v6}, LN0/h;->c(LN0/g;JIII)V

    add-int/lit8 v7, v7, 0x1

    move v3, v6

    goto :goto_19

    :cond_55
    const/4 v2, 0x0

    .line 112
    iput v2, v0, LN0/h;->O:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_21
        -0x7ce7f3b0 -> :sswitch_20
        -0x76567dc0 -> :sswitch_1f
        -0x6a615338 -> :sswitch_1e
        -0x672350af -> :sswitch_1d
        -0x585f4fce -> :sswitch_1c
        -0x585f4fcd -> :sswitch_1b
        -0x51dc40b2 -> :sswitch_1a
        -0x37a9c464 -> :sswitch_19
        -0x2016c535 -> :sswitch_18
        -0x2016c4e5 -> :sswitch_17
        -0x19552dbd -> :sswitch_16
        -0x1538b2ba -> :sswitch_15
        0x3c02325 -> :sswitch_14
        0x3c02353 -> :sswitch_13
        0x3c030c5 -> :sswitch_12
        0x4e81333 -> :sswitch_11
        0x4e86155 -> :sswitch_10
        0x4e86156 -> :sswitch_f
        0x5e8da3e -> :sswitch_e
        0x1a8350d6 -> :sswitch_d
        0x2056f406 -> :sswitch_c
        0x25e26ee2 -> :sswitch_b
        0x2b45174d -> :sswitch_a
        0x2b453ce4 -> :sswitch_9
        0x2c0618eb -> :sswitch_8
        0x2c065c6b -> :sswitch_7
        0x32fdf009 -> :sswitch_6
        0x3e4ca2d8 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Lv0/D;I)V
    .locals 4

    .line 1
    iget-object v0, p0, LN0/h;->i:Landroidx/media3/common/util/ParsableByteArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lt v1, p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ge v1, p2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    mul-int/lit8 v1, v1, 0x2

    .line 21
    .line 22
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->ensureCapacity(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    sub-int v3, p2, v3

    .line 42
    .line 43
    invoke-interface {p1, v1, v2, v3}, Lv0/D;->readFully([BII)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p2}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public floatElement(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    const/16 v0, 0xb5

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x4489

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    packed-switch p1, :pswitch_data_1

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    double-to-float p2, p2

    .line 21
    iput p2, p1, LN0/g;->w:F

    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    double-to-float p2, p2

    .line 29
    iput p2, p1, LN0/g;->v:F

    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_2
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    double-to-float p2, p2

    .line 37
    iput p2, p1, LN0/g;->u:F

    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_3
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    double-to-float p2, p2

    .line 45
    iput p2, p1, LN0/g;->O:F

    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_4
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    double-to-float p2, p2

    .line 53
    iput p2, p1, LN0/g;->N:F

    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_5
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    double-to-float p2, p2

    .line 61
    iput p2, p1, LN0/g;->M:F

    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_6
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    double-to-float p2, p2

    .line 69
    iput p2, p1, LN0/g;->L:F

    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_7
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    double-to-float p2, p2

    .line 77
    iput p2, p1, LN0/g;->K:F

    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_8
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    double-to-float p2, p2

    .line 85
    iput p2, p1, LN0/g;->J:F

    .line 86
    .line 87
    return-void

    .line 88
    :pswitch_9
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    double-to-float p2, p2

    .line 93
    iput p2, p1, LN0/g;->I:F

    .line 94
    .line 95
    return-void

    .line 96
    :pswitch_a
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    double-to-float p2, p2

    .line 101
    iput p2, p1, LN0/g;->H:F

    .line 102
    .line 103
    return-void

    .line 104
    :pswitch_b
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    double-to-float p2, p2

    .line 109
    iput p2, p1, LN0/g;->G:F

    .line 110
    .line 111
    return-void

    .line 112
    :pswitch_c
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    double-to-float p2, p2

    .line 117
    iput p2, p1, LN0/g;->F:F

    .line 118
    .line 119
    return-void

    .line 120
    :cond_0
    double-to-long p1, p2

    .line 121
    iput-wide p1, p0, LN0/h;->u:J

    .line 122
    .line 123
    return-void

    .line 124
    :cond_1
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    double-to-int p2, p2

    .line 129
    iput p2, p1, LN0/g;->S:I

    .line 130
    .line 131
    return-void

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LN0/h;->a0:I

    .line 3
    .line 4
    iput v0, p0, LN0/h;->b0:I

    .line 5
    .line 6
    iput v0, p0, LN0/h;->c0:I

    .line 7
    .line 8
    iput-boolean v0, p0, LN0/h;->d0:Z

    .line 9
    .line 10
    iput-boolean v0, p0, LN0/h;->e0:Z

    .line 11
    .line 12
    iput-boolean v0, p0, LN0/h;->f0:Z

    .line 13
    .line 14
    iput v0, p0, LN0/h;->g0:I

    .line 15
    .line 16
    iput-byte v0, p0, LN0/h;->h0:B

    .line 17
    .line 18
    iput-boolean v0, p0, LN0/h;->i0:Z

    .line 19
    .line 20
    iget-object v1, p0, LN0/h;->l:Landroidx/media3/common/util/ParsableByteArray;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public getCurrentTrack(I)LN0/g;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, LN0/h;->b(I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, LN0/h;->y:LN0/g;

    .line 5
    .line 6
    return-object p1
.end method

.method public getElementType(I)I
    .locals 0

    .line 1
    sparse-switch p1, :sswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return p1

    .line 6
    :sswitch_0
    const/4 p1, 0x5

    .line 7
    return p1

    .line 8
    :sswitch_1
    const/4 p1, 0x4

    .line 9
    return p1

    .line 10
    :sswitch_2
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :sswitch_3
    const/4 p1, 0x3

    .line 13
    return p1

    .line 14
    :sswitch_4
    const/4 p1, 0x2

    .line 15
    return p1

    .line 16
    nop

    .line 17
    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xa5 -> :sswitch_1
        0xa6 -> :sswitch_2
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xee -> :sswitch_4
        0xf0 -> :sswitch_4
        0xf1 -> :sswitch_4
        0xf7 -> :sswitch_4
        0xfb -> :sswitch_4
        0x41e4 -> :sswitch_2
        0x41e7 -> :sswitch_4
        0x41ed -> :sswitch_1
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x536e -> :sswitch_3
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b2 -> :sswitch_4
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x55ee -> :sswitch_4
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x75a1 -> :sswitch_2
        0x75a2 -> :sswitch_4
        0x7670 -> :sswitch_2
        0x7671 -> :sswitch_4
        0x7672 -> :sswitch_1
        0x7673 -> :sswitch_0
        0x7674 -> :sswitch_0
        0x7675 -> :sswitch_0
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch
.end method

.method public final synthetic getSniffFailureDetails()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {p0}, Lv0/B;->a(Lv0/C;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getUnderlyingImplementation()Lv0/C;
    .locals 1

    .line 1
    invoke-static {p0}, Lv0/B;->b(Lv0/C;)Lv0/C;

    move-result-object v0

    return-object v0
.end method

.method public final h(J)J
    .locals 6

    .line 1
    iget-wide v2, p0, LN0/h;->t:J

    .line 2
    .line 3
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v0, v2, v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-wide/16 v4, 0x3e8

    .line 13
    .line 14
    move-wide v0, p1

    .line 15
    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    return-wide p1

    .line 20
    :cond_0
    const-string p1, "Can\'t scale timecode prior to timecodeScale being set."

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-static {p1, p2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    throw p1
.end method

.method public handleBlockAddIDExtraData(LN0/g;Lv0/D;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p1, LN0/g;->h:I

    .line 2
    .line 3
    const v1, 0x64767643

    .line 4
    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const v1, 0x64766343

    .line 9
    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {p2, p3}, Lv0/D;->skipFully(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    :goto_0
    new-array v0, p3, [B

    .line 19
    .line 20
    iput-object v0, p1, LN0/g;->P:[B

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-interface {p2, v0, p1, p3}, Lv0/D;->readFully([BII)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public handleBlockAdditionalData(LN0/g;ILv0/D;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    const-string p2, "V_VP9"

    .line 5
    .line 6
    iget-object p1, p1, LN0/g;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, LN0/h;->p:Landroidx/media3/common/util/ParsableByteArray;

    .line 15
    .line 16
    invoke-virtual {p1, p4}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-interface {p3, p1, p2, p4}, Lv0/D;->readFully([BII)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-interface {p3, p4}, Lv0/D;->skipFully(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final i(Lv0/D;LN0/g;IZ)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v2, LN0/g;->c:Ljava/lang/String;

    .line 10
    .line 11
    const-string v5, "S_TEXT/UTF8"

    .line 12
    .line 13
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    sget-object v2, LN0/h;->k0:[B

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, LN0/h;->j(Lv0/D;[BI)V

    .line 22
    .line 23
    .line 24
    iget v1, v0, LN0/h;->b0:I

    .line 25
    .line 26
    invoke-virtual {v0}, LN0/h;->g()V

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_0
    const-string v4, "S_TEXT/ASS"

    .line 31
    .line 32
    iget-object v5, v2, LN0/g;->c:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_20

    .line 39
    .line 40
    const-string v4, "S_TEXT/SSA"

    .line 41
    .line 42
    iget-object v5, v2, LN0/g;->c:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    goto/16 :goto_e

    .line 51
    .line 52
    :cond_1
    const-string v4, "S_TEXT/WEBVTT"

    .line 53
    .line 54
    iget-object v5, v2, LN0/g;->c:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    sget-object v2, LN0/h;->n0:[B

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2, v3}, LN0/h;->j(Lv0/D;[BI)V

    .line 65
    .line 66
    .line 67
    iget v1, v0, LN0/h;->b0:I

    .line 68
    .line 69
    invoke-virtual {v0}, LN0/h;->g()V

    .line 70
    .line 71
    .line 72
    return v1

    .line 73
    :cond_2
    iget-boolean v4, v2, LN0/g;->W:Z

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    if-eqz v4, :cond_4

    .line 77
    .line 78
    iget-object v4, v2, LN0/g;->b0:Landroidx/media3/common/Format;

    .line 79
    .line 80
    invoke-static {v4}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    invoke-static {v1, v3}, Lv0/A;->isSampleDtsHd(Lv0/D;I)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_3

    .line 88
    .line 89
    iget-object v4, v2, LN0/g;->b0:Landroidx/media3/common/Format;

    .line 90
    .line 91
    invoke-virtual {v4}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    const-string v6, "audio/vnd.dts.hd"

    .line 96
    .line 97
    invoke-virtual {v4, v6}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    iput-object v4, v2, LN0/g;->b0:Landroidx/media3/common/Format;

    .line 106
    .line 107
    :cond_3
    iget-object v4, v2, LN0/g;->a0:Lv0/r0;

    .line 108
    .line 109
    iget-object v6, v2, LN0/g;->b0:Landroidx/media3/common/Format;

    .line 110
    .line 111
    invoke-interface {v4, v6}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 112
    .line 113
    .line 114
    iput-boolean v5, v2, LN0/g;->W:Z

    .line 115
    .line 116
    invoke-virtual {v0}, LN0/h;->e()V

    .line 117
    .line 118
    .line 119
    :cond_4
    iget-object v4, v2, LN0/g;->a0:Lv0/r0;

    .line 120
    .line 121
    iget-boolean v6, v0, LN0/h;->d0:Z

    .line 122
    .line 123
    const/4 v7, 0x2

    .line 124
    const/4 v8, 0x4

    .line 125
    const/4 v9, 0x1

    .line 126
    iget-object v10, v0, LN0/h;->l:Landroidx/media3/common/util/ParsableByteArray;

    .line 127
    .line 128
    if-nez v6, :cond_15

    .line 129
    .line 130
    iget-boolean v6, v2, LN0/g;->i:Z

    .line 131
    .line 132
    iget-object v11, v0, LN0/h;->i:Landroidx/media3/common/util/ParsableByteArray;

    .line 133
    .line 134
    if-eqz v6, :cond_10

    .line 135
    .line 136
    iget v6, v0, LN0/h;->W:I

    .line 137
    .line 138
    const v12, -0x40000001    # -1.9999999f

    .line 139
    .line 140
    .line 141
    and-int/2addr v6, v12

    .line 142
    iput v6, v0, LN0/h;->W:I

    .line 143
    .line 144
    iget-boolean v6, v0, LN0/h;->e0:Z

    .line 145
    .line 146
    const/16 v12, 0x80

    .line 147
    .line 148
    if-nez v6, :cond_6

    .line 149
    .line 150
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-interface {v1, v6, v5, v9}, Lv0/D;->readFully([BII)V

    .line 155
    .line 156
    .line 157
    iget v6, v0, LN0/h;->a0:I

    .line 158
    .line 159
    add-int/2addr v6, v9

    .line 160
    iput v6, v0, LN0/h;->a0:I

    .line 161
    .line 162
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    aget-byte v6, v6, v5

    .line 167
    .line 168
    and-int/2addr v6, v12

    .line 169
    if-eq v6, v12, :cond_5

    .line 170
    .line 171
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    aget-byte v6, v6, v5

    .line 176
    .line 177
    iput-byte v6, v0, LN0/h;->h0:B

    .line 178
    .line 179
    iput-boolean v9, v0, LN0/h;->e0:Z

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_5
    const-string v1, "Extension bit is set in signal byte"

    .line 183
    .line 184
    const/4 v2, 0x0

    .line 185
    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    throw v1

    .line 190
    :cond_6
    :goto_0
    iget-byte v6, v0, LN0/h;->h0:B

    .line 191
    .line 192
    and-int/lit8 v13, v6, 0x1

    .line 193
    .line 194
    if-ne v13, v9, :cond_11

    .line 195
    .line 196
    and-int/2addr v6, v7

    .line 197
    if-ne v6, v7, :cond_7

    .line 198
    .line 199
    move v6, v9

    .line 200
    goto :goto_1

    .line 201
    :cond_7
    move v6, v5

    .line 202
    :goto_1
    iget v13, v0, LN0/h;->W:I

    .line 203
    .line 204
    const/high16 v14, 0x40000000    # 2.0f

    .line 205
    .line 206
    or-int/2addr v13, v14

    .line 207
    iput v13, v0, LN0/h;->W:I

    .line 208
    .line 209
    iget-boolean v13, v0, LN0/h;->i0:Z

    .line 210
    .line 211
    if-nez v13, :cond_9

    .line 212
    .line 213
    iget-object v13, v0, LN0/h;->n:Landroidx/media3/common/util/ParsableByteArray;

    .line 214
    .line 215
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 216
    .line 217
    .line 218
    move-result-object v14

    .line 219
    const/16 v15, 0x8

    .line 220
    .line 221
    invoke-interface {v1, v14, v5, v15}, Lv0/D;->readFully([BII)V

    .line 222
    .line 223
    .line 224
    iget v14, v0, LN0/h;->a0:I

    .line 225
    .line 226
    add-int/2addr v14, v15

    .line 227
    iput v14, v0, LN0/h;->a0:I

    .line 228
    .line 229
    iput-boolean v9, v0, LN0/h;->i0:Z

    .line 230
    .line 231
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 232
    .line 233
    .line 234
    move-result-object v14

    .line 235
    if-eqz v6, :cond_8

    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_8
    move v12, v5

    .line 239
    :goto_2
    or-int/2addr v12, v15

    .line 240
    int-to-byte v12, v12

    .line 241
    aput-byte v12, v14, v5

    .line 242
    .line 243
    invoke-virtual {v11, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 244
    .line 245
    .line 246
    invoke-interface {v4, v11, v9, v9}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 247
    .line 248
    .line 249
    iget v12, v0, LN0/h;->b0:I

    .line 250
    .line 251
    add-int/2addr v12, v9

    .line 252
    iput v12, v0, LN0/h;->b0:I

    .line 253
    .line 254
    invoke-virtual {v13, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 255
    .line 256
    .line 257
    invoke-interface {v4, v13, v15, v9}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 258
    .line 259
    .line 260
    iget v12, v0, LN0/h;->b0:I

    .line 261
    .line 262
    add-int/2addr v12, v15

    .line 263
    iput v12, v0, LN0/h;->b0:I

    .line 264
    .line 265
    :cond_9
    if-eqz v6, :cond_11

    .line 266
    .line 267
    iget-boolean v6, v0, LN0/h;->f0:Z

    .line 268
    .line 269
    if-nez v6, :cond_a

    .line 270
    .line 271
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    invoke-interface {v1, v6, v5, v9}, Lv0/D;->readFully([BII)V

    .line 276
    .line 277
    .line 278
    iget v6, v0, LN0/h;->a0:I

    .line 279
    .line 280
    add-int/2addr v6, v9

    .line 281
    iput v6, v0, LN0/h;->a0:I

    .line 282
    .line 283
    invoke-virtual {v11, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    iput v6, v0, LN0/h;->g0:I

    .line 291
    .line 292
    iput-boolean v9, v0, LN0/h;->f0:Z

    .line 293
    .line 294
    :cond_a
    iget v6, v0, LN0/h;->g0:I

    .line 295
    .line 296
    mul-int/2addr v6, v8

    .line 297
    invoke-virtual {v11, v6}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 301
    .line 302
    .line 303
    move-result-object v12

    .line 304
    invoke-interface {v1, v12, v5, v6}, Lv0/D;->readFully([BII)V

    .line 305
    .line 306
    .line 307
    iget v12, v0, LN0/h;->a0:I

    .line 308
    .line 309
    add-int/2addr v12, v6

    .line 310
    iput v12, v0, LN0/h;->a0:I

    .line 311
    .line 312
    iget v6, v0, LN0/h;->g0:I

    .line 313
    .line 314
    div-int/2addr v6, v7

    .line 315
    add-int/2addr v6, v9

    .line 316
    int-to-short v6, v6

    .line 317
    mul-int/lit8 v12, v6, 0x6

    .line 318
    .line 319
    add-int/2addr v12, v7

    .line 320
    iget-object v13, v0, LN0/h;->q:Ljava/nio/ByteBuffer;

    .line 321
    .line 322
    if-eqz v13, :cond_b

    .line 323
    .line 324
    invoke-virtual {v13}, Ljava/nio/Buffer;->capacity()I

    .line 325
    .line 326
    .line 327
    move-result v13

    .line 328
    if-ge v13, v12, :cond_c

    .line 329
    .line 330
    :cond_b
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 331
    .line 332
    .line 333
    move-result-object v13

    .line 334
    iput-object v13, v0, LN0/h;->q:Ljava/nio/ByteBuffer;

    .line 335
    .line 336
    :cond_c
    iget-object v13, v0, LN0/h;->q:Ljava/nio/ByteBuffer;

    .line 337
    .line 338
    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 339
    .line 340
    .line 341
    iget-object v13, v0, LN0/h;->q:Ljava/nio/ByteBuffer;

    .line 342
    .line 343
    invoke-virtual {v13, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 344
    .line 345
    .line 346
    move v6, v5

    .line 347
    move v13, v6

    .line 348
    :goto_3
    iget v14, v0, LN0/h;->g0:I

    .line 349
    .line 350
    if-ge v6, v14, :cond_e

    .line 351
    .line 352
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 353
    .line 354
    .line 355
    move-result v14

    .line 356
    rem-int/lit8 v15, v6, 0x2

    .line 357
    .line 358
    if-nez v15, :cond_d

    .line 359
    .line 360
    iget-object v15, v0, LN0/h;->q:Ljava/nio/ByteBuffer;

    .line 361
    .line 362
    sub-int v13, v14, v13

    .line 363
    .line 364
    int-to-short v13, v13

    .line 365
    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 366
    .line 367
    .line 368
    goto :goto_4

    .line 369
    :cond_d
    iget-object v15, v0, LN0/h;->q:Ljava/nio/ByteBuffer;

    .line 370
    .line 371
    sub-int v13, v14, v13

    .line 372
    .line 373
    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 374
    .line 375
    .line 376
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 377
    .line 378
    move v13, v14

    .line 379
    goto :goto_3

    .line 380
    :cond_e
    iget v6, v0, LN0/h;->a0:I

    .line 381
    .line 382
    sub-int v6, v3, v6

    .line 383
    .line 384
    sub-int/2addr v6, v13

    .line 385
    rem-int/2addr v14, v7

    .line 386
    if-ne v14, v9, :cond_f

    .line 387
    .line 388
    iget-object v13, v0, LN0/h;->q:Ljava/nio/ByteBuffer;

    .line 389
    .line 390
    invoke-virtual {v13, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 391
    .line 392
    .line 393
    goto :goto_5

    .line 394
    :cond_f
    iget-object v13, v0, LN0/h;->q:Ljava/nio/ByteBuffer;

    .line 395
    .line 396
    int-to-short v6, v6

    .line 397
    invoke-virtual {v13, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 398
    .line 399
    .line 400
    iget-object v6, v0, LN0/h;->q:Ljava/nio/ByteBuffer;

    .line 401
    .line 402
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 403
    .line 404
    .line 405
    :goto_5
    iget-object v6, v0, LN0/h;->q:Ljava/nio/ByteBuffer;

    .line 406
    .line 407
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    .line 408
    .line 409
    .line 410
    move-result-object v6

    .line 411
    iget-object v13, v0, LN0/h;->o:Landroidx/media3/common/util/ParsableByteArray;

    .line 412
    .line 413
    invoke-virtual {v13, v6, v12}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 414
    .line 415
    .line 416
    invoke-interface {v4, v13, v12, v9}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 417
    .line 418
    .line 419
    iget v6, v0, LN0/h;->b0:I

    .line 420
    .line 421
    add-int/2addr v6, v12

    .line 422
    iput v6, v0, LN0/h;->b0:I

    .line 423
    .line 424
    goto :goto_6

    .line 425
    :cond_10
    iget-object v6, v2, LN0/g;->j:[B

    .line 426
    .line 427
    if-eqz v6, :cond_11

    .line 428
    .line 429
    array-length v12, v6

    .line 430
    invoke-virtual {v10, v6, v12}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 431
    .line 432
    .line 433
    :cond_11
    :goto_6
    iget-object v6, v2, LN0/g;->c:Ljava/lang/String;

    .line 434
    .line 435
    const-string v12, "A_OPUS"

    .line 436
    .line 437
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v6

    .line 441
    if-eqz v6, :cond_12

    .line 442
    .line 443
    move/from16 v6, p4

    .line 444
    .line 445
    goto :goto_7

    .line 446
    :cond_12
    iget v6, v2, LN0/g;->g:I

    .line 447
    .line 448
    if-lez v6, :cond_13

    .line 449
    .line 450
    move v6, v9

    .line 451
    goto :goto_7

    .line 452
    :cond_13
    move v6, v5

    .line 453
    :goto_7
    if-eqz v6, :cond_14

    .line 454
    .line 455
    iget v6, v0, LN0/h;->W:I

    .line 456
    .line 457
    const/high16 v12, 0x10000000

    .line 458
    .line 459
    or-int/2addr v6, v12

    .line 460
    iput v6, v0, LN0/h;->W:I

    .line 461
    .line 462
    iget-object v6, v0, LN0/h;->p:Landroidx/media3/common/util/ParsableByteArray;

    .line 463
    .line 464
    invoke-virtual {v6, v5}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 468
    .line 469
    .line 470
    move-result v6

    .line 471
    add-int/2addr v6, v3

    .line 472
    iget v12, v0, LN0/h;->a0:I

    .line 473
    .line 474
    sub-int/2addr v6, v12

    .line 475
    invoke-virtual {v11, v8}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 479
    .line 480
    .line 481
    move-result-object v12

    .line 482
    shr-int/lit8 v13, v6, 0x18

    .line 483
    .line 484
    and-int/lit16 v13, v13, 0xff

    .line 485
    .line 486
    int-to-byte v13, v13

    .line 487
    aput-byte v13, v12, v5

    .line 488
    .line 489
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 490
    .line 491
    .line 492
    move-result-object v12

    .line 493
    shr-int/lit8 v13, v6, 0x10

    .line 494
    .line 495
    and-int/lit16 v13, v13, 0xff

    .line 496
    .line 497
    int-to-byte v13, v13

    .line 498
    aput-byte v13, v12, v9

    .line 499
    .line 500
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 501
    .line 502
    .line 503
    move-result-object v12

    .line 504
    shr-int/lit8 v13, v6, 0x8

    .line 505
    .line 506
    and-int/lit16 v13, v13, 0xff

    .line 507
    .line 508
    int-to-byte v13, v13

    .line 509
    aput-byte v13, v12, v7

    .line 510
    .line 511
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 512
    .line 513
    .line 514
    move-result-object v12

    .line 515
    and-int/lit16 v6, v6, 0xff

    .line 516
    .line 517
    int-to-byte v6, v6

    .line 518
    const/4 v13, 0x3

    .line 519
    aput-byte v6, v12, v13

    .line 520
    .line 521
    invoke-interface {v4, v11, v8, v7}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 522
    .line 523
    .line 524
    iget v6, v0, LN0/h;->b0:I

    .line 525
    .line 526
    add-int/2addr v6, v8

    .line 527
    iput v6, v0, LN0/h;->b0:I

    .line 528
    .line 529
    :cond_14
    iput-boolean v9, v0, LN0/h;->d0:Z

    .line 530
    .line 531
    :cond_15
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 532
    .line 533
    .line 534
    move-result v6

    .line 535
    add-int/2addr v6, v3

    .line 536
    const-string v3, "V_MPEG4/ISO/AVC"

    .line 537
    .line 538
    iget-object v11, v2, LN0/g;->c:Ljava/lang/String;

    .line 539
    .line 540
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    move-result v3

    .line 544
    if-nez v3, :cond_1a

    .line 545
    .line 546
    const-string v3, "V_MPEGH/ISO/HEVC"

    .line 547
    .line 548
    iget-object v11, v2, LN0/g;->c:Ljava/lang/String;

    .line 549
    .line 550
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    move-result v3

    .line 554
    if-eqz v3, :cond_16

    .line 555
    .line 556
    goto :goto_b

    .line 557
    :cond_16
    iget-object v3, v2, LN0/g;->V:Lv0/s0;

    .line 558
    .line 559
    if-eqz v3, :cond_18

    .line 560
    .line 561
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 562
    .line 563
    .line 564
    move-result v3

    .line 565
    if-nez v3, :cond_17

    .line 566
    .line 567
    goto :goto_8

    .line 568
    :cond_17
    move v9, v5

    .line 569
    :goto_8
    invoke-static {v9}, LP3/v;->checkState(Z)V

    .line 570
    .line 571
    .line 572
    iget-object v3, v2, LN0/g;->V:Lv0/s0;

    .line 573
    .line 574
    invoke-virtual {v3, v1}, Lv0/s0;->startSample(Lv0/D;)V

    .line 575
    .line 576
    .line 577
    :cond_18
    :goto_9
    iget v3, v0, LN0/h;->a0:I

    .line 578
    .line 579
    if-ge v3, v6, :cond_1e

    .line 580
    .line 581
    sub-int v3, v6, v3

    .line 582
    .line 583
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 584
    .line 585
    .line 586
    move-result v7

    .line 587
    if-lez v7, :cond_19

    .line 588
    .line 589
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    .line 590
    .line 591
    .line 592
    move-result v3

    .line 593
    invoke-interface {v4, v10, v3}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 594
    .line 595
    .line 596
    goto :goto_a

    .line 597
    :cond_19
    invoke-interface {v4, v1, v3, v5}, Lv0/r0;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    .line 598
    .line 599
    .line 600
    move-result v3

    .line 601
    :goto_a
    iget v7, v0, LN0/h;->a0:I

    .line 602
    .line 603
    add-int/2addr v7, v3

    .line 604
    iput v7, v0, LN0/h;->a0:I

    .line 605
    .line 606
    iget v7, v0, LN0/h;->b0:I

    .line 607
    .line 608
    add-int/2addr v7, v3

    .line 609
    iput v7, v0, LN0/h;->b0:I

    .line 610
    .line 611
    goto :goto_9

    .line 612
    :cond_1a
    :goto_b
    iget-object v3, v0, LN0/h;->h:Landroidx/media3/common/util/ParsableByteArray;

    .line 613
    .line 614
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 615
    .line 616
    .line 617
    move-result-object v11

    .line 618
    aput-byte v5, v11, v5

    .line 619
    .line 620
    aput-byte v5, v11, v9

    .line 621
    .line 622
    aput-byte v5, v11, v7

    .line 623
    .line 624
    iget v7, v2, LN0/g;->c0:I

    .line 625
    .line 626
    rsub-int/lit8 v9, v7, 0x4

    .line 627
    .line 628
    :goto_c
    iget v12, v0, LN0/h;->a0:I

    .line 629
    .line 630
    if-ge v12, v6, :cond_1e

    .line 631
    .line 632
    iget v12, v0, LN0/h;->c0:I

    .line 633
    .line 634
    if-nez v12, :cond_1c

    .line 635
    .line 636
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 637
    .line 638
    .line 639
    move-result v12

    .line 640
    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    .line 641
    .line 642
    .line 643
    move-result v12

    .line 644
    add-int v13, v9, v12

    .line 645
    .line 646
    sub-int v14, v7, v12

    .line 647
    .line 648
    invoke-interface {v1, v11, v13, v14}, Lv0/D;->readFully([BII)V

    .line 649
    .line 650
    .line 651
    if-lez v12, :cond_1b

    .line 652
    .line 653
    invoke-virtual {v10, v11, v9, v12}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 654
    .line 655
    .line 656
    :cond_1b
    iget v12, v0, LN0/h;->a0:I

    .line 657
    .line 658
    add-int/2addr v12, v7

    .line 659
    iput v12, v0, LN0/h;->a0:I

    .line 660
    .line 661
    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 665
    .line 666
    .line 667
    move-result v12

    .line 668
    iput v12, v0, LN0/h;->c0:I

    .line 669
    .line 670
    iget-object v12, v0, LN0/h;->g:Landroidx/media3/common/util/ParsableByteArray;

    .line 671
    .line 672
    invoke-virtual {v12, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 673
    .line 674
    .line 675
    invoke-interface {v4, v12, v8}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 676
    .line 677
    .line 678
    iget v12, v0, LN0/h;->b0:I

    .line 679
    .line 680
    add-int/2addr v12, v8

    .line 681
    iput v12, v0, LN0/h;->b0:I

    .line 682
    .line 683
    goto :goto_c

    .line 684
    :cond_1c
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 685
    .line 686
    .line 687
    move-result v13

    .line 688
    if-lez v13, :cond_1d

    .line 689
    .line 690
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    .line 691
    .line 692
    .line 693
    move-result v12

    .line 694
    invoke-interface {v4, v10, v12}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 695
    .line 696
    .line 697
    goto :goto_d

    .line 698
    :cond_1d
    invoke-interface {v4, v1, v12, v5}, Lv0/r0;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    .line 699
    .line 700
    .line 701
    move-result v12

    .line 702
    :goto_d
    iget v13, v0, LN0/h;->a0:I

    .line 703
    .line 704
    add-int/2addr v13, v12

    .line 705
    iput v13, v0, LN0/h;->a0:I

    .line 706
    .line 707
    iget v13, v0, LN0/h;->b0:I

    .line 708
    .line 709
    add-int/2addr v13, v12

    .line 710
    iput v13, v0, LN0/h;->b0:I

    .line 711
    .line 712
    iget v13, v0, LN0/h;->c0:I

    .line 713
    .line 714
    sub-int/2addr v13, v12

    .line 715
    iput v13, v0, LN0/h;->c0:I

    .line 716
    .line 717
    goto :goto_c

    .line 718
    :cond_1e
    const-string v1, "A_VORBIS"

    .line 719
    .line 720
    iget-object v2, v2, LN0/g;->c:Ljava/lang/String;

    .line 721
    .line 722
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 723
    .line 724
    .line 725
    move-result v1

    .line 726
    if-eqz v1, :cond_1f

    .line 727
    .line 728
    iget-object v1, v0, LN0/h;->j:Landroidx/media3/common/util/ParsableByteArray;

    .line 729
    .line 730
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 731
    .line 732
    .line 733
    invoke-interface {v4, v1, v8}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 734
    .line 735
    .line 736
    iget v1, v0, LN0/h;->b0:I

    .line 737
    .line 738
    add-int/2addr v1, v8

    .line 739
    iput v1, v0, LN0/h;->b0:I

    .line 740
    .line 741
    :cond_1f
    iget v1, v0, LN0/h;->b0:I

    .line 742
    .line 743
    invoke-virtual {v0}, LN0/h;->g()V

    .line 744
    .line 745
    .line 746
    return v1

    .line 747
    :cond_20
    :goto_e
    sget-object v2, LN0/h;->m0:[B

    .line 748
    .line 749
    invoke-virtual {v0, v1, v2, v3}, LN0/h;->j(Lv0/D;[BI)V

    .line 750
    .line 751
    .line 752
    iget v1, v0, LN0/h;->b0:I

    .line 753
    .line 754
    invoke-virtual {v0}, LN0/h;->g()V

    .line 755
    .line 756
    .line 757
    return v1
.end method

.method public final init(Lv0/F;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, LN0/h;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, LS0/t;

    .line 6
    .line 7
    iget-object v1, p0, LN0/h;->f:LS0/q;

    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, LS0/t;-><init>(Lv0/F;LS0/q;)V

    .line 10
    .line 11
    .line 12
    move-object p1, v0

    .line 13
    :cond_0
    iput-object p1, p0, LN0/h;->j0:Lv0/F;

    .line 14
    .line 15
    return-void
.end method

.method public integerElement(IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    const/16 v0, 0xf0

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    if-eq p1, v0, :cond_1a

    .line 6
    .line 7
    const/16 v0, 0xf1

    .line 8
    .line 9
    if-eq p1, v0, :cond_19

    .line 10
    .line 11
    const/16 v0, 0x5031

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const-string v2, " not supported"

    .line 15
    .line 16
    if-eq p1, v0, :cond_17

    .line 17
    .line 18
    const/16 v0, 0x5032

    .line 19
    .line 20
    const-wide/16 v3, 0x1

    .line 21
    .line 22
    if-eq p1, v0, :cond_15

    .line 23
    .line 24
    const/4 v0, -0x1

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x3

    .line 27
    const/4 v7, 0x2

    .line 28
    const/4 v8, 0x1

    .line 29
    sparse-switch p1, :sswitch_data_0

    .line 30
    .line 31
    .line 32
    packed-switch p1, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :pswitch_0
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    long-to-int p2, p2

    .line 42
    iput p2, p1, LN0/g;->E:I

    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_1
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    long-to-int p2, p2

    .line 50
    iput p2, p1, LN0/g;->D:I

    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_2
    invoke-virtual {p0, p1}, LN0/h;->b(I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, LN0/h;->y:LN0/g;

    .line 57
    .line 58
    iput-boolean v8, p1, LN0/g;->z:Z

    .line 59
    .line 60
    long-to-int p1, p2

    .line 61
    invoke-static {p1}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eq p1, v0, :cond_1b

    .line 66
    .line 67
    iget-object p2, p0, LN0/h;->y:LN0/g;

    .line 68
    .line 69
    iput p1, p2, LN0/g;->A:I

    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_3
    invoke-virtual {p0, p1}, LN0/h;->b(I)V

    .line 73
    .line 74
    .line 75
    long-to-int p1, p2

    .line 76
    invoke-static {p1}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eq p1, v0, :cond_1b

    .line 81
    .line 82
    iget-object p2, p0, LN0/h;->y:LN0/g;

    .line 83
    .line 84
    iput p1, p2, LN0/g;->B:I

    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_4
    invoke-virtual {p0, p1}, LN0/h;->b(I)V

    .line 88
    .line 89
    .line 90
    long-to-int p1, p2

    .line 91
    if-eq p1, v8, :cond_1

    .line 92
    .line 93
    if-eq p1, v7, :cond_0

    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :cond_0
    iget-object p1, p0, LN0/h;->y:LN0/g;

    .line 98
    .line 99
    iput v8, p1, LN0/g;->C:I

    .line 100
    .line 101
    return-void

    .line 102
    :cond_1
    iget-object p1, p0, LN0/h;->y:LN0/g;

    .line 103
    .line 104
    iput v7, p1, LN0/g;->C:I

    .line 105
    .line 106
    return-void

    .line 107
    :sswitch_0
    iput-wide p2, p0, LN0/h;->t:J

    .line 108
    .line 109
    return-void

    .line 110
    :sswitch_1
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    long-to-int p2, p2

    .line 115
    iput p2, p1, LN0/g;->f:I

    .line 116
    .line 117
    return-void

    .line 118
    :sswitch_2
    invoke-virtual {p0, p1}, LN0/h;->b(I)V

    .line 119
    .line 120
    .line 121
    long-to-int p1, p2

    .line 122
    if-eqz p1, :cond_5

    .line 123
    .line 124
    if-eq p1, v8, :cond_4

    .line 125
    .line 126
    if-eq p1, v7, :cond_3

    .line 127
    .line 128
    if-eq p1, v6, :cond_2

    .line 129
    .line 130
    goto/16 :goto_0

    .line 131
    .line 132
    :cond_2
    iget-object p1, p0, LN0/h;->y:LN0/g;

    .line 133
    .line 134
    iput v6, p1, LN0/g;->t:I

    .line 135
    .line 136
    return-void

    .line 137
    :cond_3
    iget-object p1, p0, LN0/h;->y:LN0/g;

    .line 138
    .line 139
    iput v7, p1, LN0/g;->t:I

    .line 140
    .line 141
    return-void

    .line 142
    :cond_4
    iget-object p1, p0, LN0/h;->y:LN0/g;

    .line 143
    .line 144
    iput v8, p1, LN0/g;->t:I

    .line 145
    .line 146
    return-void

    .line 147
    :cond_5
    iget-object p1, p0, LN0/h;->y:LN0/g;

    .line 148
    .line 149
    iput v5, p1, LN0/g;->t:I

    .line 150
    .line 151
    return-void

    .line 152
    :sswitch_3
    iput-wide p2, p0, LN0/h;->Z:J

    .line 153
    .line 154
    return-void

    .line 155
    :sswitch_4
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    long-to-int p2, p2

    .line 160
    iput p2, p1, LN0/g;->R:I

    .line 161
    .line 162
    return-void

    .line 163
    :sswitch_5
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    iput-wide p2, p1, LN0/g;->U:J

    .line 168
    .line 169
    return-void

    .line 170
    :sswitch_6
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    iput-wide p2, p1, LN0/g;->T:J

    .line 175
    .line 176
    return-void

    .line 177
    :sswitch_7
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    long-to-int p2, p2

    .line 182
    iput p2, p1, LN0/g;->g:I

    .line 183
    .line 184
    return-void

    .line 185
    :sswitch_8
    invoke-virtual {p0, p1}, LN0/h;->b(I)V

    .line 186
    .line 187
    .line 188
    iget-object p1, p0, LN0/h;->y:LN0/g;

    .line 189
    .line 190
    iput-boolean v8, p1, LN0/g;->z:Z

    .line 191
    .line 192
    long-to-int p2, p2

    .line 193
    iput p2, p1, LN0/g;->p:I

    .line 194
    .line 195
    return-void

    .line 196
    :sswitch_9
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    cmp-long p2, p2, v3

    .line 201
    .line 202
    if-nez p2, :cond_6

    .line 203
    .line 204
    move v5, v8

    .line 205
    :cond_6
    iput-boolean v5, p1, LN0/g;->X:Z

    .line 206
    .line 207
    return-void

    .line 208
    :sswitch_a
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    long-to-int p2, p2

    .line 213
    iput p2, p1, LN0/g;->r:I

    .line 214
    .line 215
    return-void

    .line 216
    :sswitch_b
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    long-to-int p2, p2

    .line 221
    iput p2, p1, LN0/g;->s:I

    .line 222
    .line 223
    return-void

    .line 224
    :sswitch_c
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    long-to-int p2, p2

    .line 229
    iput p2, p1, LN0/g;->q:I

    .line 230
    .line 231
    return-void

    .line 232
    :sswitch_d
    long-to-int p2, p2

    .line 233
    invoke-virtual {p0, p1}, LN0/h;->b(I)V

    .line 234
    .line 235
    .line 236
    if-eqz p2, :cond_a

    .line 237
    .line 238
    if-eq p2, v8, :cond_9

    .line 239
    .line 240
    if-eq p2, v6, :cond_8

    .line 241
    .line 242
    const/16 p1, 0xf

    .line 243
    .line 244
    if-eq p2, p1, :cond_7

    .line 245
    .line 246
    goto/16 :goto_0

    .line 247
    .line 248
    :cond_7
    iget-object p1, p0, LN0/h;->y:LN0/g;

    .line 249
    .line 250
    iput v6, p1, LN0/g;->y:I

    .line 251
    .line 252
    return-void

    .line 253
    :cond_8
    iget-object p1, p0, LN0/h;->y:LN0/g;

    .line 254
    .line 255
    iput v8, p1, LN0/g;->y:I

    .line 256
    .line 257
    return-void

    .line 258
    :cond_9
    iget-object p1, p0, LN0/h;->y:LN0/g;

    .line 259
    .line 260
    iput v7, p1, LN0/g;->y:I

    .line 261
    .line 262
    return-void

    .line 263
    :cond_a
    iget-object p1, p0, LN0/h;->y:LN0/g;

    .line 264
    .line 265
    iput v5, p1, LN0/g;->y:I

    .line 266
    .line 267
    return-void

    .line 268
    :sswitch_e
    iget-wide v0, p0, LN0/h;->s:J

    .line 269
    .line 270
    add-long/2addr p2, v0

    .line 271
    iput-wide p2, p0, LN0/h;->B:J

    .line 272
    .line 273
    return-void

    .line 274
    :sswitch_f
    cmp-long p1, p2, v3

    .line 275
    .line 276
    if-nez p1, :cond_b

    .line 277
    .line 278
    goto/16 :goto_0

    .line 279
    .line 280
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    const-string v0, "AESSettingsCipherMode "

    .line 283
    .line 284
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-static {p1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    throw p1

    .line 302
    :sswitch_10
    const-wide/16 v3, 0x5

    .line 303
    .line 304
    cmp-long p1, p2, v3

    .line 305
    .line 306
    if-nez p1, :cond_c

    .line 307
    .line 308
    goto/16 :goto_0

    .line 309
    .line 310
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    const-string v0, "ContentEncAlgo "

    .line 313
    .line 314
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    invoke-static {p1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    throw p1

    .line 332
    :sswitch_11
    cmp-long p1, p2, v3

    .line 333
    .line 334
    if-nez p1, :cond_d

    .line 335
    .line 336
    goto/16 :goto_0

    .line 337
    .line 338
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    const-string v0, "EBMLReadVersion "

    .line 341
    .line 342
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    invoke-static {p1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    throw p1

    .line 360
    :sswitch_12
    cmp-long p1, p2, v3

    .line 361
    .line 362
    if-ltz p1, :cond_e

    .line 363
    .line 364
    const-wide/16 v3, 0x2

    .line 365
    .line 366
    cmp-long p1, p2, v3

    .line 367
    .line 368
    if-gtz p1, :cond_e

    .line 369
    .line 370
    goto/16 :goto_0

    .line 371
    .line 372
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    const-string v0, "DocTypeReadVersion "

    .line 375
    .line 376
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    invoke-static {p1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    throw p1

    .line 394
    :sswitch_13
    const-wide/16 v3, 0x3

    .line 395
    .line 396
    cmp-long p1, p2, v3

    .line 397
    .line 398
    if-nez p1, :cond_f

    .line 399
    .line 400
    goto/16 :goto_0

    .line 401
    .line 402
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    const-string v0, "ContentCompAlgo "

    .line 405
    .line 406
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    invoke-static {p1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    throw p1

    .line 424
    :sswitch_14
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    long-to-int p2, p2

    .line 429
    iput p2, p1, LN0/g;->h:I

    .line 430
    .line 431
    return-void

    .line 432
    :sswitch_15
    iput-boolean v8, p0, LN0/h;->Y:Z

    .line 433
    .line 434
    return-void

    .line 435
    :sswitch_16
    iget-boolean v0, p0, LN0/h;->z:Z

    .line 436
    .line 437
    if-nez v0, :cond_1b

    .line 438
    .line 439
    invoke-virtual {p0, p1}, LN0/h;->a(I)V

    .line 440
    .line 441
    .line 442
    long-to-int p1, p2

    .line 443
    iput p1, p0, LN0/h;->F:I

    .line 444
    .line 445
    return-void

    .line 446
    :sswitch_17
    long-to-int p1, p2

    .line 447
    iput p1, p0, LN0/h;->X:I

    .line 448
    .line 449
    return-void

    .line 450
    :sswitch_18
    invoke-virtual {p0, p2, p3}, LN0/h;->h(J)J

    .line 451
    .line 452
    .line 453
    move-result-wide p1

    .line 454
    iput-wide p1, p0, LN0/h;->M:J

    .line 455
    .line 456
    return-void

    .line 457
    :sswitch_19
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    long-to-int p2, p2

    .line 462
    iput p2, p1, LN0/g;->d:I

    .line 463
    .line 464
    return-void

    .line 465
    :sswitch_1a
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 466
    .line 467
    .line 468
    move-result-object p1

    .line 469
    long-to-int p2, p2

    .line 470
    iput p2, p1, LN0/g;->o:I

    .line 471
    .line 472
    return-void

    .line 473
    :sswitch_1b
    iget-boolean v0, p0, LN0/h;->z:Z

    .line 474
    .line 475
    if-nez v0, :cond_1b

    .line 476
    .line 477
    invoke-virtual {p0, p1}, LN0/h;->a(I)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {p0, p2, p3}, LN0/h;->h(J)J

    .line 481
    .line 482
    .line 483
    move-result-wide p1

    .line 484
    iput-wide p1, p0, LN0/h;->E:J

    .line 485
    .line 486
    return-void

    .line 487
    :sswitch_1c
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    long-to-int p2, p2

    .line 492
    iput p2, p1, LN0/g;->n:I

    .line 493
    .line 494
    return-void

    .line 495
    :sswitch_1d
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 496
    .line 497
    .line 498
    move-result-object p1

    .line 499
    long-to-int p2, p2

    .line 500
    iput p2, p1, LN0/g;->Q:I

    .line 501
    .line 502
    return-void

    .line 503
    :sswitch_1e
    invoke-virtual {p0, p2, p3}, LN0/h;->h(J)J

    .line 504
    .line 505
    .line 506
    move-result-wide p1

    .line 507
    iput-wide p1, p0, LN0/h;->Q:J

    .line 508
    .line 509
    return-void

    .line 510
    :sswitch_1f
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 511
    .line 512
    .line 513
    move-result-object p1

    .line 514
    cmp-long p2, p2, v3

    .line 515
    .line 516
    if-nez p2, :cond_10

    .line 517
    .line 518
    move v5, v8

    .line 519
    :cond_10
    iput-boolean v5, p1, LN0/g;->Y:Z

    .line 520
    .line 521
    return-void

    .line 522
    :sswitch_20
    long-to-int p2, p2

    .line 523
    if-eq p2, v8, :cond_14

    .line 524
    .line 525
    if-eq p2, v7, :cond_13

    .line 526
    .line 527
    const/16 p3, 0x11

    .line 528
    .line 529
    if-eq p2, p3, :cond_12

    .line 530
    .line 531
    const/16 p3, 0x21

    .line 532
    .line 533
    if-eq p2, p3, :cond_11

    .line 534
    .line 535
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 536
    .line 537
    .line 538
    move-result-object p1

    .line 539
    iput v0, p1, LN0/g;->e:I

    .line 540
    .line 541
    return-void

    .line 542
    :cond_11
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 543
    .line 544
    .line 545
    move-result-object p1

    .line 546
    const/4 p2, 0x5

    .line 547
    iput p2, p1, LN0/g;->e:I

    .line 548
    .line 549
    return-void

    .line 550
    :cond_12
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 551
    .line 552
    .line 553
    move-result-object p1

    .line 554
    iput v6, p1, LN0/g;->e:I

    .line 555
    .line 556
    return-void

    .line 557
    :cond_13
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 558
    .line 559
    .line 560
    move-result-object p1

    .line 561
    iput v8, p1, LN0/g;->e:I

    .line 562
    .line 563
    return-void

    .line 564
    :cond_14
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 565
    .line 566
    .line 567
    move-result-object p1

    .line 568
    iput v7, p1, LN0/g;->e:I

    .line 569
    .line 570
    return-void

    .line 571
    :cond_15
    cmp-long p1, p2, v3

    .line 572
    .line 573
    if-nez p1, :cond_16

    .line 574
    .line 575
    goto :goto_0

    .line 576
    :cond_16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 577
    .line 578
    const-string v0, "ContentEncodingScope "

    .line 579
    .line 580
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object p1

    .line 593
    invoke-static {p1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 594
    .line 595
    .line 596
    move-result-object p1

    .line 597
    throw p1

    .line 598
    :cond_17
    const-wide/16 v3, 0x0

    .line 599
    .line 600
    cmp-long p1, p2, v3

    .line 601
    .line 602
    if-nez p1, :cond_18

    .line 603
    .line 604
    goto :goto_0

    .line 605
    :cond_18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 606
    .line 607
    const-string v0, "ContentEncodingOrder "

    .line 608
    .line 609
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object p1

    .line 622
    invoke-static {p1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 623
    .line 624
    .line 625
    move-result-object p1

    .line 626
    throw p1

    .line 627
    :cond_19
    iget-boolean v0, p0, LN0/h;->z:Z

    .line 628
    .line 629
    if-nez v0, :cond_1b

    .line 630
    .line 631
    invoke-virtual {p0, p1}, LN0/h;->a(I)V

    .line 632
    .line 633
    .line 634
    iget-wide v3, p0, LN0/h;->G:J

    .line 635
    .line 636
    cmp-long p1, v3, v1

    .line 637
    .line 638
    if-nez p1, :cond_1b

    .line 639
    .line 640
    iput-wide p2, p0, LN0/h;->G:J

    .line 641
    .line 642
    return-void

    .line 643
    :cond_1a
    iget-boolean v0, p0, LN0/h;->z:Z

    .line 644
    .line 645
    if-nez v0, :cond_1b

    .line 646
    .line 647
    invoke-virtual {p0, p1}, LN0/h;->a(I)V

    .line 648
    .line 649
    .line 650
    iget-wide v3, p0, LN0/h;->H:J

    .line 651
    .line 652
    cmp-long p1, v3, v1

    .line 653
    .line 654
    if-nez p1, :cond_1b

    .line 655
    .line 656
    iput-wide p2, p0, LN0/h;->H:J

    .line 657
    .line 658
    :cond_1b
    :goto_0
    return-void

    .line 659
    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_20
        0x88 -> :sswitch_1f
        0x9b -> :sswitch_1e
        0x9f -> :sswitch_1d
        0xb0 -> :sswitch_1c
        0xb3 -> :sswitch_1b
        0xba -> :sswitch_1a
        0xd7 -> :sswitch_19
        0xe7 -> :sswitch_18
        0xee -> :sswitch_17
        0xf7 -> :sswitch_16
        0xfb -> :sswitch_15
        0x41e7 -> :sswitch_14
        0x4254 -> :sswitch_13
        0x4285 -> :sswitch_12
        0x42f7 -> :sswitch_11
        0x47e1 -> :sswitch_10
        0x47e8 -> :sswitch_f
        0x53ac -> :sswitch_e
        0x53b8 -> :sswitch_d
        0x54b0 -> :sswitch_c
        0x54b2 -> :sswitch_b
        0x54ba -> :sswitch_a
        0x55aa -> :sswitch_9
        0x55b2 -> :sswitch_8
        0x55ee -> :sswitch_7
        0x56aa -> :sswitch_6
        0x56bb -> :sswitch_5
        0x6264 -> :sswitch_4
        0x75a2 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isLevel1Element(I)Z
    .locals 1

    .line 1
    const v0, 0x1549a966

    .line 2
    .line 3
    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const v0, 0x1f43b675

    .line 7
    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const v0, 0x1c53bb6b

    .line 12
    .line 13
    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const v0, 0x1654ae6b

    .line 17
    .line 18
    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return p1

    .line 24
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 25
    return p1
.end method

.method public final j(Lv0/D;[BI)V
    .locals 5

    .line 1
    array-length v0, p2

    .line 2
    add-int/2addr v0, p3

    .line 3
    iget-object v1, p0, LN0/h;->m:Landroidx/media3/common/util/ParsableByteArray;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-ge v2, v0, :cond_0

    .line 11
    .line 12
    add-int v2, v0, p3

    .line 13
    .line 14
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset([B)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    array-length v4, p2

    .line 27
    invoke-static {p2, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    array-length p2, p2

    .line 35
    invoke-interface {p1, v2, p2, p3}, Lv0/D;->readFully([BII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final read(Lv0/D;Lv0/c0;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LN0/h;->N:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    move v2, v1

    .line 6
    :cond_0
    if-eqz v2, :cond_2

    .line 7
    .line 8
    iget-boolean v3, p0, LN0/h;->N:Z

    .line 9
    .line 10
    if-nez v3, :cond_2

    .line 11
    .line 12
    iget-object v2, p0, LN0/h;->a:LN0/b;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, LN0/b;->read(Lv0/D;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Lv0/D;->getPosition()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    iget-boolean v5, p0, LN0/h;->J:Z

    .line 25
    .line 26
    if-eqz v5, :cond_1

    .line 27
    .line 28
    iput-wide v3, p0, LN0/h;->L:J

    .line 29
    .line 30
    iget-wide v2, p0, LN0/h;->K:J

    .line 31
    .line 32
    iput-wide v2, p2, Lv0/c0;->a:J

    .line 33
    .line 34
    iput-boolean v0, p0, LN0/h;->J:Z

    .line 35
    .line 36
    return v1

    .line 37
    :cond_1
    iget-boolean v3, p0, LN0/h;->z:Z

    .line 38
    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    iget-wide v3, p0, LN0/h;->L:J

    .line 42
    .line 43
    const-wide/16 v5, -0x1

    .line 44
    .line 45
    cmp-long v7, v3, v5

    .line 46
    .line 47
    if-eqz v7, :cond_0

    .line 48
    .line 49
    iput-wide v3, p2, Lv0/c0;->a:J

    .line 50
    .line 51
    iput-wide v5, p0, LN0/h;->L:J

    .line 52
    .line 53
    return v1

    .line 54
    :cond_2
    if-nez v2, :cond_4

    .line 55
    .line 56
    :goto_0
    iget-object p1, p0, LN0/h;->c:Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-ge v0, p2, :cond_3

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, LN0/g;

    .line 69
    .line 70
    iget-object p2, p1, LN0/g;->a0:Lv0/r0;

    .line 71
    .line 72
    invoke-static {p2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, LN0/g;->outputPendingSampleMetadata()V

    .line 76
    .line 77
    .line 78
    add-int/lit8 v0, v0, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    const/4 p1, -0x1

    .line 82
    return p1

    .line 83
    :cond_4
    return v0
.end method

.method public final release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 0

    .line 1
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, LN0/h;->M:J

    .line 7
    .line 8
    const/4 p3, 0x0

    .line 9
    iput p3, p0, LN0/h;->O:I

    .line 10
    .line 11
    iget-object p4, p0, LN0/h;->a:LN0/b;

    .line 12
    .line 13
    invoke-virtual {p4}, LN0/b;->reset()V

    .line 14
    .line 15
    .line 16
    iget-object p4, p0, LN0/h;->b:LN0/j;

    .line 17
    .line 18
    invoke-virtual {p4}, LN0/j;->reset()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, LN0/h;->g()V

    .line 22
    .line 23
    .line 24
    iput-boolean p3, p0, LN0/h;->D:Z

    .line 25
    .line 26
    iput-wide p1, p0, LN0/h;->E:J

    .line 27
    .line 28
    const/4 p1, -0x1

    .line 29
    iput p1, p0, LN0/h;->F:I

    .line 30
    .line 31
    const-wide/16 p1, -0x1

    .line 32
    .line 33
    iput-wide p1, p0, LN0/h;->G:J

    .line 34
    .line 35
    iput-wide p1, p0, LN0/h;->H:J

    .line 36
    .line 37
    iget-boolean p1, p0, LN0/h;->z:Z

    .line 38
    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    iget-object p1, p0, LN0/h;->C:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 44
    .line 45
    .line 46
    :cond_0
    :goto_0
    iget-object p1, p0, LN0/h;->c:Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-ge p3, p2, :cond_1

    .line 53
    .line 54
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, LN0/g;

    .line 59
    .line 60
    invoke-virtual {p1}, LN0/g;->reset()V

    .line 61
    .line 62
    .line 63
    add-int/lit8 p3, p3, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method

.method public final sniff(Lv0/D;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, LN0/i;

    .line 2
    .line 3
    invoke-direct {v0}, LN0/i;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, LN0/i;->sniff(Lv0/D;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public startMasterElement(IJJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LN0/h;->j0:Lv0/F;

    .line 2
    .line 3
    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const/16 v0, 0xa0

    .line 7
    .line 8
    if-eq p1, v0, :cond_d

    .line 9
    .line 10
    const/16 v0, 0xae

    .line 11
    .line 12
    if-eq p1, v0, :cond_c

    .line 13
    .line 14
    const/16 v0, 0xb7

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    const-wide/16 v2, -0x1

    .line 18
    .line 19
    if-eq p1, v0, :cond_a

    .line 20
    .line 21
    const/16 v0, 0xbb

    .line 22
    .line 23
    if-eq p1, v0, :cond_9

    .line 24
    .line 25
    const/16 v0, 0x4dbb

    .line 26
    .line 27
    if-eq p1, v0, :cond_8

    .line 28
    .line 29
    const/16 v0, 0x5035

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    if-eq p1, v0, :cond_7

    .line 33
    .line 34
    const/16 v0, 0x55d0

    .line 35
    .line 36
    if-eq p1, v0, :cond_6

    .line 37
    .line 38
    const v0, 0x18538067

    .line 39
    .line 40
    .line 41
    if-eq p1, v0, :cond_3

    .line 42
    .line 43
    const p2, 0x1c53bb6b

    .line 44
    .line 45
    .line 46
    if-eq p1, p2, :cond_2

    .line 47
    .line 48
    const p2, 0x1f43b675

    .line 49
    .line 50
    .line 51
    if-eq p1, p2, :cond_0

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    iget-boolean p1, p0, LN0/h;->z:Z

    .line 55
    .line 56
    if-nez p1, :cond_b

    .line 57
    .line 58
    iget-boolean p1, p0, LN0/h;->d:Z

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    iget-wide p1, p0, LN0/h;->K:J

    .line 63
    .line 64
    cmp-long p1, p1, v2

    .line 65
    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    iput-boolean v1, p0, LN0/h;->J:Z

    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    iget-object p1, p0, LN0/h;->j0:Lv0/F;

    .line 72
    .line 73
    new-instance p2, Lv0/f0;

    .line 74
    .line 75
    iget-wide p3, p0, LN0/h;->v:J

    .line 76
    .line 77
    invoke-direct {p2, p3, p4}, Lv0/f0;-><init>(J)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p1, p2}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 81
    .line 82
    .line 83
    iput-boolean v1, p0, LN0/h;->z:Z

    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    iget-boolean p1, p0, LN0/h;->z:Z

    .line 87
    .line 88
    if-nez p1, :cond_b

    .line 89
    .line 90
    iput-boolean v1, p0, LN0/h;->D:Z

    .line 91
    .line 92
    return-void

    .line 93
    :cond_3
    iget-wide v0, p0, LN0/h;->s:J

    .line 94
    .line 95
    cmp-long p1, v0, v2

    .line 96
    .line 97
    if-eqz p1, :cond_5

    .line 98
    .line 99
    cmp-long p1, v0, p2

    .line 100
    .line 101
    if-nez p1, :cond_4

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    const-string p1, "Multiple Segment elements not supported"

    .line 105
    .line 106
    const/4 p2, 0x0

    .line 107
    invoke-static {p1, p2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    throw p1

    .line 112
    :cond_5
    :goto_0
    iput-wide p2, p0, LN0/h;->s:J

    .line 113
    .line 114
    iput-wide p4, p0, LN0/h;->r:J

    .line 115
    .line 116
    return-void

    .line 117
    :cond_6
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iput-boolean v1, p1, LN0/g;->z:Z

    .line 122
    .line 123
    return-void

    .line 124
    :cond_7
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iput-boolean v1, p1, LN0/g;->i:Z

    .line 129
    .line 130
    return-void

    .line 131
    :cond_8
    iput v1, p0, LN0/h;->A:I

    .line 132
    .line 133
    iput-wide v2, p0, LN0/h;->B:J

    .line 134
    .line 135
    return-void

    .line 136
    :cond_9
    iget-boolean p2, p0, LN0/h;->z:Z

    .line 137
    .line 138
    if-nez p2, :cond_b

    .line 139
    .line 140
    invoke-virtual {p0, p1}, LN0/h;->a(I)V

    .line 141
    .line 142
    .line 143
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    iput-wide p1, p0, LN0/h;->E:J

    .line 149
    .line 150
    return-void

    .line 151
    :cond_a
    iget-boolean p2, p0, LN0/h;->z:Z

    .line 152
    .line 153
    if-nez p2, :cond_b

    .line 154
    .line 155
    invoke-virtual {p0, p1}, LN0/h;->a(I)V

    .line 156
    .line 157
    .line 158
    iput v1, p0, LN0/h;->F:I

    .line 159
    .line 160
    iput-wide v2, p0, LN0/h;->G:J

    .line 161
    .line 162
    iput-wide v2, p0, LN0/h;->H:J

    .line 163
    .line 164
    :cond_b
    :goto_1
    return-void

    .line 165
    :cond_c
    new-instance p1, LN0/g;

    .line 166
    .line 167
    invoke-direct {p1}, LN0/g;-><init>()V

    .line 168
    .line 169
    .line 170
    iput-object p1, p0, LN0/h;->y:LN0/g;

    .line 171
    .line 172
    iget-boolean p2, p0, LN0/h;->w:Z

    .line 173
    .line 174
    iput-boolean p2, p1, LN0/g;->a:Z

    .line 175
    .line 176
    return-void

    .line 177
    :cond_d
    const/4 p1, 0x0

    .line 178
    iput-boolean p1, p0, LN0/h;->Y:Z

    .line 179
    .line 180
    const-wide/16 p1, 0x0

    .line 181
    .line 182
    iput-wide p1, p0, LN0/h;->Z:J

    .line 183
    .line 184
    return-void
.end method

.method public stringElement(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x86

    .line 2
    .line 3
    if-eq p1, v0, :cond_5

    .line 4
    .line 5
    const/16 v0, 0x4282

    .line 6
    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/16 v0, 0x536e

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const v0, 0x22b59c

    .line 14
    .line 15
    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p2, p1, LN0/g;->Z:Ljava/lang/String;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p2, p1, LN0/g;->b:Ljava/lang/String;

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    const-string p1, "webm"

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_4

    .line 40
    .line 41
    const-string v0, "matroska"

    .line 42
    .line 43
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v0, "DocType "

    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p2, " not supported"

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const/4 p2, 0x0

    .line 70
    invoke-static {p1, p2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    throw p1

    .line 75
    :cond_4
    :goto_0
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    iput-boolean p1, p0, LN0/h;->w:Z

    .line 80
    .line 81
    return-void

    .line 82
    :cond_5
    invoke-virtual {p0, p1}, LN0/h;->getCurrentTrack(I)LN0/g;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p2, p1, LN0/g;->c:Ljava/lang/String;

    .line 87
    .line 88
    return-void
.end method
