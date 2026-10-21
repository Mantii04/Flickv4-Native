.class public final Lv/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/constraintlayout/core/widgets/analyzer/f;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/analyzer/f;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lv/k;->a:Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 6
    .line 7
    new-instance p2, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lv/k;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    iput-object p1, p0, Lv/k;->a:Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 15
    .line 16
    return-void
.end method

.method public static a(Landroidx/constraintlayout/core/widgets/analyzer/a;J)J
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/a;->d:Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-wide p1

    .line 8
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    move-wide v4, p1

    .line 16
    :goto_0
    if-ge v3, v2, :cond_3

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    check-cast v6, Lv/f;

    .line 23
    .line 24
    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 25
    .line 26
    if-eqz v7, :cond_2

    .line 27
    .line 28
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 29
    .line 30
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->d:Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 31
    .line 32
    if-ne v7, v0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 36
    .line 37
    int-to-long v7, v7

    .line 38
    add-long/2addr v7, p1

    .line 39
    invoke-static {v6, v7, v8}, Lv/k;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 51
    .line 52
    if-ne p0, v1, :cond_4

    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getWrapDimension()J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    iget-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 59
    .line 60
    sub-long/2addr p1, v1

    .line 61
    invoke-static {p0, p1, p2}, Lv/k;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;J)J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    iget p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 70
    .line 71
    int-to-long v2, p0

    .line 72
    sub-long/2addr p1, v2

    .line 73
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 74
    .line 75
    .line 76
    move-result-wide p0

    .line 77
    return-wide p0

    .line 78
    :cond_4
    return-wide v4
.end method

.method public static b(Landroidx/constraintlayout/core/widgets/analyzer/a;J)J
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/a;->d:Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-wide p1

    .line 8
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    move-wide v4, p1

    .line 16
    :goto_0
    if-ge v3, v2, :cond_3

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    check-cast v6, Lv/f;

    .line 23
    .line 24
    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 25
    .line 26
    if-eqz v7, :cond_2

    .line 27
    .line 28
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 29
    .line 30
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->d:Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 31
    .line 32
    if-ne v7, v0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 36
    .line 37
    int-to-long v7, v7

    .line 38
    add-long/2addr v7, p1

    .line 39
    invoke-static {v6, v7, v8}, Lv/k;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 51
    .line 52
    if-ne p0, v1, :cond_4

    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getWrapDimension()J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    iget-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 59
    .line 60
    add-long/2addr p1, v1

    .line 61
    invoke-static {p0, p1, p2}, Lv/k;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;J)J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    iget p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 70
    .line 71
    int-to-long v2, p0

    .line 72
    sub-long/2addr p1, v2

    .line 73
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 74
    .line 75
    .line 76
    move-result-wide p0

    .line 77
    return-wide p0

    .line 78
    :cond_4
    return-wide v4
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/core/widgets/analyzer/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv/k;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public computeWrapSize(Lu/f;I)J
    .locals 12

    .line 1
    iget-object v0, p0, Lv/k;->a:Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 2
    .line 3
    instance-of v1, v0, Lv/e;

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lv/e;

    .line 11
    .line 12
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    .line 13
    .line 14
    if-eq v1, p2, :cond_2

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-nez p2, :cond_1

    .line 18
    .line 19
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    :goto_0
    return-wide v2

    .line 29
    :cond_2
    if-nez p2, :cond_3

    .line 30
    .line 31
    iget-object v1, p1, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 32
    .line 33
    :goto_1
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    iget-object v1, p1, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :goto_2
    if-nez p2, :cond_4

    .line 40
    .line 41
    iget-object p1, p1, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 42
    .line 43
    :goto_3
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 44
    .line 45
    goto :goto_4

    .line 46
    :cond_4
    iget-object p1, p1, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :goto_4
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 50
    .line 51
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 58
    .line 59
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getWrapDimension()J

    .line 66
    .line 67
    .line 68
    move-result-wide v4

    .line 69
    if-eqz v1, :cond_8

    .line 70
    .line 71
    if-eqz p1, :cond_8

    .line 72
    .line 73
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 74
    .line 75
    invoke-static {p1, v2, v3}, Lv/k;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;J)J

    .line 76
    .line 77
    .line 78
    move-result-wide v6

    .line 79
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 80
    .line 81
    invoke-static {p1, v2, v3}, Lv/k;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;J)J

    .line 82
    .line 83
    .line 84
    move-result-wide v8

    .line 85
    sub-long/2addr v6, v4

    .line 86
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 87
    .line 88
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 89
    .line 90
    neg-int v1, p1

    .line 91
    int-to-long v10, v1

    .line 92
    cmp-long v1, v6, v10

    .line 93
    .line 94
    if-ltz v1, :cond_5

    .line 95
    .line 96
    int-to-long v10, p1

    .line 97
    add-long/2addr v6, v10

    .line 98
    :cond_5
    neg-long v8, v8

    .line 99
    sub-long/2addr v8, v4

    .line 100
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 101
    .line 102
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 103
    .line 104
    int-to-long v10, p1

    .line 105
    sub-long/2addr v8, v10

    .line 106
    cmp-long p1, v8, v10

    .line 107
    .line 108
    if-ltz p1, :cond_6

    .line 109
    .line 110
    sub-long/2addr v8, v10

    .line 111
    :cond_6
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Lu/e;->getBiasPercent(I)F

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    const/4 p2, 0x0

    .line 118
    cmpl-float p2, p1, p2

    .line 119
    .line 120
    const/high16 v1, 0x3f800000    # 1.0f

    .line 121
    .line 122
    if-lez p2, :cond_7

    .line 123
    .line 124
    long-to-float p2, v8

    .line 125
    div-float/2addr p2, p1

    .line 126
    long-to-float v2, v6

    .line 127
    sub-float v3, v1, p1

    .line 128
    .line 129
    div-float/2addr v2, v3

    .line 130
    add-float/2addr v2, p2

    .line 131
    float-to-long v2, v2

    .line 132
    :cond_7
    long-to-float p2, v2

    .line 133
    mul-float v2, p2, p1

    .line 134
    .line 135
    const/high16 v3, 0x3f000000    # 0.5f

    .line 136
    .line 137
    add-float/2addr v2, v3

    .line 138
    float-to-long v6, v2

    .line 139
    invoke-static {v1, p1, p2, v3}, Lb/c;->a(FFFF)F

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    float-to-long p1, p1

    .line 144
    add-long/2addr v6, v4

    .line 145
    add-long/2addr v6, p1

    .line 146
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 147
    .line 148
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 149
    .line 150
    int-to-long p1, p1

    .line 151
    add-long/2addr p1, v6

    .line 152
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 153
    .line 154
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 155
    .line 156
    int-to-long v0, v0

    .line 157
    sub-long/2addr p1, v0

    .line 158
    return-wide p1

    .line 159
    :cond_8
    if-eqz v1, :cond_9

    .line 160
    .line 161
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 162
    .line 163
    iget p2, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 164
    .line 165
    int-to-long v1, p2

    .line 166
    invoke-static {p1, v1, v2}, Lv/k;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;J)J

    .line 167
    .line 168
    .line 169
    move-result-wide p1

    .line 170
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 171
    .line 172
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 173
    .line 174
    int-to-long v0, v0

    .line 175
    add-long/2addr v0, v4

    .line 176
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 177
    .line 178
    .line 179
    move-result-wide p1

    .line 180
    return-wide p1

    .line 181
    :cond_9
    if-eqz p1, :cond_a

    .line 182
    .line 183
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 184
    .line 185
    iget p2, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 186
    .line 187
    int-to-long v1, p2

    .line 188
    invoke-static {p1, v1, v2}, Lv/k;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;J)J

    .line 189
    .line 190
    .line 191
    move-result-wide p1

    .line 192
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 193
    .line 194
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 195
    .line 196
    neg-int v0, v0

    .line 197
    int-to-long v0, v0

    .line 198
    add-long/2addr v0, v4

    .line 199
    neg-long p1, p1

    .line 200
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 201
    .line 202
    .line 203
    move-result-wide p1

    .line 204
    return-wide p1

    .line 205
    :cond_a
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 206
    .line 207
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 208
    .line 209
    int-to-long p1, p1

    .line 210
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getWrapDimension()J

    .line 211
    .line 212
    .line 213
    move-result-wide v1

    .line 214
    add-long/2addr v1, p1

    .line 215
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 216
    .line 217
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 218
    .line 219
    int-to-long p1, p1

    .line 220
    sub-long/2addr v1, p1

    .line 221
    return-wide v1
.end method
