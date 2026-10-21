.class public final LS0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS0/i;


# static fields
.field public static final f:Lcom/google/common/collect/G;


# instance fields
.field public final b:Lcom/google/common/collect/ImmutableList;

.field public final e:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/common/collect/G;->natural()Lcom/google/common/collect/G;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LP0/y;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-direct {v1, v2}, LP0/y;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/common/collect/G;->onResultOf(LP3/p;)Lcom/google/common/collect/G;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, LS0/d;->f:Lcom/google/common/collect/G;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LS0/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v6, 0x1

    .line 13
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    if-ne v3, v6, :cond_2

    .line 19
    .line 20
    invoke-static/range {p1 .. p1}, LQ3/A;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, LS0/c;

    .line 25
    .line 26
    iget-wide v9, v3, LS0/c;->b:J

    .line 27
    .line 28
    cmp-long v11, v9, v7

    .line 29
    .line 30
    if-nez v11, :cond_0

    .line 31
    .line 32
    const-wide/16 v4, 0x0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-wide v4, v9

    .line 36
    :goto_0
    iget-wide v9, v3, LS0/c;->c:J

    .line 37
    .line 38
    cmp-long v7, v9, v7

    .line 39
    .line 40
    iget-object v3, v3, LS0/c;->a:Lcom/google/common/collect/ImmutableList;

    .line 41
    .line 42
    if-nez v7, :cond_1

    .line 43
    .line 44
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, v0, LS0/d;->b:Lcom/google/common/collect/ImmutableList;

    .line 49
    .line 50
    new-array v1, v6, [J

    .line 51
    .line 52
    aput-wide v4, v1, v2

    .line 53
    .line 54
    iput-object v1, v0, LS0/d;->e:[J

    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-static {v3, v7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iput-object v3, v0, LS0/d;->b:Lcom/google/common/collect/ImmutableList;

    .line 66
    .line 67
    add-long/2addr v9, v4

    .line 68
    new-array v1, v1, [J

    .line 69
    .line 70
    aput-wide v4, v1, v2

    .line 71
    .line 72
    aput-wide v9, v1, v6

    .line 73
    .line 74
    iput-object v1, v0, LS0/d;->e:[J

    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    mul-int/2addr v3, v1

    .line 82
    new-array v1, v3, [J

    .line 83
    .line 84
    iput-object v1, v0, LS0/d;->e:[J

    .line 85
    .line 86
    const-wide v9, 0x7fffffffffffffffL

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    invoke-static {v1, v9, v10}, Ljava/util/Arrays;->fill([JJ)V

    .line 92
    .line 93
    .line 94
    new-instance v1, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    sget-object v3, LS0/d;->f:Lcom/google/common/collect/G;

    .line 100
    .line 101
    move-object/from16 v9, p1

    .line 102
    .line 103
    invoke-static {v3, v9}, Lcom/google/common/collect/ImmutableList;->sortedCopyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    move v9, v2

    .line 108
    :goto_1
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    if-ge v2, v10, :cond_8

    .line 113
    .line 114
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    check-cast v10, LS0/c;

    .line 119
    .line 120
    iget-wide v11, v10, LS0/c;->b:J

    .line 121
    .line 122
    cmp-long v13, v11, v7

    .line 123
    .line 124
    if-nez v13, :cond_3

    .line 125
    .line 126
    const-wide/16 v11, 0x0

    .line 127
    .line 128
    :cond_3
    iget-wide v13, v10, LS0/c;->c:J

    .line 129
    .line 130
    add-long v15, v11, v13

    .line 131
    .line 132
    iget-object v10, v10, LS0/c;->a:Lcom/google/common/collect/ImmutableList;

    .line 133
    .line 134
    if-eqz v9, :cond_4

    .line 135
    .line 136
    iget-object v4, v0, LS0/d;->e:[J

    .line 137
    .line 138
    add-int/lit8 v5, v9, -0x1

    .line 139
    .line 140
    aget-wide v17, v4, v5

    .line 141
    .line 142
    cmp-long v4, v17, v11

    .line 143
    .line 144
    if-gez v4, :cond_5

    .line 145
    .line 146
    :cond_4
    move/from16 v17, v6

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_5
    if-nez v4, :cond_6

    .line 150
    .line 151
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    check-cast v4, Lcom/google/common/collect/ImmutableList;

    .line 156
    .line 157
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_6

    .line 162
    .line 163
    invoke-virtual {v1, v5, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move/from16 v17, v6

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_6
    const-string v4, "CuesWithTimingSubtitle"

    .line 170
    .line 171
    move/from16 v17, v6

    .line 172
    .line 173
    const-string v6, "Truncating unsupported overlapping cues."

    .line 174
    .line 175
    invoke-static {v4, v6}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-object v4, v0, LS0/d;->e:[J

    .line 179
    .line 180
    aput-wide v11, v4, v5

    .line 181
    .line 182
    invoke-virtual {v1, v5, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :goto_2
    iget-object v4, v0, LS0/d;->e:[J

    .line 187
    .line 188
    add-int/lit8 v6, v9, 0x1

    .line 189
    .line 190
    aput-wide v11, v4, v9

    .line 191
    .line 192
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move v9, v6

    .line 196
    :goto_3
    cmp-long v4, v13, v7

    .line 197
    .line 198
    if-eqz v4, :cond_7

    .line 199
    .line 200
    iget-object v4, v0, LS0/d;->e:[J

    .line 201
    .line 202
    add-int/lit8 v6, v9, 0x1

    .line 203
    .line 204
    aput-wide v15, v4, v9

    .line 205
    .line 206
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move v9, v6

    .line 214
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 215
    .line 216
    move/from16 v6, v17

    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_8
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    iput-object v1, v0, LS0/d;->b:Lcom/google/common/collect/ImmutableList;

    .line 224
    .line 225
    return-void
.end method


# virtual methods
.method public getCues(J)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    iget-object v2, p0, LS0/d;->e:[J

    invoke-static {v2, p1, p2, v0, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, LS0/d;->b:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/ImmutableList;

    return-object p1
.end method

.method public bridge synthetic getCues(J)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LS0/d;->getCues(J)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public getEventTime(I)J
    .locals 3

    .line 1
    iget-object v0, p0, LS0/d;->b:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {v0}, LP3/v;->checkArgument(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, LS0/d;->e:[J

    .line 16
    .line 17
    aget-wide v1, v0, p1

    .line 18
    .line 19
    return-wide v1
.end method

.method public getEventTimeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LS0/d;->b:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 2

    .line 1
    iget-object v0, p0, LS0/d;->e:[J

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/Util;->binarySearchCeil([JJZZ)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object p2, p0, LS0/d;->b:Lcom/google/common/collect/ImmutableList;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-ge p1, p2, :cond_0

    .line 15
    .line 16
    return p1

    .line 17
    :cond_0
    const/4 p1, -0x1

    .line 18
    return p1
.end method
