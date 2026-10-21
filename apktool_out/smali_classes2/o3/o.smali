.class public final Lo3/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lo3/n;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:[F

.field public final e:[F

.field public final f:F

.field public final g:F


# direct methods
.method public constructor <init>(Lo3/n;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo3/o;->a:Lo3/n;

    .line 5
    .line 6
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lo3/o;->b:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lo3/o;->c:Ljava/util/List;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-static {v0, p2}, Lb/c;->h(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lo3/n;

    .line 24
    .line 25
    invoke-virtual {v1}, Lo3/n;->b()Lo3/m;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget v1, v1, Lo3/m;->a:F

    .line 30
    .line 31
    invoke-virtual {p1}, Lo3/n;->b()Lo3/m;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget v2, v2, Lo3/m;->a:F

    .line 36
    .line 37
    sub-float/2addr v1, v2

    .line 38
    iput v1, p0, Lo3/o;->f:F

    .line 39
    .line 40
    invoke-virtual {p1}, Lo3/n;->d()Lo3/m;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget p1, p1, Lo3/m;->a:F

    .line 45
    .line 46
    invoke-static {v0, p3}, Lb/c;->h(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lo3/n;

    .line 51
    .line 52
    invoke-virtual {v2}, Lo3/n;->d()Lo3/m;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget v2, v2, Lo3/m;->a:F

    .line 57
    .line 58
    sub-float/2addr p1, v2

    .line 59
    iput p1, p0, Lo3/o;->g:F

    .line 60
    .line 61
    invoke-static {v1, p2, v0}, Lo3/o;->c(FLjava/util/ArrayList;Z)[F

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iput-object p2, p0, Lo3/o;->d:[F

    .line 66
    .line 67
    const/4 p2, 0x0

    .line 68
    invoke-static {p1, p3, p2}, Lo3/o;->c(FLjava/util/ArrayList;Z)[F

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lo3/o;->e:[F

    .line 73
    .line 74
    return-void
.end method

.method public static c(FLjava/util/ArrayList;Z)[F
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [F

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_2

    .line 9
    .line 10
    add-int/lit8 v3, v2, -0x1

    .line 11
    .line 12
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    check-cast v4, Lo3/n;

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    check-cast v5, Lo3/n;

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v5}, Lo3/n;->b()Lo3/m;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    iget v5, v5, Lo3/m;->a:F

    .line 31
    .line 32
    invoke-virtual {v4}, Lo3/n;->b()Lo3/m;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    iget v4, v4, Lo3/m;->a:F

    .line 37
    .line 38
    sub-float/2addr v5, v4

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {v4}, Lo3/n;->d()Lo3/m;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iget v4, v4, Lo3/m;->a:F

    .line 45
    .line 46
    invoke-virtual {v5}, Lo3/n;->d()Lo3/m;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    iget v5, v5, Lo3/m;->a:F

    .line 51
    .line 52
    sub-float v5, v4, v5

    .line 53
    .line 54
    :goto_1
    div-float/2addr v5, p0

    .line 55
    add-int/lit8 v4, v0, -0x1

    .line 56
    .line 57
    if-ne v2, v4, :cond_1

    .line 58
    .line 59
    const/high16 v3, 0x3f800000    # 1.0f

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_1
    aget v3, v1, v3

    .line 63
    .line 64
    add-float/2addr v3, v5

    .line 65
    :goto_2
    aput v3, v1, v2

    .line 66
    .line 67
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    return-object v1
.end method

.method public static d(Lo3/n;IIFIIF)Lo3/n;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v2, v0, Lo3/n;->b:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    move/from16 v2, p1

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lo3/m;

    .line 17
    .line 18
    move/from16 v3, p2

    .line 19
    .line 20
    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lo3/l;

    .line 24
    .line 25
    iget v0, v0, Lo3/n;->a:F

    .line 26
    .line 27
    move/from16 v2, p6

    .line 28
    .line 29
    invoke-direct {v3, v0, v2}, Lo3/l;-><init>(FF)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    move/from16 v2, p3

    .line 34
    .line 35
    move v12, v0

    .line 36
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-ge v12, v4, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    move-object v13, v4

    .line 47
    check-cast v13, Lo3/m;

    .line 48
    .line 49
    iget v6, v13, Lo3/m;->d:F

    .line 50
    .line 51
    const/high16 v4, 0x40000000    # 2.0f

    .line 52
    .line 53
    div-float v4, v6, v4

    .line 54
    .line 55
    add-float/2addr v4, v2

    .line 56
    move/from16 v14, p4

    .line 57
    .line 58
    move/from16 v15, p5

    .line 59
    .line 60
    if-lt v12, v14, :cond_0

    .line 61
    .line 62
    if-gt v12, v15, :cond_0

    .line 63
    .line 64
    const/4 v5, 0x1

    .line 65
    move v7, v5

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    move v7, v0

    .line 68
    :goto_1
    const/4 v10, 0x0

    .line 69
    const/4 v11, 0x0

    .line 70
    iget v5, v13, Lo3/m;->c:F

    .line 71
    .line 72
    iget-boolean v8, v13, Lo3/m;->e:Z

    .line 73
    .line 74
    iget v9, v13, Lo3/m;->f:F

    .line 75
    .line 76
    invoke-virtual/range {v3 .. v11}, Lo3/l;->b(FFFZZFFF)V

    .line 77
    .line 78
    .line 79
    iget v4, v13, Lo3/m;->d:F

    .line 80
    .line 81
    add-float/2addr v2, v4

    .line 82
    add-int/lit8 v12, v12, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {v3}, Lo3/l;->d()Lo3/n;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    return-object v0
.end method

.method public static e(Lo3/n;FFZF)Lo3/n;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v2, v0, Lo3/n;->b:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lo3/l;

    .line 11
    .line 12
    iget v12, v0, Lo3/n;->a:F

    .line 13
    .line 14
    move/from16 v4, p2

    .line 15
    .line 16
    invoke-direct {v3, v12, v4}, Lo3/l;-><init>(FF)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v5, 0x0

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_1

    .line 29
    .line 30
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    check-cast v6, Lo3/m;

    .line 35
    .line 36
    iget-boolean v6, v6, Lo3/m;->e:Z

    .line 37
    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    add-int/lit8 v5, v5, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    sub-int/2addr v2, v5

    .line 48
    int-to-float v2, v2

    .line 49
    div-float v2, p1, v2

    .line 50
    .line 51
    const/4 v14, 0x0

    .line 52
    if-eqz p3, :cond_2

    .line 53
    .line 54
    move/from16 v4, p1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move v4, v14

    .line 58
    :goto_1
    move v15, v4

    .line 59
    const/4 v4, 0x0

    .line 60
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-ge v4, v5, :cond_7

    .line 65
    .line 66
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    check-cast v5, Lo3/m;

    .line 71
    .line 72
    iget-boolean v6, v5, Lo3/m;->e:Z

    .line 73
    .line 74
    if-eqz v6, :cond_3

    .line 75
    .line 76
    const/4 v10, 0x0

    .line 77
    const/4 v11, 0x0

    .line 78
    move v6, v4

    .line 79
    iget v4, v5, Lo3/m;->b:F

    .line 80
    .line 81
    iget v7, v5, Lo3/m;->c:F

    .line 82
    .line 83
    move v8, v6

    .line 84
    iget v6, v5, Lo3/m;->d:F

    .line 85
    .line 86
    move v9, v7

    .line 87
    const/4 v7, 0x0

    .line 88
    move/from16 v16, v8

    .line 89
    .line 90
    const/4 v8, 0x1

    .line 91
    move/from16 v17, v9

    .line 92
    .line 93
    iget v9, v5, Lo3/m;->f:F

    .line 94
    .line 95
    move/from16 v13, v16

    .line 96
    .line 97
    move/from16 v5, v17

    .line 98
    .line 99
    invoke-virtual/range {v3 .. v11}, Lo3/l;->b(FFFZZFFF)V

    .line 100
    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_3
    move v13, v4

    .line 104
    iget v4, v0, Lo3/n;->c:I

    .line 105
    .line 106
    if-lt v13, v4, :cond_4

    .line 107
    .line 108
    iget v4, v0, Lo3/n;->d:I

    .line 109
    .line 110
    if-gt v13, v4, :cond_4

    .line 111
    .line 112
    const/4 v4, 0x1

    .line 113
    move v7, v4

    .line 114
    goto :goto_3

    .line 115
    :cond_4
    const/4 v7, 0x0

    .line 116
    :goto_3
    iget v4, v5, Lo3/m;->d:F

    .line 117
    .line 118
    sub-float v6, v4, v2

    .line 119
    .line 120
    move/from16 v4, p4

    .line 121
    .line 122
    invoke-static {v6, v12, v4}, Lo3/j;->a(FFF)F

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    const/high16 v9, 0x40000000    # 2.0f

    .line 127
    .line 128
    div-float v9, v6, v9

    .line 129
    .line 130
    add-float/2addr v9, v15

    .line 131
    iget v10, v5, Lo3/m;->b:F

    .line 132
    .line 133
    sub-float v10, v9, v10

    .line 134
    .line 135
    move v11, v10

    .line 136
    if-eqz p3, :cond_5

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_5
    move v10, v14

    .line 140
    :goto_4
    if-eqz p3, :cond_6

    .line 141
    .line 142
    move v11, v14

    .line 143
    :cond_6
    move/from16 v16, v8

    .line 144
    .line 145
    const/4 v8, 0x0

    .line 146
    iget v5, v5, Lo3/m;->f:F

    .line 147
    .line 148
    move v4, v9

    .line 149
    move v9, v5

    .line 150
    move/from16 v5, v16

    .line 151
    .line 152
    invoke-virtual/range {v3 .. v11}, Lo3/l;->b(FFFZZFFF)V

    .line 153
    .line 154
    .line 155
    add-float/2addr v15, v6

    .line 156
    :goto_5
    add-int/lit8 v4, v13, 0x1

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_7
    invoke-virtual {v3}, Lo3/l;->d()Lo3/n;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    return-object v0
.end method


# virtual methods
.method public final a()Lo3/n;
    .locals 2

    .line 1
    iget-object v0, p0, Lo3/o;->c:Ljava/util/List;

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
    check-cast v0, Lo3/n;

    .line 9
    .line 10
    return-object v0
.end method

.method public final b()Lo3/n;
    .locals 2

    .line 1
    iget-object v0, p0, Lo3/o;->b:Ljava/util/List;

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
    check-cast v0, Lo3/n;

    .line 9
    .line 10
    return-object v0
.end method

.method public getShiftedState(FFF)Lo3/n;
    .locals 20

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
    move/from16 v3, p3

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x3

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x1

    .line 13
    iget v8, v0, Lo3/o;->f:F

    .line 14
    .line 15
    add-float v9, v2, v8

    .line 16
    .line 17
    iget v10, v0, Lo3/o;->g:F

    .line 18
    .line 19
    sub-float v11, v3, v10

    .line 20
    .line 21
    invoke-virtual {v0}, Lo3/o;->b()Lo3/n;

    .line 22
    .line 23
    .line 24
    move-result-object v12

    .line 25
    invoke-virtual {v12}, Lo3/n;->a()Lo3/m;

    .line 26
    .line 27
    .line 28
    move-result-object v12

    .line 29
    iget v12, v12, Lo3/m;->g:F

    .line 30
    .line 31
    invoke-virtual {v0}, Lo3/o;->a()Lo3/n;

    .line 32
    .line 33
    .line 34
    move-result-object v13

    .line 35
    invoke-virtual {v13}, Lo3/n;->c()Lo3/m;

    .line 36
    .line 37
    .line 38
    move-result-object v13

    .line 39
    iget v13, v13, Lo3/m;->h:F

    .line 40
    .line 41
    cmpl-float v8, v8, v12

    .line 42
    .line 43
    if-nez v8, :cond_0

    .line 44
    .line 45
    add-float/2addr v9, v12

    .line 46
    :cond_0
    cmpl-float v8, v10, v13

    .line 47
    .line 48
    if-nez v8, :cond_1

    .line 49
    .line 50
    sub-float/2addr v11, v13

    .line 51
    :cond_1
    cmpg-float v8, v1, v9

    .line 52
    .line 53
    const/high16 v10, 0x3f800000    # 1.0f

    .line 54
    .line 55
    const/4 v12, 0x0

    .line 56
    if-gez v8, :cond_2

    .line 57
    .line 58
    invoke-static {v10, v12, v2, v9, v1}, Lg3/a;->lerp(FFFFF)F

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iget-object v2, v0, Lo3/o;->b:Ljava/util/List;

    .line 63
    .line 64
    iget-object v3, v0, Lo3/o;->d:[F

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    cmpl-float v2, v1, v11

    .line 68
    .line 69
    if-lez v2, :cond_8

    .line 70
    .line 71
    invoke-static {v12, v10, v11, v3, v1}, Lg3/a;->lerp(FFFFF)F

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    iget-object v2, v0, Lo3/o;->c:Ljava/util/List;

    .line 76
    .line 77
    iget-object v3, v0, Lo3/o;->e:[F

    .line 78
    .line 79
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    aget v9, v3, v6

    .line 84
    .line 85
    move v11, v7

    .line 86
    :goto_1
    if-ge v11, v8, :cond_4

    .line 87
    .line 88
    aget v13, v3, v11

    .line 89
    .line 90
    cmpg-float v14, v1, v13

    .line 91
    .line 92
    if-gtz v14, :cond_3

    .line 93
    .line 94
    add-int/lit8 v3, v11, -0x1

    .line 95
    .line 96
    invoke-static {v12, v10, v9, v13, v1}, Lg3/a;->lerp(FFFFF)F

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    int-to-float v3, v3

    .line 101
    int-to-float v8, v11

    .line 102
    new-array v5, v5, [F

    .line 103
    .line 104
    aput v1, v5, v6

    .line 105
    .line 106
    aput v3, v5, v7

    .line 107
    .line 108
    aput v8, v5, v4

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    add-int/2addr v11, v7

    .line 112
    move v9, v13

    .line 113
    goto :goto_1

    .line 114
    :cond_4
    new-array v5, v5, [F

    .line 115
    .line 116
    fill-array-data v5, :array_0

    .line 117
    .line 118
    .line 119
    :goto_2
    aget v1, v5, v7

    .line 120
    .line 121
    float-to-int v1, v1

    .line 122
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Lo3/n;

    .line 127
    .line 128
    aget v3, v5, v4

    .line 129
    .line 130
    float-to-int v3, v3

    .line 131
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Lo3/n;

    .line 136
    .line 137
    aget v3, v5, v6

    .line 138
    .line 139
    iget v4, v1, Lo3/n;->a:F

    .line 140
    .line 141
    iget v5, v2, Lo3/n;->a:F

    .line 142
    .line 143
    cmpl-float v4, v4, v5

    .line 144
    .line 145
    if-nez v4, :cond_7

    .line 146
    .line 147
    iget-object v4, v1, Lo3/n;->b:Ljava/util/List;

    .line 148
    .line 149
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    iget-object v8, v2, Lo3/n;->b:Ljava/util/List;

    .line 154
    .line 155
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    if-ne v5, v9, :cond_6

    .line 160
    .line 161
    new-instance v5, Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .line 165
    .line 166
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    if-ge v6, v9, :cond_5

    .line 171
    .line 172
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    check-cast v9, Lo3/m;

    .line 177
    .line 178
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v10

    .line 182
    check-cast v10, Lo3/m;

    .line 183
    .line 184
    new-instance v11, Lo3/m;

    .line 185
    .line 186
    iget v12, v9, Lo3/m;->a:F

    .line 187
    .line 188
    iget v13, v10, Lo3/m;->a:F

    .line 189
    .line 190
    invoke-static {v12, v13, v3}, Lg3/a;->lerp(FFF)F

    .line 191
    .line 192
    .line 193
    move-result v12

    .line 194
    iget v13, v9, Lo3/m;->b:F

    .line 195
    .line 196
    iget v14, v10, Lo3/m;->b:F

    .line 197
    .line 198
    invoke-static {v13, v14, v3}, Lg3/a;->lerp(FFF)F

    .line 199
    .line 200
    .line 201
    move-result v13

    .line 202
    iget v14, v9, Lo3/m;->c:F

    .line 203
    .line 204
    iget v15, v10, Lo3/m;->c:F

    .line 205
    .line 206
    invoke-static {v14, v15, v3}, Lg3/a;->lerp(FFF)F

    .line 207
    .line 208
    .line 209
    move-result v14

    .line 210
    iget v9, v9, Lo3/m;->d:F

    .line 211
    .line 212
    iget v10, v10, Lo3/m;->d:F

    .line 213
    .line 214
    invoke-static {v9, v10, v3}, Lg3/a;->lerp(FFF)F

    .line 215
    .line 216
    .line 217
    move-result v15

    .line 218
    const/16 v18, 0x0

    .line 219
    .line 220
    const/16 v19, 0x0

    .line 221
    .line 222
    const/16 v16, 0x0

    .line 223
    .line 224
    const/16 v17, 0x0

    .line 225
    .line 226
    invoke-direct/range {v11 .. v19}, Lo3/m;-><init>(FFFFZFFF)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    add-int/2addr v6, v7

    .line 233
    goto :goto_3

    .line 234
    :cond_5
    iget v4, v1, Lo3/n;->c:I

    .line 235
    .line 236
    iget v6, v2, Lo3/n;->c:I

    .line 237
    .line 238
    invoke-static {v4, v6, v3}, Lg3/a;->lerp(IIF)I

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    iget v6, v1, Lo3/n;->d:I

    .line 243
    .line 244
    iget v2, v2, Lo3/n;->d:I

    .line 245
    .line 246
    invoke-static {v6, v2, v3}, Lg3/a;->lerp(IIF)I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    new-instance v3, Lo3/n;

    .line 251
    .line 252
    iget v1, v1, Lo3/n;->a:F

    .line 253
    .line 254
    invoke-direct {v3, v1, v5, v4, v2}, Lo3/n;-><init>(FLjava/util/ArrayList;II)V

    .line 255
    .line 256
    .line 257
    return-object v3

    .line 258
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 259
    .line 260
    const-string v2, "Keylines being linearly interpolated must have the same number of keylines."

    .line 261
    .line 262
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    throw v1

    .line 266
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 267
    .line 268
    const-string v2, "Keylines being linearly interpolated must have the same item size."

    .line 269
    .line 270
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw v1

    .line 274
    :cond_8
    iget-object v1, v0, Lo3/o;->a:Lo3/n;

    .line 275
    .line 276
    return-object v1

    .line 277
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method
