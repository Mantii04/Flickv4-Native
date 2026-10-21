.class public final Ly1/o;
.super Ly1/r;
.source "SourceFile"


# instance fields
.field public d:LC/d;

.field public e:F

.field public f:LC/d;

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:Landroid/graphics/Paint$Cap;

.field public m:Landroid/graphics/Paint$Join;

.field public n:F


# virtual methods
.method public getFillAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Ly1/o;->h:F

    .line 2
    .line 3
    return v0
.end method

.method public getFillColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/o;->f:LC/d;

    .line 2
    .line 3
    invoke-virtual {v0}, LC/d;->getColor()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getStrokeAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Ly1/o;->g:F

    .line 2
    .line 3
    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/o;->d:LC/d;

    .line 2
    .line 3
    invoke-virtual {v0}, LC/d;->getColor()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 1
    iget v0, p0, Ly1/o;->e:F

    .line 2
    .line 3
    return v0
.end method

.method public getTrimPathEnd()F
    .locals 1

    .line 1
    iget v0, p0, Ly1/o;->j:F

    .line 2
    .line 3
    return v0
.end method

.method public getTrimPathOffset()F
    .locals 1

    .line 1
    iget v0, p0, Ly1/o;->k:F

    .line 2
    .line 3
    return v0
.end method

.method public getTrimPathStart()F
    .locals 1

    .line 1
    iget v0, p0, Ly1/o;->i:F

    .line 2
    .line 3
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7

    .line 1
    sget-object v0, Ly1/a;->c:[I

    .line 2
    .line 3
    invoke-static {p1, p3, p2, v0}, LC/v;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string p1, "pathData"

    .line 8
    .line 9
    invoke-static {p4, p1}, LC/v;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iput-object p1, p0, Ly1/r;->b:Ljava/lang/String;

    .line 25
    .line 26
    :cond_1
    const/4 p1, 0x2

    .line 27
    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    invoke-static {p2}, LD/g;->createNodesFromPathData(Ljava/lang/String;)[LD/f;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iput-object p2, p0, Ly1/r;->a:[LD/f;

    .line 38
    .line 39
    :cond_2
    const-string v4, "fillColor"

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    const/4 v6, 0x0

    .line 43
    move-object v3, p3

    .line 44
    move-object v2, p4

    .line 45
    invoke-static/range {v1 .. v6}, LC/v;->getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)LC/d;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    iput-object p2, p0, Ly1/o;->f:LC/d;

    .line 50
    .line 51
    iget p2, p0, Ly1/o;->h:F

    .line 52
    .line 53
    const-string p3, "fillAlpha"

    .line 54
    .line 55
    const/16 p4, 0xc

    .line 56
    .line 57
    invoke-static {v1, v2, p3, p4, p2}, LC/v;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    iput p2, p0, Ly1/o;->h:F

    .line 62
    .line 63
    const-string p2, "strokeLineCap"

    .line 64
    .line 65
    const/16 p3, 0x8

    .line 66
    .line 67
    const/4 p4, -0x1

    .line 68
    invoke-static {v1, v2, p2, p3, p4}, LC/v;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    iget-object p3, p0, Ly1/o;->l:Landroid/graphics/Paint$Cap;

    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    if-eqz p2, :cond_5

    .line 76
    .line 77
    if-eq p2, v0, :cond_4

    .line 78
    .line 79
    if-eq p2, p1, :cond_3

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    sget-object p3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    sget-object p3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 89
    .line 90
    :goto_0
    iput-object p3, p0, Ly1/o;->l:Landroid/graphics/Paint$Cap;

    .line 91
    .line 92
    const-string p2, "strokeLineJoin"

    .line 93
    .line 94
    const/16 p3, 0x9

    .line 95
    .line 96
    invoke-static {v1, v2, p2, p3, p4}, LC/v;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    iget-object p3, p0, Ly1/o;->m:Landroid/graphics/Paint$Join;

    .line 101
    .line 102
    if-eqz p2, :cond_8

    .line 103
    .line 104
    if-eq p2, v0, :cond_7

    .line 105
    .line 106
    if-eq p2, p1, :cond_6

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_6
    sget-object p3, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_7
    sget-object p3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_8
    sget-object p3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 116
    .line 117
    :goto_1
    iput-object p3, p0, Ly1/o;->m:Landroid/graphics/Paint$Join;

    .line 118
    .line 119
    iget p1, p0, Ly1/o;->n:F

    .line 120
    .line 121
    const-string p2, "strokeMiterLimit"

    .line 122
    .line 123
    const/16 p3, 0xa

    .line 124
    .line 125
    invoke-static {v1, v2, p2, p3, p1}, LC/v;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    iput p1, p0, Ly1/o;->n:F

    .line 130
    .line 131
    const-string v4, "strokeColor"

    .line 132
    .line 133
    const/4 v5, 0x3

    .line 134
    const/4 v6, 0x0

    .line 135
    invoke-static/range {v1 .. v6}, LC/v;->getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)LC/d;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iput-object p1, p0, Ly1/o;->d:LC/d;

    .line 140
    .line 141
    iget p1, p0, Ly1/o;->g:F

    .line 142
    .line 143
    const-string p2, "strokeAlpha"

    .line 144
    .line 145
    const/16 p3, 0xb

    .line 146
    .line 147
    invoke-static {v1, v2, p2, p3, p1}, LC/v;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    iput p1, p0, Ly1/o;->g:F

    .line 152
    .line 153
    iget p1, p0, Ly1/o;->e:F

    .line 154
    .line 155
    const-string p2, "strokeWidth"

    .line 156
    .line 157
    const/4 p3, 0x4

    .line 158
    invoke-static {v1, v2, p2, p3, p1}, LC/v;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    iput p1, p0, Ly1/o;->e:F

    .line 163
    .line 164
    iget p1, p0, Ly1/o;->j:F

    .line 165
    .line 166
    const-string p2, "trimPathEnd"

    .line 167
    .line 168
    const/4 p3, 0x6

    .line 169
    invoke-static {v1, v2, p2, p3, p1}, LC/v;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    iput p1, p0, Ly1/o;->j:F

    .line 174
    .line 175
    iget p1, p0, Ly1/o;->k:F

    .line 176
    .line 177
    const-string p2, "trimPathOffset"

    .line 178
    .line 179
    const/4 p3, 0x7

    .line 180
    invoke-static {v1, v2, p2, p3, p1}, LC/v;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    iput p1, p0, Ly1/o;->k:F

    .line 185
    .line 186
    iget p1, p0, Ly1/o;->i:F

    .line 187
    .line 188
    const-string p2, "trimPathStart"

    .line 189
    .line 190
    const/4 p3, 0x5

    .line 191
    invoke-static {v1, v2, p2, p3, p1}, LC/v;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    iput p1, p0, Ly1/o;->i:F

    .line 196
    .line 197
    iget p1, p0, Ly1/r;->c:I

    .line 198
    .line 199
    const-string p2, "fillType"

    .line 200
    .line 201
    const/16 p3, 0xd

    .line 202
    .line 203
    invoke-static {v1, v2, p2, p3, p1}, LC/v;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    iput p1, p0, Ly1/r;->c:I

    .line 208
    .line 209
    :goto_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 210
    .line 211
    .line 212
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/o;->f:LC/d;

    .line 2
    .line 3
    invoke-virtual {v0}, LC/d;->isStateful()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Ly1/o;->d:LC/d;

    .line 10
    .line 11
    invoke-virtual {v0}, LC/d;->isStateful()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    return v0
.end method

.method public onStateChanged([I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ly1/o;->f:LC/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LC/d;->onStateChanged([I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Ly1/o;->d:LC/d;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, LC/d;->onStateChanged([I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    or-int/2addr p1, v0

    .line 14
    return p1
.end method

.method public setFillAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Ly1/o;->h:F

    .line 2
    .line 3
    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/o;->f:LC/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LC/d;->setColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStrokeAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Ly1/o;->g:F

    .line 2
    .line 3
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/o;->d:LC/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LC/d;->setColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Ly1/o;->e:F

    .line 2
    .line 3
    return-void
.end method

.method public setTrimPathEnd(F)V
    .locals 0

    .line 1
    iput p1, p0, Ly1/o;->j:F

    .line 2
    .line 3
    return-void
.end method

.method public setTrimPathOffset(F)V
    .locals 0

    .line 1
    iput p1, p0, Ly1/o;->k:F

    .line 2
    .line 3
    return-void
.end method

.method public setTrimPathStart(F)V
    .locals 0

    .line 1
    iput p1, p0, Ly1/o;->i:F

    .line 2
    .line 3
    return-void
.end method
