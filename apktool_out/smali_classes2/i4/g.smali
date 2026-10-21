.class public final Li4/g;
.super Li4/b;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/ref/WeakReference;

.field public c:J

.field public d:Z

.field public e:Lh4/a;

.field public final f:Li4/d;

.field public final g:Ljava/util/ArrayList;

.field public final h:Li4/c;

.field public final i:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Li4/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Li4/g;->d:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Li4/g;->e:Lh4/a;

    .line 9
    .line 10
    new-instance v0, Li4/d;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Li4/d;-><init>(Li4/g;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Li4/g;->f:Li4/d;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Li4/g;->g:Ljava/util/ArrayList;

    .line 23
    .line 24
    new-instance v0, Li4/c;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Li4/c;-><init>(Li4/g;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Li4/g;->h:Li4/c;

    .line 30
    .line 31
    new-instance v0, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Li4/g;->i:Ljava/util/HashMap;

    .line 37
    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 39
    .line 40
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Li4/g;->b:Ljava/lang/ref/WeakReference;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a(FI)V
    .locals 10

    .line 1
    iget-object v0, p0, Li4/g;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/view/View;

    .line 8
    .line 9
    if-eqz v1, :cond_a

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq p2, v2, :cond_9

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq p2, v2, :cond_8

    .line 16
    .line 17
    const/4 v2, 0x4

    .line 18
    if-eq p2, v2, :cond_7

    .line 19
    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    if-eq p2, v2, :cond_6

    .line 23
    .line 24
    const/16 v2, 0x10

    .line 25
    .line 26
    if-eq p2, v2, :cond_5

    .line 27
    .line 28
    const/16 v2, 0x20

    .line 29
    .line 30
    if-eq p2, v2, :cond_4

    .line 31
    .line 32
    const/16 v2, 0x40

    .line 33
    .line 34
    if-eq p2, v2, :cond_3

    .line 35
    .line 36
    const/16 v2, 0x80

    .line 37
    .line 38
    if-eq p2, v2, :cond_2

    .line 39
    .line 40
    const/16 v2, 0x100

    .line 41
    .line 42
    if-eq p2, v2, :cond_1

    .line 43
    .line 44
    const/16 v2, 0x200

    .line 45
    .line 46
    if-eq p2, v2, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getRotationY()F

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getRotationX()F

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    goto :goto_1

    .line 74
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    goto :goto_1

    .line 79
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    goto :goto_1

    .line 84
    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    goto :goto_1

    .line 89
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    goto :goto_1

    .line 94
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    goto :goto_1

    .line 99
    :cond_a
    :goto_0
    const/4 v1, 0x0

    .line 100
    :goto_1
    sub-float/2addr p1, v1

    .line 101
    iget-object v2, p0, Li4/g;->i:Ljava/util/HashMap;

    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-lez v3, :cond_e

    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_d

    .line 122
    .line 123
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    check-cast v4, Lh4/b;

    .line 128
    .line 129
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    check-cast v5, Li4/f;

    .line 134
    .line 135
    iget v6, v5, Li4/f;->a:I

    .line 136
    .line 137
    and-int/2addr v6, p2

    .line 138
    if-eqz v6, :cond_b

    .line 139
    .line 140
    iget-object v6, v5, Li4/f;->b:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    const/4 v8, 0x0

    .line 147
    :goto_2
    if-ge v8, v7, :cond_b

    .line 148
    .line 149
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    check-cast v9, Li4/e;

    .line 154
    .line 155
    iget v9, v9, Li4/e;->a:I

    .line 156
    .line 157
    if-ne v9, p2, :cond_c

    .line 158
    .line 159
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    iget v6, v5, Li4/f;->a:I

    .line 163
    .line 164
    not-int v7, p2

    .line 165
    and-int/2addr v6, v7

    .line 166
    iput v6, v5, Li4/f;->a:I

    .line 167
    .line 168
    if-nez v6, :cond_b

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_c
    add-int/lit8 v8, v8, 0x1

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_d
    const/4 v4, 0x0

    .line 175
    :goto_3
    if-eqz v4, :cond_e

    .line 176
    .line 177
    invoke-virtual {v4}, Lh4/b;->cancel()V

    .line 178
    .line 179
    .line 180
    :cond_e
    new-instance v2, Li4/e;

    .line 181
    .line 182
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 183
    .line 184
    .line 185
    iput p2, v2, Li4/e;->a:I

    .line 186
    .line 187
    iput v1, v2, Li4/e;->b:F

    .line 188
    .line 189
    iput p1, v2, Li4/e;->c:F

    .line 190
    .line 191
    iget-object p1, p0, Li4/g;->g:Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    check-cast p1, Landroid/view/View;

    .line 201
    .line 202
    if-eqz p1, :cond_f

    .line 203
    .line 204
    iget-object p2, p0, Li4/g;->h:Li4/c;

    .line 205
    .line 206
    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 210
    .line 211
    .line 212
    :cond_f
    return-void
.end method

.method public alpha(F)Li4/b;
    .locals 1

    .line 1
    const/16 v0, 0x200

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Li4/g;->a(FI)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setDuration(J)Li4/b;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Li4/g;->d:Z

    .line 9
    .line 10
    iput-wide p1, p0, Li4/g;->c:J

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v1, "Animators cannot have negative duration: "

    .line 16
    .line 17
    invoke-static {v1, p1, p2}, LA/i;->i(Ljava/lang/String;J)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public setListener(Lh4/a;)Li4/b;
    .locals 0

    .line 1
    iput-object p1, p0, Li4/g;->e:Lh4/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public translationX(F)Li4/b;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Li4/g;->a(FI)V

    .line 3
    .line 4
    .line 5
    return-object p0
.end method
