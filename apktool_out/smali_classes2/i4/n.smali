.class public final Li4/n;
.super Li4/b;
.source "SourceFile"


# instance fields
.field public final b:Lj4/a;

.field public final c:Ljava/lang/ref/WeakReference;

.field public d:J

.field public e:Z

.field public f:Lh4/a;

.field public final g:Li4/k;

.field public final h:Ljava/util/ArrayList;

.field public final i:Li4/j;

.field public final j:Ljava/util/HashMap;


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
    iput-boolean v0, p0, Li4/n;->e:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Li4/n;->f:Lh4/a;

    .line 9
    .line 10
    new-instance v0, Li4/k;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Li4/k;-><init>(Li4/n;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Li4/n;->g:Li4/k;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Li4/n;->h:Ljava/util/ArrayList;

    .line 23
    .line 24
    new-instance v0, Li4/j;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Li4/j;-><init>(Li4/n;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Li4/n;->i:Li4/j;

    .line 30
    .line 31
    new-instance v0, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Li4/n;->j:Ljava/util/HashMap;

    .line 37
    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 39
    .line 40
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Li4/n;->c:Ljava/lang/ref/WeakReference;

    .line 44
    .line 45
    invoke-static {p1}, Lj4/a;->wrap(Landroid/view/View;)Lj4/a;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Li4/n;->b:Lj4/a;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final a(FI)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Li4/n;->b:Lj4/a;

    .line 3
    .line 4
    if-eq p2, v0, :cond_9

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p2, v0, :cond_8

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    if-eq p2, v0, :cond_7

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    if-eq p2, v0, :cond_6

    .line 15
    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    if-eq p2, v0, :cond_5

    .line 19
    .line 20
    const/16 v0, 0x20

    .line 21
    .line 22
    if-eq p2, v0, :cond_4

    .line 23
    .line 24
    const/16 v0, 0x40

    .line 25
    .line 26
    if-eq p2, v0, :cond_3

    .line 27
    .line 28
    const/16 v0, 0x80

    .line 29
    .line 30
    if-eq p2, v0, :cond_2

    .line 31
    .line 32
    const/16 v0, 0x100

    .line 33
    .line 34
    if-eq p2, v0, :cond_1

    .line 35
    .line 36
    const/16 v0, 0x200

    .line 37
    .line 38
    if-eq p2, v0, :cond_0

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v1}, Lj4/a;->getAlpha()F

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v1}, Lj4/a;->getY()F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v1}, Lj4/a;->getX()F

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {v1}, Lj4/a;->getRotationY()F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    goto :goto_0

    .line 62
    :cond_4
    invoke-virtual {v1}, Lj4/a;->getRotationX()F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    goto :goto_0

    .line 67
    :cond_5
    invoke-virtual {v1}, Lj4/a;->getRotation()F

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    goto :goto_0

    .line 72
    :cond_6
    invoke-virtual {v1}, Lj4/a;->getScaleY()F

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    goto :goto_0

    .line 77
    :cond_7
    invoke-virtual {v1}, Lj4/a;->getScaleX()F

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    goto :goto_0

    .line 82
    :cond_8
    invoke-virtual {v1}, Lj4/a;->getTranslationY()F

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    goto :goto_0

    .line 87
    :cond_9
    invoke-virtual {v1}, Lj4/a;->getTranslationX()F

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    :goto_0
    sub-float/2addr p1, v0

    .line 92
    iget-object v1, p0, Li4/n;->j:Ljava/util/HashMap;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-lez v2, :cond_d

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_c

    .line 113
    .line 114
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    check-cast v3, Lh4/b;

    .line 119
    .line 120
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    check-cast v4, Li4/m;

    .line 125
    .line 126
    iget v5, v4, Li4/m;->a:I

    .line 127
    .line 128
    and-int/2addr v5, p2

    .line 129
    if-eqz v5, :cond_a

    .line 130
    .line 131
    iget-object v5, v4, Li4/m;->b:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    const/4 v7, 0x0

    .line 138
    :goto_1
    if-ge v7, v6, :cond_a

    .line 139
    .line 140
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    check-cast v8, Li4/l;

    .line 145
    .line 146
    iget v8, v8, Li4/l;->a:I

    .line 147
    .line 148
    if-ne v8, p2, :cond_b

    .line 149
    .line 150
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    iget v5, v4, Li4/m;->a:I

    .line 154
    .line 155
    not-int v6, p2

    .line 156
    and-int/2addr v5, v6

    .line 157
    iput v5, v4, Li4/m;->a:I

    .line 158
    .line 159
    if-nez v5, :cond_a

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_c
    const/4 v3, 0x0

    .line 166
    :goto_2
    if-eqz v3, :cond_d

    .line 167
    .line 168
    invoke-virtual {v3}, Lh4/b;->cancel()V

    .line 169
    .line 170
    .line 171
    :cond_d
    new-instance v1, Li4/l;

    .line 172
    .line 173
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 174
    .line 175
    .line 176
    iput p2, v1, Li4/l;->a:I

    .line 177
    .line 178
    iput v0, v1, Li4/l;->b:F

    .line 179
    .line 180
    iput p1, v1, Li4/l;->c:F

    .line 181
    .line 182
    iget-object p1, p0, Li4/n;->h:Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Li4/n;->c:Ljava/lang/ref/WeakReference;

    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Landroid/view/View;

    .line 194
    .line 195
    if-eqz p1, :cond_e

    .line 196
    .line 197
    iget-object p2, p0, Li4/n;->i:Li4/j;

    .line 198
    .line 199
    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 203
    .line 204
    .line 205
    :cond_e
    return-void
.end method

.method public alpha(F)Li4/b;
    .locals 1

    .line 1
    const/16 v0, 0x200

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Li4/n;->a(FI)V

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
    iput-boolean v0, p0, Li4/n;->e:Z

    .line 9
    .line 10
    iput-wide p1, p0, Li4/n;->d:J

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
    iput-object p1, p0, Li4/n;->f:Lh4/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public translationX(F)Li4/b;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Li4/n;->a(FI)V

    .line 3
    .line 4
    .line 5
    return-object p0
.end method
