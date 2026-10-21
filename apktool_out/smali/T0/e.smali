.class public final LT0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:[I

.field public static final B:[Z

.field public static final C:[I

.field public static final D:[I

.field public static final E:[I

.field public static final F:[I

.field public static final v:I

.field public static final w:I

.field public static final x:I

.field public static final y:[I

.field public static final z:[I


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Landroid/text/SpannableStringBuilder;

.field public c:Z

.field public d:Z

.field public e:I

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v0, v0, v1}, LT0/e;->getArgbColorFromCeaColor(IIII)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, LT0/e;->v:I

    .line 8
    .line 9
    invoke-static {v1, v1, v1, v1}, LT0/e;->getArgbColorFromCeaColor(IIII)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sput v2, LT0/e;->w:I

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    invoke-static {v1, v1, v1, v0}, LT0/e;->getArgbColorFromCeaColor(IIII)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    sput v3, LT0/e;->x:I

    .line 21
    .line 22
    const/4 v0, 0x7

    .line 23
    new-array v1, v0, [I

    .line 24
    .line 25
    fill-array-data v1, :array_0

    .line 26
    .line 27
    .line 28
    sput-object v1, LT0/e;->y:[I

    .line 29
    .line 30
    new-array v1, v0, [I

    .line 31
    .line 32
    fill-array-data v1, :array_1

    .line 33
    .line 34
    .line 35
    sput-object v1, LT0/e;->z:[I

    .line 36
    .line 37
    new-array v1, v0, [I

    .line 38
    .line 39
    fill-array-data v1, :array_2

    .line 40
    .line 41
    .line 42
    sput-object v1, LT0/e;->A:[I

    .line 43
    .line 44
    new-array v1, v0, [Z

    .line 45
    .line 46
    fill-array-data v1, :array_3

    .line 47
    .line 48
    .line 49
    sput-object v1, LT0/e;->B:[Z

    .line 50
    .line 51
    move v4, v2

    .line 52
    move v5, v2

    .line 53
    move v6, v3

    .line 54
    move v7, v2

    .line 55
    move v8, v2

    .line 56
    filled-new-array/range {v2 .. v8}, [I

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sput-object v1, LT0/e;->C:[I

    .line 61
    .line 62
    new-array v1, v0, [I

    .line 63
    .line 64
    fill-array-data v1, :array_4

    .line 65
    .line 66
    .line 67
    sput-object v1, LT0/e;->D:[I

    .line 68
    .line 69
    new-array v0, v0, [I

    .line 70
    .line 71
    fill-array-data v0, :array_5

    .line 72
    .line 73
    .line 74
    sput-object v0, LT0/e;->E:[I

    .line 75
    .line 76
    move v7, v3

    .line 77
    move v3, v2

    .line 78
    move v6, v2

    .line 79
    move v8, v7

    .line 80
    filled-new-array/range {v2 .. v8}, [I

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sput-object v0, LT0/e;->F:[I

    .line 85
    .line 86
    return-void

    .line 87
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
    .end array-data

    .line 88
    .line 89
    .line 90
    .line 91
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x3
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LT0/e;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LT0/e;->b:Landroid/text/SpannableStringBuilder;

    .line 17
    .line 18
    invoke-virtual {p0}, LT0/e;->reset()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static getArgbColorFromCeaColor(III)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, LT0/e;->getArgbColorFromCeaColor(IIII)I

    move-result p0

    return p0
.end method

.method public static getArgbColorFromCeaColor(IIII)I
    .locals 4

    const/4 v0, 0x4

    .line 2
    invoke-static {p0, v0}, LP3/v;->checkElementIndex(II)I

    .line 3
    invoke-static {p1, v0}, LP3/v;->checkElementIndex(II)I

    .line 4
    invoke-static {p2, v0}, LP3/v;->checkElementIndex(II)I

    .line 5
    invoke-static {p3, v0}, LP3/v;->checkElementIndex(II)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xff

    if-eqz p3, :cond_0

    if-eq p3, v1, :cond_0

    const/4 v3, 0x2

    if-eq p3, v3, :cond_2

    const/4 v3, 0x3

    if-eq p3, v3, :cond_1

    :cond_0
    move p3, v2

    goto :goto_0

    :cond_1
    move p3, v0

    goto :goto_0

    :cond_2
    const/16 p3, 0x7f

    :goto_0
    if-le p0, v1, :cond_3

    move p0, v2

    goto :goto_1

    :cond_3
    move p0, v0

    :goto_1
    if-le p1, v1, :cond_4

    move p1, v2

    goto :goto_2

    :cond_4
    move p1, v0

    :goto_2
    if-le p2, v1, :cond_5

    move v0, v2

    .line 6
    :cond_5
    invoke-static {p3, p0, p1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public append(C)V
    .locals 3

    .line 1
    iget-object v0, p0, LT0/e;->b:Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    if-ne p1, v1, :cond_6

    .line 6
    .line 7
    iget-object v1, p0, LT0/e;->a:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0}, LT0/e;->buildSpannableString()Landroid/text/SpannableString;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 17
    .line 18
    .line 19
    iget p1, p0, LT0/e;->o:I

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    .line 25
    iput v2, p0, LT0/e;->o:I

    .line 26
    .line 27
    :cond_0
    iget p1, p0, LT0/e;->p:I

    .line 28
    .line 29
    if-eq p1, v0, :cond_1

    .line 30
    .line 31
    iput v2, p0, LT0/e;->p:I

    .line 32
    .line 33
    :cond_1
    iget p1, p0, LT0/e;->q:I

    .line 34
    .line 35
    if-eq p1, v0, :cond_2

    .line 36
    .line 37
    iput v2, p0, LT0/e;->q:I

    .line 38
    .line 39
    :cond_2
    iget p1, p0, LT0/e;->s:I

    .line 40
    .line 41
    if-eq p1, v0, :cond_3

    .line 42
    .line 43
    iput v2, p0, LT0/e;->s:I

    .line 44
    .line 45
    :cond_3
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iget v0, p0, LT0/e;->j:I

    .line 50
    .line 51
    if-ge p1, v0, :cond_5

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    const/16 v0, 0xf

    .line 58
    .line 59
    if-lt p1, v0, :cond_4

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    iput p1, p0, LT0/e;->u:I

    .line 67
    .line 68
    return-void

    .line 69
    :cond_5
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_6
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public backspace()V
    .locals 3

    .line 1
    iget-object v0, p0, LT0/e;->b:Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    add-int/lit8 v2, v1, -0x1

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public build()LT0/d;
    .locals 13

    .line 1
    invoke-virtual {p0}, LT0/e;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    move v1, v0

    .line 16
    :goto_0
    iget-object v3, p0, LT0/e;->a:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-ge v1, v4, :cond_1

    .line 23
    .line 24
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/lang/CharSequence;

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v3, 0xa

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 36
    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, LT0/e;->buildSpannableString()Landroid/text/SpannableString;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, LT0/e;->k:I

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    const/4 v4, 0x3

    .line 52
    const/4 v5, 0x2

    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    if-eq v1, v3, :cond_4

    .line 56
    .line 57
    if-eq v1, v5, :cond_3

    .line 58
    .line 59
    if-ne v1, v4, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v2, "Unexpected justification value: "

    .line 67
    .line 68
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget v2, p0, LT0/e;->k:I

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :cond_3
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    :goto_1
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 91
    .line 92
    :goto_2
    iget-boolean v6, p0, LT0/e;->f:Z

    .line 93
    .line 94
    if-eqz v6, :cond_6

    .line 95
    .line 96
    iget v6, p0, LT0/e;->h:I

    .line 97
    .line 98
    int-to-float v6, v6

    .line 99
    const/high16 v7, 0x42c60000    # 99.0f

    .line 100
    .line 101
    div-float/2addr v6, v7

    .line 102
    iget v8, p0, LT0/e;->g:I

    .line 103
    .line 104
    int-to-float v8, v8

    .line 105
    div-float/2addr v8, v7

    .line 106
    goto :goto_3

    .line 107
    :cond_6
    iget v6, p0, LT0/e;->h:I

    .line 108
    .line 109
    int-to-float v6, v6

    .line 110
    const/high16 v7, 0x43510000    # 209.0f

    .line 111
    .line 112
    div-float/2addr v6, v7

    .line 113
    iget v7, p0, LT0/e;->g:I

    .line 114
    .line 115
    int-to-float v7, v7

    .line 116
    const/high16 v8, 0x42940000    # 74.0f

    .line 117
    .line 118
    div-float v8, v7, v8

    .line 119
    .line 120
    :goto_3
    const v7, 0x3f666666    # 0.9f

    .line 121
    .line 122
    .line 123
    mul-float/2addr v6, v7

    .line 124
    const v9, 0x3d4ccccd    # 0.05f

    .line 125
    .line 126
    .line 127
    add-float/2addr v6, v9

    .line 128
    mul-float/2addr v8, v7

    .line 129
    add-float/2addr v8, v9

    .line 130
    iget v7, p0, LT0/e;->i:I

    .line 131
    .line 132
    div-int/lit8 v9, v7, 0x3

    .line 133
    .line 134
    if-nez v9, :cond_7

    .line 135
    .line 136
    move v9, v7

    .line 137
    move v7, v6

    .line 138
    move v6, v0

    .line 139
    goto :goto_4

    .line 140
    :cond_7
    if-ne v9, v3, :cond_8

    .line 141
    .line 142
    move v9, v7

    .line 143
    move v7, v6

    .line 144
    move v6, v3

    .line 145
    goto :goto_4

    .line 146
    :cond_8
    move v9, v7

    .line 147
    move v7, v6

    .line 148
    move v6, v5

    .line 149
    :goto_4
    rem-int/lit8 v4, v9, 0x3

    .line 150
    .line 151
    if-nez v4, :cond_9

    .line 152
    .line 153
    move v5, v0

    .line 154
    goto :goto_5

    .line 155
    :cond_9
    if-ne v4, v3, :cond_a

    .line 156
    .line 157
    move v5, v3

    .line 158
    :cond_a
    :goto_5
    iget v11, p0, LT0/e;->n:I

    .line 159
    .line 160
    sget v4, LT0/e;->w:I

    .line 161
    .line 162
    if-eq v11, v4, :cond_b

    .line 163
    .line 164
    move v10, v3

    .line 165
    :goto_6
    move-object v3, v1

    .line 166
    goto :goto_7

    .line 167
    :cond_b
    move v10, v0

    .line 168
    goto :goto_6

    .line 169
    :goto_7
    new-instance v1, LT0/d;

    .line 170
    .line 171
    iget v12, p0, LT0/e;->e:I

    .line 172
    .line 173
    move v4, v8

    .line 174
    move v8, v5

    .line 175
    const/4 v5, 0x0

    .line 176
    const v9, -0x800001

    .line 177
    .line 178
    .line 179
    invoke-direct/range {v1 .. v12}, LT0/d;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V

    .line 180
    .line 181
    .line 182
    return-object v1
.end method

.method public buildSpannableString()Landroid/text/SpannableString;
    .locals 6

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    iget-object v1, p0, LT0/e;->b:Landroid/text/SpannableStringBuilder;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-lez v1, :cond_3

    .line 13
    .line 14
    iget v2, p0, LT0/e;->o:I

    .line 15
    .line 16
    const/16 v3, 0x21

    .line 17
    .line 18
    const/4 v4, -0x1

    .line 19
    if-eq v2, v4, :cond_0

    .line 20
    .line 21
    new-instance v2, Landroid/text/style/StyleSpan;

    .line 22
    .line 23
    const/4 v5, 0x2

    .line 24
    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iget v5, p0, LT0/e;->o:I

    .line 28
    .line 29
    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget v2, p0, LT0/e;->p:I

    .line 33
    .line 34
    if-eq v2, v4, :cond_1

    .line 35
    .line 36
    new-instance v2, Landroid/text/style/UnderlineSpan;

    .line 37
    .line 38
    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 39
    .line 40
    .line 41
    iget v5, p0, LT0/e;->p:I

    .line 42
    .line 43
    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget v2, p0, LT0/e;->q:I

    .line 47
    .line 48
    if-eq v2, v4, :cond_2

    .line 49
    .line 50
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 51
    .line 52
    iget v5, p0, LT0/e;->r:I

    .line 53
    .line 54
    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 55
    .line 56
    .line 57
    iget v5, p0, LT0/e;->q:I

    .line 58
    .line 59
    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget v2, p0, LT0/e;->s:I

    .line 63
    .line 64
    if-eq v2, v4, :cond_3

    .line 65
    .line 66
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    .line 67
    .line 68
    iget v4, p0, LT0/e;->t:I

    .line 69
    .line 70
    invoke-direct {v2, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 71
    .line 72
    .line 73
    iget v4, p0, LT0/e;->s:I

    .line 74
    .line 75
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 76
    .line 77
    .line 78
    :cond_3
    new-instance v1, Landroid/text/SpannableString;

    .line 79
    .line 80
    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    return-object v1
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, LT0/e;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LT0/e;->b:Landroid/text/SpannableStringBuilder;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 9
    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, LT0/e;->o:I

    .line 13
    .line 14
    iput v0, p0, LT0/e;->p:I

    .line 15
    .line 16
    iput v0, p0, LT0/e;->q:I

    .line 17
    .line 18
    iput v0, p0, LT0/e;->s:I

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, LT0/e;->u:I

    .line 22
    .line 23
    return-void
.end method

.method public defineWindow(ZIZIIIIII)V
    .locals 9

    .line 1
    move/from16 v0, p8

    .line 2
    .line 3
    move/from16 v1, p9

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iput-boolean v2, p0, LT0/e;->c:Z

    .line 7
    .line 8
    iput-boolean p1, p0, LT0/e;->d:Z

    .line 9
    .line 10
    iput p2, p0, LT0/e;->e:I

    .line 11
    .line 12
    iput-boolean p3, p0, LT0/e;->f:Z

    .line 13
    .line 14
    iput p4, p0, LT0/e;->g:I

    .line 15
    .line 16
    iput p5, p0, LT0/e;->h:I

    .line 17
    .line 18
    move/from16 v3, p7

    .line 19
    .line 20
    iput v3, p0, LT0/e;->i:I

    .line 21
    .line 22
    iget v3, p0, LT0/e;->j:I

    .line 23
    .line 24
    add-int/lit8 v4, p6, 0x1

    .line 25
    .line 26
    if-eq v3, v4, :cond_1

    .line 27
    .line 28
    iput v4, p0, LT0/e;->j:I

    .line 29
    .line 30
    :goto_0
    iget-object v3, p0, LT0/e;->a:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    iget v5, p0, LT0/e;->j:I

    .line 37
    .line 38
    if-ge v4, v5, :cond_0

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const/16 v5, 0xf

    .line 45
    .line 46
    if-lt v4, v5, :cond_1

    .line 47
    .line 48
    :cond_0
    const/4 v4, 0x0

    .line 49
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget v3, p0, LT0/e;->l:I

    .line 56
    .line 57
    if-eq v3, v0, :cond_2

    .line 58
    .line 59
    iput v0, p0, LT0/e;->l:I

    .line 60
    .line 61
    sub-int/2addr v0, v2

    .line 62
    sget-object v3, LT0/e;->C:[I

    .line 63
    .line 64
    aget v3, v3, v0

    .line 65
    .line 66
    sget-object v4, LT0/e;->B:[Z

    .line 67
    .line 68
    aget-boolean v4, v4, v0

    .line 69
    .line 70
    sget-object v5, LT0/e;->z:[I

    .line 71
    .line 72
    aget v5, v5, v0

    .line 73
    .line 74
    sget-object v6, LT0/e;->A:[I

    .line 75
    .line 76
    aget v6, v6, v0

    .line 77
    .line 78
    sget-object v7, LT0/e;->y:[I

    .line 79
    .line 80
    aget v0, v7, v0

    .line 81
    .line 82
    sget v7, LT0/e;->x:I

    .line 83
    .line 84
    const/4 v8, 0x0

    .line 85
    move-object p1, p0

    .line 86
    move/from16 p8, v0

    .line 87
    .line 88
    move p2, v3

    .line 89
    move p4, v4

    .line 90
    move p6, v5

    .line 91
    move/from16 p7, v6

    .line 92
    .line 93
    move p3, v7

    .line 94
    move p5, v8

    .line 95
    invoke-virtual/range {p1 .. p8}, LT0/e;->setWindowAttributes(IIZIIII)V

    .line 96
    .line 97
    .line 98
    :cond_2
    if-eqz v1, :cond_3

    .line 99
    .line 100
    iget v0, p0, LT0/e;->m:I

    .line 101
    .line 102
    if-eq v0, v1, :cond_3

    .line 103
    .line 104
    iput v1, p0, LT0/e;->m:I

    .line 105
    .line 106
    add-int/lit8 v0, v1, -0x1

    .line 107
    .line 108
    sget-object v1, LT0/e;->E:[I

    .line 109
    .line 110
    aget v1, v1, v0

    .line 111
    .line 112
    sget-object v2, LT0/e;->D:[I

    .line 113
    .line 114
    aget v2, v2, v0

    .line 115
    .line 116
    const/4 v3, 0x0

    .line 117
    const/4 v4, 0x0

    .line 118
    const/4 v5, 0x0

    .line 119
    const/4 v6, 0x1

    .line 120
    const/4 v7, 0x1

    .line 121
    move-object p1, p0

    .line 122
    move/from16 p7, v1

    .line 123
    .line 124
    move/from16 p8, v2

    .line 125
    .line 126
    move p5, v3

    .line 127
    move p6, v4

    .line 128
    move p2, v5

    .line 129
    move p3, v6

    .line 130
    move p4, v7

    .line 131
    invoke-virtual/range {p1 .. p8}, LT0/e;->setPenAttributes(IIIZZII)V

    .line 132
    .line 133
    .line 134
    sget-object v1, LT0/e;->F:[I

    .line 135
    .line 136
    aget v0, v1, v0

    .line 137
    .line 138
    sget v1, LT0/e;->w:I

    .line 139
    .line 140
    sget v2, LT0/e;->v:I

    .line 141
    .line 142
    invoke-virtual {p0, v2, v0, v1}, LT0/e;->setPenColor(III)V

    .line 143
    .line 144
    .line 145
    :cond_3
    return-void
.end method

.method public isDefined()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LT0/e;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LT0/e;->isDefined()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, LT0/e;->a:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, LT0/e;->b:Landroid/text/SpannableStringBuilder;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return v0

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 27
    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LT0/e;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public reset()V
    .locals 2

    .line 1
    invoke-virtual {p0}, LT0/e;->clear()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, LT0/e;->c:Z

    .line 6
    .line 7
    iput-boolean v0, p0, LT0/e;->d:Z

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    iput v1, p0, LT0/e;->e:I

    .line 11
    .line 12
    iput-boolean v0, p0, LT0/e;->f:Z

    .line 13
    .line 14
    iput v0, p0, LT0/e;->g:I

    .line 15
    .line 16
    iput v0, p0, LT0/e;->h:I

    .line 17
    .line 18
    iput v0, p0, LT0/e;->i:I

    .line 19
    .line 20
    const/16 v1, 0xf

    .line 21
    .line 22
    iput v1, p0, LT0/e;->j:I

    .line 23
    .line 24
    iput v0, p0, LT0/e;->k:I

    .line 25
    .line 26
    iput v0, p0, LT0/e;->l:I

    .line 27
    .line 28
    iput v0, p0, LT0/e;->m:I

    .line 29
    .line 30
    sget v0, LT0/e;->w:I

    .line 31
    .line 32
    iput v0, p0, LT0/e;->n:I

    .line 33
    .line 34
    sget v1, LT0/e;->v:I

    .line 35
    .line 36
    iput v1, p0, LT0/e;->r:I

    .line 37
    .line 38
    iput v0, p0, LT0/e;->t:I

    .line 39
    .line 40
    return-void
.end method

.method public setPenAttributes(IIIZZII)V
    .locals 0

    .line 1
    iget p1, p0, LT0/e;->o:I

    .line 2
    .line 3
    const/16 p2, 0x21

    .line 4
    .line 5
    iget-object p3, p0, LT0/e;->b:Landroid/text/SpannableStringBuilder;

    .line 6
    .line 7
    const/4 p6, -0x1

    .line 8
    if-eq p1, p6, :cond_0

    .line 9
    .line 10
    if-nez p4, :cond_1

    .line 11
    .line 12
    new-instance p1, Landroid/text/style/StyleSpan;

    .line 13
    .line 14
    const/4 p4, 0x2

    .line 15
    invoke-direct {p1, p4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iget p4, p0, LT0/e;->o:I

    .line 19
    .line 20
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 21
    .line 22
    .line 23
    move-result p7

    .line 24
    invoke-virtual {p3, p1, p4, p7, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 25
    .line 26
    .line 27
    iput p6, p0, LT0/e;->o:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    if-eqz p4, :cond_1

    .line 31
    .line 32
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput p1, p0, LT0/e;->o:I

    .line 37
    .line 38
    :cond_1
    :goto_0
    iget p1, p0, LT0/e;->p:I

    .line 39
    .line 40
    if-eq p1, p6, :cond_2

    .line 41
    .line 42
    if-nez p5, :cond_3

    .line 43
    .line 44
    new-instance p1, Landroid/text/style/UnderlineSpan;

    .line 45
    .line 46
    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 47
    .line 48
    .line 49
    iget p4, p0, LT0/e;->p:I

    .line 50
    .line 51
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 52
    .line 53
    .line 54
    move-result p5

    .line 55
    invoke-virtual {p3, p1, p4, p5, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 56
    .line 57
    .line 58
    iput p6, p0, LT0/e;->p:I

    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    if-eqz p5, :cond_3

    .line 62
    .line 63
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iput p1, p0, LT0/e;->p:I

    .line 68
    .line 69
    :cond_3
    return-void
.end method

.method public setPenColor(III)V
    .locals 5

    .line 1
    iget p3, p0, LT0/e;->q:I

    .line 2
    .line 3
    const/16 v0, 0x21

    .line 4
    .line 5
    iget-object v1, p0, LT0/e;->b:Landroid/text/SpannableStringBuilder;

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    if-eq p3, v2, :cond_0

    .line 9
    .line 10
    iget p3, p0, LT0/e;->r:I

    .line 11
    .line 12
    if-eq p3, p1, :cond_0

    .line 13
    .line 14
    new-instance p3, Landroid/text/style/ForegroundColorSpan;

    .line 15
    .line 16
    iget v3, p0, LT0/e;->r:I

    .line 17
    .line 18
    invoke-direct {p3, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iget v3, p0, LT0/e;->q:I

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {v1, p3, v3, v4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 28
    .line 29
    .line 30
    :cond_0
    sget p3, LT0/e;->v:I

    .line 31
    .line 32
    if-eq p1, p3, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    iput p3, p0, LT0/e;->q:I

    .line 39
    .line 40
    iput p1, p0, LT0/e;->r:I

    .line 41
    .line 42
    :cond_1
    iget p1, p0, LT0/e;->s:I

    .line 43
    .line 44
    if-eq p1, v2, :cond_2

    .line 45
    .line 46
    iget p1, p0, LT0/e;->t:I

    .line 47
    .line 48
    if-eq p1, p2, :cond_2

    .line 49
    .line 50
    new-instance p1, Landroid/text/style/BackgroundColorSpan;

    .line 51
    .line 52
    iget p3, p0, LT0/e;->t:I

    .line 53
    .line 54
    invoke-direct {p1, p3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 55
    .line 56
    .line 57
    iget p3, p0, LT0/e;->s:I

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-virtual {v1, p1, p3, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 64
    .line 65
    .line 66
    :cond_2
    sget p1, LT0/e;->w:I

    .line 67
    .line 68
    if-eq p2, p1, :cond_3

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iput p1, p0, LT0/e;->s:I

    .line 75
    .line 76
    iput p2, p0, LT0/e;->t:I

    .line 77
    .line 78
    :cond_3
    return-void
.end method

.method public setPenLocation(II)V
    .locals 0

    .line 1
    iget p2, p0, LT0/e;->u:I

    .line 2
    .line 3
    if-eq p2, p1, :cond_0

    .line 4
    .line 5
    const/16 p2, 0xa

    .line 6
    .line 7
    invoke-virtual {p0, p2}, LT0/e;->append(C)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput p1, p0, LT0/e;->u:I

    .line 11
    .line 12
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LT0/e;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public setWindowAttributes(IIZIIII)V
    .locals 0

    .line 1
    iput p1, p0, LT0/e;->n:I

    .line 2
    .line 3
    iput p7, p0, LT0/e;->k:I

    .line 4
    .line 5
    return-void
.end method
