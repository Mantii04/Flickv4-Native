.class public final LY0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Z

.field public d:I

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:F

.field public l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:Landroid/text/Layout$Alignment;

.field public p:Landroid/text/Layout$Alignment;

.field public q:I

.field public r:LY0/b;

.field public s:F

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, LY0/i;->f:I

    .line 6
    .line 7
    iput v0, p0, LY0/i;->g:I

    .line 8
    .line 9
    iput v0, p0, LY0/i;->h:I

    .line 10
    .line 11
    iput v0, p0, LY0/i;->i:I

    .line 12
    .line 13
    iput v0, p0, LY0/i;->j:I

    .line 14
    .line 15
    iput v0, p0, LY0/i;->m:I

    .line 16
    .line 17
    iput v0, p0, LY0/i;->n:I

    .line 18
    .line 19
    iput v0, p0, LY0/i;->q:I

    .line 20
    .line 21
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 22
    .line 23
    .line 24
    iput v0, p0, LY0/i;->s:F

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public chain(LY0/i;)LY0/i;
    .locals 3

    .line 1
    if-eqz p1, :cond_10

    .line 2
    .line 3
    iget-boolean v0, p0, LY0/i;->c:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p1, LY0/i;->c:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p1, LY0/i;->b:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, LY0/i;->setFontColor(I)LY0/i;

    .line 14
    .line 15
    .line 16
    :cond_0
    iget v0, p0, LY0/i;->h:I

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget v0, p1, LY0/i;->h:I

    .line 22
    .line 23
    iput v0, p0, LY0/i;->h:I

    .line 24
    .line 25
    :cond_1
    iget v0, p0, LY0/i;->i:I

    .line 26
    .line 27
    if-ne v0, v1, :cond_2

    .line 28
    .line 29
    iget v0, p1, LY0/i;->i:I

    .line 30
    .line 31
    iput v0, p0, LY0/i;->i:I

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, LY0/i;->a:Ljava/lang/String;

    .line 34
    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    iget-object v0, p1, LY0/i;->a:Ljava/lang/String;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    iput-object v0, p0, LY0/i;->a:Ljava/lang/String;

    .line 42
    .line 43
    :cond_3
    iget v0, p0, LY0/i;->f:I

    .line 44
    .line 45
    if-ne v0, v1, :cond_4

    .line 46
    .line 47
    iget v0, p1, LY0/i;->f:I

    .line 48
    .line 49
    iput v0, p0, LY0/i;->f:I

    .line 50
    .line 51
    :cond_4
    iget v0, p0, LY0/i;->g:I

    .line 52
    .line 53
    if-ne v0, v1, :cond_5

    .line 54
    .line 55
    iget v0, p1, LY0/i;->g:I

    .line 56
    .line 57
    iput v0, p0, LY0/i;->g:I

    .line 58
    .line 59
    :cond_5
    iget v0, p0, LY0/i;->n:I

    .line 60
    .line 61
    if-ne v0, v1, :cond_6

    .line 62
    .line 63
    iget v0, p1, LY0/i;->n:I

    .line 64
    .line 65
    iput v0, p0, LY0/i;->n:I

    .line 66
    .line 67
    :cond_6
    iget-object v0, p0, LY0/i;->o:Landroid/text/Layout$Alignment;

    .line 68
    .line 69
    if-nez v0, :cond_7

    .line 70
    .line 71
    iget-object v0, p1, LY0/i;->o:Landroid/text/Layout$Alignment;

    .line 72
    .line 73
    if-eqz v0, :cond_7

    .line 74
    .line 75
    iput-object v0, p0, LY0/i;->o:Landroid/text/Layout$Alignment;

    .line 76
    .line 77
    :cond_7
    iget-object v0, p0, LY0/i;->p:Landroid/text/Layout$Alignment;

    .line 78
    .line 79
    if-nez v0, :cond_8

    .line 80
    .line 81
    iget-object v0, p1, LY0/i;->p:Landroid/text/Layout$Alignment;

    .line 82
    .line 83
    if-eqz v0, :cond_8

    .line 84
    .line 85
    iput-object v0, p0, LY0/i;->p:Landroid/text/Layout$Alignment;

    .line 86
    .line 87
    :cond_8
    iget v0, p0, LY0/i;->q:I

    .line 88
    .line 89
    if-ne v0, v1, :cond_9

    .line 90
    .line 91
    iget v0, p1, LY0/i;->q:I

    .line 92
    .line 93
    iput v0, p0, LY0/i;->q:I

    .line 94
    .line 95
    :cond_9
    iget v0, p0, LY0/i;->j:I

    .line 96
    .line 97
    if-ne v0, v1, :cond_a

    .line 98
    .line 99
    iget v0, p1, LY0/i;->j:I

    .line 100
    .line 101
    iput v0, p0, LY0/i;->j:I

    .line 102
    .line 103
    iget v0, p1, LY0/i;->k:F

    .line 104
    .line 105
    iput v0, p0, LY0/i;->k:F

    .line 106
    .line 107
    :cond_a
    iget-object v0, p0, LY0/i;->r:LY0/b;

    .line 108
    .line 109
    if-nez v0, :cond_b

    .line 110
    .line 111
    iget-object v0, p1, LY0/i;->r:LY0/b;

    .line 112
    .line 113
    iput-object v0, p0, LY0/i;->r:LY0/b;

    .line 114
    .line 115
    :cond_b
    iget v0, p0, LY0/i;->s:F

    .line 116
    .line 117
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 118
    .line 119
    .line 120
    cmpl-float v0, v0, v2

    .line 121
    .line 122
    if-nez v0, :cond_c

    .line 123
    .line 124
    iget v0, p1, LY0/i;->s:F

    .line 125
    .line 126
    iput v0, p0, LY0/i;->s:F

    .line 127
    .line 128
    :cond_c
    iget-object v0, p0, LY0/i;->t:Ljava/lang/String;

    .line 129
    .line 130
    if-nez v0, :cond_d

    .line 131
    .line 132
    iget-object v0, p1, LY0/i;->t:Ljava/lang/String;

    .line 133
    .line 134
    iput-object v0, p0, LY0/i;->t:Ljava/lang/String;

    .line 135
    .line 136
    :cond_d
    iget-object v0, p0, LY0/i;->u:Ljava/lang/String;

    .line 137
    .line 138
    if-nez v0, :cond_e

    .line 139
    .line 140
    iget-object v0, p1, LY0/i;->u:Ljava/lang/String;

    .line 141
    .line 142
    iput-object v0, p0, LY0/i;->u:Ljava/lang/String;

    .line 143
    .line 144
    :cond_e
    iget-boolean v0, p0, LY0/i;->e:Z

    .line 145
    .line 146
    if-nez v0, :cond_f

    .line 147
    .line 148
    iget-boolean v0, p1, LY0/i;->e:Z

    .line 149
    .line 150
    if-eqz v0, :cond_f

    .line 151
    .line 152
    iget v0, p1, LY0/i;->d:I

    .line 153
    .line 154
    invoke-virtual {p0, v0}, LY0/i;->setBackgroundColor(I)LY0/i;

    .line 155
    .line 156
    .line 157
    :cond_f
    iget v0, p0, LY0/i;->m:I

    .line 158
    .line 159
    if-ne v0, v1, :cond_10

    .line 160
    .line 161
    iget p1, p1, LY0/i;->m:I

    .line 162
    .line 163
    if-eq p1, v1, :cond_10

    .line 164
    .line 165
    iput p1, p0, LY0/i;->m:I

    .line 166
    .line 167
    :cond_10
    return-object p0
.end method

.method public getBackgroundColor()I
    .locals 2

    .line 1
    iget-boolean v0, p0, LY0/i;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, LY0/i;->d:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "Background color has not been defined."

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public getExtent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LY0/i;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFontColor()I
    .locals 2

    .line 1
    iget-boolean v0, p0, LY0/i;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, LY0/i;->b:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "Font color has not been defined."

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LY0/i;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    .line 1
    iget v0, p0, LY0/i;->k:F

    .line 2
    .line 3
    return v0
.end method

.method public getFontSizeUnit()I
    .locals 1

    .line 1
    iget v0, p0, LY0/i;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LY0/i;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMultiRowAlign()Landroid/text/Layout$Alignment;
    .locals 1

    .line 1
    iget-object v0, p0, LY0/i;->p:Landroid/text/Layout$Alignment;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LY0/i;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRubyPosition()I
    .locals 1

    .line 1
    iget v0, p0, LY0/i;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public getRubyType()I
    .locals 1

    .line 1
    iget v0, p0, LY0/i;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public getShearPercentage()F
    .locals 1

    .line 1
    iget v0, p0, LY0/i;->s:F

    .line 2
    .line 3
    return v0
.end method

.method public getStyle()I
    .locals 4

    .line 1
    iget v0, p0, LY0/i;->h:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v2, p0, LY0/i;->i:I

    .line 7
    .line 8
    if-ne v2, v1, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    move v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move v0, v1

    .line 18
    :goto_0
    iget v3, p0, LY0/i;->i:I

    .line 19
    .line 20
    if-ne v3, v2, :cond_2

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    :cond_2
    or-int/2addr v0, v1

    .line 24
    return v0
.end method

.method public getTextAlign()Landroid/text/Layout$Alignment;
    .locals 1

    .line 1
    iget-object v0, p0, LY0/i;->o:Landroid/text/Layout$Alignment;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTextCombine()Z
    .locals 2

    .line 1
    iget v0, p0, LY0/i;->q:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public getTextEmphasis()LY0/b;
    .locals 1

    .line 1
    iget-object v0, p0, LY0/i;->r:LY0/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasBackgroundColor()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LY0/i;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public hasFontColor()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LY0/i;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLinethrough()Z
    .locals 2

    .line 1
    iget v0, p0, LY0/i;->f:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public isUnderline()Z
    .locals 2

    .line 1
    iget v0, p0, LY0/i;->g:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public setBackgroundColor(I)LY0/i;
    .locals 0

    .line 1
    iput p1, p0, LY0/i;->d:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, LY0/i;->e:Z

    .line 5
    .line 6
    return-object p0
.end method

.method public setBold(Z)LY0/i;
    .locals 0

    .line 1
    iput p1, p0, LY0/i;->h:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setExtent(Ljava/lang/String;)LY0/i;
    .locals 0

    .line 1
    iput-object p1, p0, LY0/i;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFontColor(I)LY0/i;
    .locals 0

    .line 1
    iput p1, p0, LY0/i;->b:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, LY0/i;->c:Z

    .line 5
    .line 6
    return-object p0
.end method

.method public setFontFamily(Ljava/lang/String;)LY0/i;
    .locals 0

    .line 1
    iput-object p1, p0, LY0/i;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFontSize(F)LY0/i;
    .locals 0

    .line 1
    iput p1, p0, LY0/i;->k:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setFontSizeUnit(I)LY0/i;
    .locals 0

    .line 1
    iput p1, p0, LY0/i;->j:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setId(Ljava/lang/String;)LY0/i;
    .locals 0

    .line 1
    iput-object p1, p0, LY0/i;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setItalic(Z)LY0/i;
    .locals 0

    .line 1
    iput p1, p0, LY0/i;->i:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setLinethrough(Z)LY0/i;
    .locals 0

    .line 1
    iput p1, p0, LY0/i;->f:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setMultiRowAlign(Landroid/text/Layout$Alignment;)LY0/i;
    .locals 0

    .line 1
    iput-object p1, p0, LY0/i;->p:Landroid/text/Layout$Alignment;

    .line 2
    .line 3
    return-object p0
.end method

.method public setOrigin(Ljava/lang/String;)LY0/i;
    .locals 0

    .line 1
    iput-object p1, p0, LY0/i;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRubyPosition(I)LY0/i;
    .locals 0

    .line 1
    iput p1, p0, LY0/i;->n:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setRubyType(I)LY0/i;
    .locals 0

    .line 1
    iput p1, p0, LY0/i;->m:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setShearPercentage(F)LY0/i;
    .locals 0

    .line 1
    iput p1, p0, LY0/i;->s:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setTextAlign(Landroid/text/Layout$Alignment;)LY0/i;
    .locals 0

    .line 1
    iput-object p1, p0, LY0/i;->o:Landroid/text/Layout$Alignment;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTextCombine(Z)LY0/i;
    .locals 0

    .line 1
    iput p1, p0, LY0/i;->q:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setTextEmphasis(LY0/b;)LY0/i;
    .locals 0

    .line 1
    iput-object p1, p0, LY0/i;->r:LY0/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUnderline(Z)LY0/i;
    .locals 0

    .line 1
    iput p1, p0, LY0/i;->g:I

    .line 2
    .line 3
    return-object p0
.end method
