.class public final LW1/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Landroid/graphics/Matrix;

.field public final c:Landroid/graphics/Matrix;

.field public final d:Landroid/graphics/Matrix;

.field public final e:[F

.field public f:LW1/f;

.field public g:LW1/f;

.field public h:LW1/f;

.field public i:LW1/f;

.field public j:LW1/f;

.field public k:LW1/h;

.field public l:LW1/h;

.field public m:LW1/f;

.field public n:LW1/f;


# direct methods
.method public constructor <init>(LZ1/l;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LW1/t;->a:Landroid/graphics/Matrix;

    .line 10
    .line 11
    invoke-virtual {p1}, LZ1/l;->getAnchorPoint()LZ1/e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    move-object v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, LZ1/l;->getAnchorPoint()LZ1/e;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, LZ1/e;->createAnimation()LW1/f;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    iput-object v0, p0, LW1/t;->f:LW1/f;

    .line 29
    .line 30
    invoke-virtual {p1}, LZ1/l;->getPosition()LZ1/m;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    move-object v0, v1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p1}, LZ1/l;->getPosition()LZ1/m;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, LZ1/m;->createAnimation()LW1/f;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_1
    iput-object v0, p0, LW1/t;->g:LW1/f;

    .line 47
    .line 48
    invoke-virtual {p1}, LZ1/l;->getScale()LZ1/g;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    move-object v0, v1

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    invoke-virtual {p1}, LZ1/l;->getScale()LZ1/g;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, LZ1/g;->createAnimation()LW1/f;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :goto_2
    iput-object v0, p0, LW1/t;->h:LW1/f;

    .line 65
    .line 66
    invoke-virtual {p1}, LZ1/l;->getRotation()LZ1/b;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-nez v0, :cond_3

    .line 71
    .line 72
    move-object v0, v1

    .line 73
    goto :goto_3

    .line 74
    :cond_3
    invoke-virtual {p1}, LZ1/l;->getRotation()LZ1/b;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, LZ1/b;->createAnimation()LW1/f;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :goto_3
    iput-object v0, p0, LW1/t;->i:LW1/f;

    .line 83
    .line 84
    invoke-virtual {p1}, LZ1/l;->getSkew()LZ1/b;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-nez v0, :cond_4

    .line 89
    .line 90
    move-object v0, v1

    .line 91
    goto :goto_4

    .line 92
    :cond_4
    invoke-virtual {p1}, LZ1/l;->getSkew()LZ1/b;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, LZ1/b;->createAnimation()LW1/f;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, LW1/h;

    .line 101
    .line 102
    :goto_4
    iput-object v0, p0, LW1/t;->k:LW1/h;

    .line 103
    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    new-instance v0, Landroid/graphics/Matrix;

    .line 107
    .line 108
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, LW1/t;->b:Landroid/graphics/Matrix;

    .line 112
    .line 113
    new-instance v0, Landroid/graphics/Matrix;

    .line 114
    .line 115
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-object v0, p0, LW1/t;->c:Landroid/graphics/Matrix;

    .line 119
    .line 120
    new-instance v0, Landroid/graphics/Matrix;

    .line 121
    .line 122
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 123
    .line 124
    .line 125
    iput-object v0, p0, LW1/t;->d:Landroid/graphics/Matrix;

    .line 126
    .line 127
    const/16 v0, 0x9

    .line 128
    .line 129
    new-array v0, v0, [F

    .line 130
    .line 131
    iput-object v0, p0, LW1/t;->e:[F

    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_5
    iput-object v1, p0, LW1/t;->b:Landroid/graphics/Matrix;

    .line 135
    .line 136
    iput-object v1, p0, LW1/t;->c:Landroid/graphics/Matrix;

    .line 137
    .line 138
    iput-object v1, p0, LW1/t;->d:Landroid/graphics/Matrix;

    .line 139
    .line 140
    iput-object v1, p0, LW1/t;->e:[F

    .line 141
    .line 142
    :goto_5
    invoke-virtual {p1}, LZ1/l;->getSkewAngle()LZ1/b;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-nez v0, :cond_6

    .line 147
    .line 148
    move-object v0, v1

    .line 149
    goto :goto_6

    .line 150
    :cond_6
    invoke-virtual {p1}, LZ1/l;->getSkewAngle()LZ1/b;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0}, LZ1/b;->createAnimation()LW1/f;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, LW1/h;

    .line 159
    .line 160
    :goto_6
    iput-object v0, p0, LW1/t;->l:LW1/h;

    .line 161
    .line 162
    invoke-virtual {p1}, LZ1/l;->getOpacity()LZ1/d;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    if-eqz v0, :cond_7

    .line 167
    .line 168
    invoke-virtual {p1}, LZ1/l;->getOpacity()LZ1/d;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0}, LZ1/d;->createAnimation()LW1/f;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iput-object v0, p0, LW1/t;->j:LW1/f;

    .line 177
    .line 178
    :cond_7
    invoke-virtual {p1}, LZ1/l;->getStartOpacity()LZ1/b;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    if-eqz v0, :cond_8

    .line 183
    .line 184
    invoke-virtual {p1}, LZ1/l;->getStartOpacity()LZ1/b;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0}, LZ1/b;->createAnimation()LW1/f;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    iput-object v0, p0, LW1/t;->m:LW1/f;

    .line 193
    .line 194
    goto :goto_7

    .line 195
    :cond_8
    iput-object v1, p0, LW1/t;->m:LW1/f;

    .line 196
    .line 197
    :goto_7
    invoke-virtual {p1}, LZ1/l;->getEndOpacity()LZ1/b;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    if-eqz v0, :cond_9

    .line 202
    .line 203
    invoke-virtual {p1}, LZ1/l;->getEndOpacity()LZ1/b;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-virtual {p1}, LZ1/b;->createAnimation()LW1/f;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    iput-object p1, p0, LW1/t;->n:LW1/f;

    .line 212
    .line 213
    return-void

    .line 214
    :cond_9
    iput-object v1, p0, LW1/t;->n:LW1/f;

    .line 215
    .line 216
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0x9

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, LW1/t;->e:[F

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput v2, v1, v0

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void
.end method

.method public addAnimationsToLayer(Lb2/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, LW1/t;->j:LW1/f;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lb2/b;->addAnimation(LW1/f;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LW1/t;->m:LW1/f;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lb2/b;->addAnimation(LW1/f;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, LW1/t;->n:LW1/f;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lb2/b;->addAnimation(LW1/f;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, LW1/t;->f:LW1/f;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lb2/b;->addAnimation(LW1/f;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, LW1/t;->g:LW1/f;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lb2/b;->addAnimation(LW1/f;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, LW1/t;->h:LW1/f;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lb2/b;->addAnimation(LW1/f;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, LW1/t;->i:LW1/f;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lb2/b;->addAnimation(LW1/f;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, LW1/t;->k:LW1/h;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lb2/b;->addAnimation(LW1/f;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, LW1/t;->l:LW1/h;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lb2/b;->addAnimation(LW1/f;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public addListener(LW1/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, LW1/t;->j:LW1/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, LW1/t;->m:LW1/f;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, LW1/t;->n:LW1/f;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, LW1/t;->f:LW1/f;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 27
    .line 28
    .line 29
    :cond_3
    iget-object v0, p0, LW1/t;->g:LW1/f;

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    invoke-virtual {v0, p1}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 34
    .line 35
    .line 36
    :cond_4
    iget-object v0, p0, LW1/t;->h:LW1/f;

    .line 37
    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    invoke-virtual {v0, p1}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 41
    .line 42
    .line 43
    :cond_5
    iget-object v0, p0, LW1/t;->i:LW1/f;

    .line 44
    .line 45
    if-eqz v0, :cond_6

    .line 46
    .line 47
    invoke-virtual {v0, p1}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 48
    .line 49
    .line 50
    :cond_6
    iget-object v0, p0, LW1/t;->k:LW1/h;

    .line 51
    .line 52
    if-eqz v0, :cond_7

    .line 53
    .line 54
    invoke-virtual {v0, p1}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 55
    .line 56
    .line 57
    :cond_7
    iget-object v0, p0, LW1/t;->l:LW1/h;

    .line 58
    .line 59
    if-eqz v0, :cond_8

    .line 60
    .line 61
    invoke-virtual {v0, p1}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 62
    .line 63
    .line 64
    :cond_8
    return-void
.end method

.method public applyValueCallback(Ljava/lang/Object;Lg2/c;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lg2/c;",
            ")Z"
        }
    .end annotation

    .line 1
    sget-object v0, LT1/K;->a:Landroid/graphics/PointF;

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, LW1/t;->f:LW1/f;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, LW1/u;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/PointF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p2, v0}, LW1/u;-><init>(Lg2/c;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, LW1/t;->f:LW1/f;

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_1
    sget-object v0, LT1/K;->b:Landroid/graphics/PointF;

    .line 29
    .line 30
    if-ne p1, v0, :cond_3

    .line 31
    .line 32
    iget-object p1, p0, LW1/t;->g:LW1/f;

    .line 33
    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    new-instance p1, LW1/u;

    .line 37
    .line 38
    new-instance v0, Landroid/graphics/PointF;

    .line 39
    .line 40
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, p2, v0}, LW1/u;-><init>(Lg2/c;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, LW1/t;->g:LW1/f;

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_2
    invoke-virtual {p1, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :cond_3
    sget-object v0, LT1/K;->g:Lg2/d;

    .line 56
    .line 57
    if-ne p1, v0, :cond_5

    .line 58
    .line 59
    iget-object p1, p0, LW1/t;->h:LW1/f;

    .line 60
    .line 61
    if-nez p1, :cond_4

    .line 62
    .line 63
    new-instance p1, LW1/u;

    .line 64
    .line 65
    new-instance v0, Lg2/d;

    .line 66
    .line 67
    invoke-direct {v0}, Lg2/d;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, p2, v0}, LW1/u;-><init>(Lg2/c;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, LW1/t;->h:LW1/f;

    .line 74
    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :cond_4
    invoke-virtual {p1, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :cond_5
    sget-object v0, LT1/K;->h:Ljava/lang/Float;

    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    if-ne p1, v0, :cond_7

    .line 86
    .line 87
    iget-object p1, p0, LW1/t;->i:LW1/f;

    .line 88
    .line 89
    if-nez p1, :cond_6

    .line 90
    .line 91
    new-instance p1, LW1/u;

    .line 92
    .line 93
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-direct {p1, p2, v0}, LW1/u;-><init>(Lg2/c;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, LW1/t;->i:LW1/f;

    .line 101
    .line 102
    goto/16 :goto_0

    .line 103
    .line 104
    :cond_6
    invoke-virtual {p1, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_0

    .line 108
    .line 109
    :cond_7
    const/4 v0, 0x3

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const/16 v2, 0x64

    .line 115
    .line 116
    if-ne p1, v0, :cond_9

    .line 117
    .line 118
    iget-object p1, p0, LW1/t;->j:LW1/f;

    .line 119
    .line 120
    if-nez p1, :cond_8

    .line 121
    .line 122
    new-instance p1, LW1/u;

    .line 123
    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-direct {p1, p2, v0}, LW1/u;-><init>(Lg2/c;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iput-object p1, p0, LW1/t;->j:LW1/f;

    .line 132
    .line 133
    goto/16 :goto_0

    .line 134
    .line 135
    :cond_8
    invoke-virtual {p1, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :cond_9
    sget-object v0, LT1/K;->u:Ljava/lang/Float;

    .line 141
    .line 142
    if-ne p1, v0, :cond_b

    .line 143
    .line 144
    iget-object v0, p0, LW1/t;->m:LW1/f;

    .line 145
    .line 146
    if-eqz v0, :cond_b

    .line 147
    .line 148
    if-nez v0, :cond_a

    .line 149
    .line 150
    new-instance p1, LW1/u;

    .line 151
    .line 152
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-direct {p1, p2, v0}, LW1/u;-><init>(Lg2/c;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    iput-object p1, p0, LW1/t;->m:LW1/f;

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_a
    invoke-virtual {v0, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_b
    sget-object v0, LT1/K;->v:Ljava/lang/Float;

    .line 167
    .line 168
    if-ne p1, v0, :cond_d

    .line 169
    .line 170
    iget-object v0, p0, LW1/t;->n:LW1/f;

    .line 171
    .line 172
    if-eqz v0, :cond_d

    .line 173
    .line 174
    if-nez v0, :cond_c

    .line 175
    .line 176
    new-instance p1, LW1/u;

    .line 177
    .line 178
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-direct {p1, p2, v0}, LW1/u;-><init>(Lg2/c;Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    iput-object p1, p0, LW1/t;->n:LW1/f;

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_c
    invoke-virtual {v0, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_d
    sget-object v0, LT1/K;->i:Ljava/lang/Float;

    .line 193
    .line 194
    if-ne p1, v0, :cond_f

    .line 195
    .line 196
    iget-object v0, p0, LW1/t;->k:LW1/h;

    .line 197
    .line 198
    if-eqz v0, :cond_f

    .line 199
    .line 200
    if-nez v0, :cond_e

    .line 201
    .line 202
    new-instance p1, LW1/h;

    .line 203
    .line 204
    new-instance v0, Lg2/a;

    .line 205
    .line 206
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-direct {v0, v1}, Lg2/a;-><init>(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-direct {p1, v0}, LW1/h;-><init>(Ljava/util/List;)V

    .line 218
    .line 219
    .line 220
    iput-object p1, p0, LW1/t;->k:LW1/h;

    .line 221
    .line 222
    :cond_e
    iget-object p1, p0, LW1/t;->k:LW1/h;

    .line 223
    .line 224
    invoke-virtual {p1, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 225
    .line 226
    .line 227
    goto :goto_0

    .line 228
    :cond_f
    sget-object v0, LT1/K;->j:Ljava/lang/Float;

    .line 229
    .line 230
    if-ne p1, v0, :cond_11

    .line 231
    .line 232
    iget-object p1, p0, LW1/t;->l:LW1/h;

    .line 233
    .line 234
    if-eqz p1, :cond_11

    .line 235
    .line 236
    if-nez p1, :cond_10

    .line 237
    .line 238
    new-instance p1, LW1/h;

    .line 239
    .line 240
    new-instance v0, Lg2/a;

    .line 241
    .line 242
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-direct {v0, v1}, Lg2/a;-><init>(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-direct {p1, v0}, LW1/h;-><init>(Ljava/util/List;)V

    .line 254
    .line 255
    .line 256
    iput-object p1, p0, LW1/t;->l:LW1/h;

    .line 257
    .line 258
    :cond_10
    iget-object p1, p0, LW1/t;->l:LW1/h;

    .line 259
    .line 260
    invoke-virtual {p1, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 261
    .line 262
    .line 263
    :goto_0
    const/4 p1, 0x1

    .line 264
    return p1

    .line 265
    :cond_11
    const/4 p1, 0x0

    .line 266
    return p1
.end method

.method public getEndOpacity()LW1/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LW1/f;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LW1/t;->n:LW1/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 14

    .line 1
    iget-object v0, p0, LW1/t;->a:Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LW1/t;->g:LW1/f;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, LW1/f;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/graphics/PointF;

    .line 16
    .line 17
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 18
    .line 19
    cmpl-float v4, v3, v2

    .line 20
    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    iget v4, v1, Landroid/graphics/PointF;->y:F

    .line 24
    .line 25
    cmpl-float v4, v4, v2

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    :cond_0
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 30
    .line 31
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v1, p0, LW1/t;->i:LW1/f;

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    instance-of v3, v1, LW1/u;

    .line 39
    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1}, LW1/f;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/lang/Float;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    check-cast v1, LW1/h;

    .line 54
    .line 55
    invoke-virtual {v1}, LW1/h;->getFloatValue()F

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    :goto_0
    cmpl-float v3, v1, v2

    .line 60
    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 64
    .line 65
    .line 66
    :cond_3
    iget-object v1, p0, LW1/t;->k:LW1/h;

    .line 67
    .line 68
    const/high16 v3, 0x3f800000    # 1.0f

    .line 69
    .line 70
    if-eqz v1, :cond_6

    .line 71
    .line 72
    iget-object v1, p0, LW1/t;->l:LW1/h;

    .line 73
    .line 74
    const/high16 v4, 0x42b40000    # 90.0f

    .line 75
    .line 76
    if-nez v1, :cond_4

    .line 77
    .line 78
    move v1, v2

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    invoke-virtual {v1}, LW1/h;->getFloatValue()F

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    neg-float v1, v1

    .line 85
    add-float/2addr v1, v4

    .line 86
    float-to-double v5, v1

    .line 87
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    .line 88
    .line 89
    .line 90
    move-result-wide v5

    .line 91
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    .line 92
    .line 93
    .line 94
    move-result-wide v5

    .line 95
    double-to-float v1, v5

    .line 96
    :goto_1
    iget-object v5, p0, LW1/t;->l:LW1/h;

    .line 97
    .line 98
    if-nez v5, :cond_5

    .line 99
    .line 100
    move v4, v3

    .line 101
    goto :goto_2

    .line 102
    :cond_5
    invoke-virtual {v5}, LW1/h;->getFloatValue()F

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    neg-float v5, v5

    .line 107
    add-float/2addr v5, v4

    .line 108
    float-to-double v4, v5

    .line 109
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 110
    .line 111
    .line 112
    move-result-wide v4

    .line 113
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 114
    .line 115
    .line 116
    move-result-wide v4

    .line 117
    double-to-float v4, v4

    .line 118
    :goto_2
    iget-object v5, p0, LW1/t;->k:LW1/h;

    .line 119
    .line 120
    invoke-virtual {v5}, LW1/h;->getFloatValue()F

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    float-to-double v5, v5

    .line 125
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    .line 126
    .line 127
    .line 128
    move-result-wide v5

    .line 129
    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    .line 130
    .line 131
    .line 132
    move-result-wide v5

    .line 133
    double-to-float v5, v5

    .line 134
    invoke-virtual {p0}, LW1/t;->a()V

    .line 135
    .line 136
    .line 137
    iget-object v6, p0, LW1/t;->e:[F

    .line 138
    .line 139
    const/4 v7, 0x0

    .line 140
    aput v1, v6, v7

    .line 141
    .line 142
    const/4 v8, 0x1

    .line 143
    aput v4, v6, v8

    .line 144
    .line 145
    neg-float v9, v4

    .line 146
    const/4 v10, 0x3

    .line 147
    aput v9, v6, v10

    .line 148
    .line 149
    const/4 v11, 0x4

    .line 150
    aput v1, v6, v11

    .line 151
    .line 152
    const/16 v12, 0x8

    .line 153
    .line 154
    aput v3, v6, v12

    .line 155
    .line 156
    iget-object v13, p0, LW1/t;->b:Landroid/graphics/Matrix;

    .line 157
    .line 158
    invoke-virtual {v13, v6}, Landroid/graphics/Matrix;->setValues([F)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, LW1/t;->a()V

    .line 162
    .line 163
    .line 164
    aput v3, v6, v7

    .line 165
    .line 166
    aput v5, v6, v10

    .line 167
    .line 168
    aput v3, v6, v11

    .line 169
    .line 170
    aput v3, v6, v12

    .line 171
    .line 172
    iget-object v5, p0, LW1/t;->c:Landroid/graphics/Matrix;

    .line 173
    .line 174
    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->setValues([F)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, LW1/t;->a()V

    .line 178
    .line 179
    .line 180
    aput v1, v6, v7

    .line 181
    .line 182
    aput v9, v6, v8

    .line 183
    .line 184
    aput v4, v6, v10

    .line 185
    .line 186
    aput v1, v6, v11

    .line 187
    .line 188
    aput v3, v6, v12

    .line 189
    .line 190
    iget-object v1, p0, LW1/t;->d:Landroid/graphics/Matrix;

    .line 191
    .line 192
    invoke-virtual {v1, v6}, Landroid/graphics/Matrix;->setValues([F)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5, v13}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 202
    .line 203
    .line 204
    :cond_6
    iget-object v1, p0, LW1/t;->h:LW1/f;

    .line 205
    .line 206
    if-eqz v1, :cond_8

    .line 207
    .line 208
    invoke-virtual {v1}, LW1/f;->getValue()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    check-cast v1, Lg2/d;

    .line 213
    .line 214
    invoke-virtual {v1}, Lg2/d;->getScaleX()F

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    cmpl-float v4, v4, v3

    .line 219
    .line 220
    if-nez v4, :cond_7

    .line 221
    .line 222
    invoke-virtual {v1}, Lg2/d;->getScaleY()F

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    cmpl-float v3, v4, v3

    .line 227
    .line 228
    if-eqz v3, :cond_8

    .line 229
    .line 230
    :cond_7
    invoke-virtual {v1}, Lg2/d;->getScaleX()F

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    invoke-virtual {v1}, Lg2/d;->getScaleY()F

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 239
    .line 240
    .line 241
    :cond_8
    iget-object v1, p0, LW1/t;->f:LW1/f;

    .line 242
    .line 243
    if-eqz v1, :cond_a

    .line 244
    .line 245
    invoke-virtual {v1}, LW1/f;->getValue()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    check-cast v1, Landroid/graphics/PointF;

    .line 250
    .line 251
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 252
    .line 253
    cmpl-float v4, v3, v2

    .line 254
    .line 255
    if-nez v4, :cond_9

    .line 256
    .line 257
    iget v4, v1, Landroid/graphics/PointF;->y:F

    .line 258
    .line 259
    cmpl-float v2, v4, v2

    .line 260
    .line 261
    if-eqz v2, :cond_a

    .line 262
    .line 263
    :cond_9
    neg-float v2, v3

    .line 264
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 265
    .line 266
    neg-float v1, v1

    .line 267
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 268
    .line 269
    .line 270
    :cond_a
    return-object v0
.end method

.method public getMatrixForRepeater(F)Landroid/graphics/Matrix;
    .locals 8

    .line 1
    iget-object v0, p0, LW1/t;->g:LW1/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, LW1/f;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/graphics/PointF;

    .line 13
    .line 14
    :goto_0
    iget-object v2, p0, LW1/t;->h:LW1/f;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move-object v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, LW1/f;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lg2/d;

    .line 25
    .line 26
    :goto_1
    iget-object v3, p0, LW1/t;->a:Landroid/graphics/Matrix;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 29
    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget v4, v0, Landroid/graphics/PointF;->x:F

    .line 34
    .line 35
    mul-float/2addr v4, p1

    .line 36
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 37
    .line 38
    mul-float/2addr v0, p1

    .line 39
    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 40
    .line 41
    .line 42
    :cond_2
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {v2}, Lg2/d;->getScaleX()F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    float-to-double v4, v0

    .line 49
    float-to-double v6, p1

    .line 50
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    double-to-float v0, v4

    .line 55
    invoke-virtual {v2}, Lg2/d;->getScaleY()F

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    float-to-double v4, v2

    .line 60
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 61
    .line 62
    .line 63
    move-result-wide v4

    .line 64
    double-to-float v2, v4

    .line 65
    invoke-virtual {v3, v0, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 66
    .line 67
    .line 68
    :cond_3
    iget-object v0, p0, LW1/t;->i:LW1/f;

    .line 69
    .line 70
    if-eqz v0, :cond_7

    .line 71
    .line 72
    invoke-virtual {v0}, LW1/f;->getValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Ljava/lang/Float;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iget-object v2, p0, LW1/t;->f:LW1/f;

    .line 83
    .line 84
    if-nez v2, :cond_4

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    invoke-virtual {v2}, LW1/f;->getValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Landroid/graphics/PointF;

    .line 92
    .line 93
    :goto_2
    mul-float/2addr v0, p1

    .line 94
    const/4 p1, 0x0

    .line 95
    if-nez v1, :cond_5

    .line 96
    .line 97
    move v2, p1

    .line 98
    goto :goto_3

    .line 99
    :cond_5
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 100
    .line 101
    :goto_3
    if-nez v1, :cond_6

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_6
    iget p1, v1, Landroid/graphics/PointF;->y:F

    .line 105
    .line 106
    :goto_4
    invoke-virtual {v3, v0, v2, p1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 107
    .line 108
    .line 109
    :cond_7
    return-object v3
.end method

.method public getOpacity()LW1/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LW1/f;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LW1/t;->j:LW1/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStartOpacity()LW1/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LW1/f;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LW1/t;->m:LW1/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public setProgress(F)V
    .locals 1

    .line 1
    iget-object v0, p0, LW1/t;->j:LW1/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, LW1/f;->setProgress(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, LW1/t;->m:LW1/f;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, LW1/f;->setProgress(F)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, LW1/t;->n:LW1/f;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, LW1/f;->setProgress(F)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, LW1/t;->f:LW1/f;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, LW1/f;->setProgress(F)V

    .line 27
    .line 28
    .line 29
    :cond_3
    iget-object v0, p0, LW1/t;->g:LW1/f;

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    invoke-virtual {v0, p1}, LW1/f;->setProgress(F)V

    .line 34
    .line 35
    .line 36
    :cond_4
    iget-object v0, p0, LW1/t;->h:LW1/f;

    .line 37
    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    invoke-virtual {v0, p1}, LW1/f;->setProgress(F)V

    .line 41
    .line 42
    .line 43
    :cond_5
    iget-object v0, p0, LW1/t;->i:LW1/f;

    .line 44
    .line 45
    if-eqz v0, :cond_6

    .line 46
    .line 47
    invoke-virtual {v0, p1}, LW1/f;->setProgress(F)V

    .line 48
    .line 49
    .line 50
    :cond_6
    iget-object v0, p0, LW1/t;->k:LW1/h;

    .line 51
    .line 52
    if-eqz v0, :cond_7

    .line 53
    .line 54
    invoke-virtual {v0, p1}, LW1/f;->setProgress(F)V

    .line 55
    .line 56
    .line 57
    :cond_7
    iget-object v0, p0, LW1/t;->l:LW1/h;

    .line 58
    .line 59
    if-eqz v0, :cond_8

    .line 60
    .line 61
    invoke-virtual {v0, p1}, LW1/f;->setProgress(F)V

    .line 62
    .line 63
    .line 64
    :cond_8
    return-void
.end method
