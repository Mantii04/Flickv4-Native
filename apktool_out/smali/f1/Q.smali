.class public final Lf1/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf1/F;

.field public final b:I

.field public final c:Lf1/U;

.field public final d:Lf1/U;

.field public final e:Lf1/U;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/lang/ref/WeakReference;

.field public h:LV3/F;

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Lf1/k;Lf1/U;Lf1/F;ILf1/U;Ljava/util/Collection;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lf1/Q;->h:LV3/F;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lf1/Q;->i:Z

    .line 9
    .line 10
    iput-boolean v1, p0, Lf1/Q;->j:Z

    .line 11
    .line 12
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lf1/Q;->g:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    iput-object p2, p0, Lf1/Q;->d:Lf1/U;

    .line 20
    .line 21
    iput-object p3, p0, Lf1/Q;->a:Lf1/F;

    .line 22
    .line 23
    iput p4, p0, Lf1/Q;->b:I

    .line 24
    .line 25
    iget-object p2, p1, Lf1/k;->s:Lf1/U;

    .line 26
    .line 27
    iput-object p2, p0, Lf1/Q;->c:Lf1/U;

    .line 28
    .line 29
    iput-object p5, p0, Lf1/Q;->e:Lf1/U;

    .line 30
    .line 31
    if-nez p6, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    iput-object v0, p0, Lf1/Q;->f:Ljava/util/ArrayList;

    .line 40
    .line 41
    new-instance p2, Lf1/a;

    .line 42
    .line 43
    const/4 p3, 0x2

    .line 44
    invoke-direct {p2, p0, p3}, Lf1/a;-><init>(Ljava/lang/Object;I)V

    .line 45
    .line 46
    .line 47
    const-wide/16 p3, 0x3a98

    .line 48
    .line 49
    iget-object p1, p1, Lf1/k;->m:Lf1/d;

    .line 50
    .line 51
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf1/Q;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lf1/Q;->j:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lf1/Q;->j:Z

    .line 12
    .line 13
    iget-object v0, p0, Lf1/Q;->a:Lf1/F;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lf1/F;->onUnselect(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lf1/F;->onRelease()V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 8

    .line 1
    invoke-static {}, Lf1/X;->a()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lf1/Q;->i:Z

    .line 5
    .line 6
    if-nez v0, :cond_a

    .line 7
    .line 8
    iget-boolean v0, p0, Lf1/Q;->j:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lf1/Q;->g:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lf1/k;

    .line 21
    .line 22
    if-eqz v1, :cond_9

    .line 23
    .line 24
    iget-object v2, v1, Lf1/k;->B:Lf1/Q;

    .line 25
    .line 26
    if-ne v2, p0, :cond_9

    .line 27
    .line 28
    iget-object v2, p0, Lf1/Q;->h:LV3/F;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_1
    const/4 v2, 0x1

    .line 41
    iput-boolean v2, p0, Lf1/Q;->i:Z

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    iput-object v2, v1, Lf1/k;->B:Lf1/Q;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lf1/k;

    .line 51
    .line 52
    iget v3, p0, Lf1/Q;->b:I

    .line 53
    .line 54
    iget-object v4, p0, Lf1/Q;->c:Lf1/U;

    .line 55
    .line 56
    if-eqz v1, :cond_6

    .line 57
    .line 58
    iget-object v5, v1, Lf1/k;->s:Lf1/U;

    .line 59
    .line 60
    if-eq v5, v4, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    iget-object v5, v1, Lf1/k;->m:Lf1/d;

    .line 64
    .line 65
    const/16 v6, 0x107

    .line 66
    .line 67
    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    iput v3, v5, Landroid/os/Message;->arg1:I

    .line 72
    .line 73
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 74
    .line 75
    .line 76
    iget-object v5, v1, Lf1/k;->t:Lf1/F;

    .line 77
    .line 78
    if-eqz v5, :cond_3

    .line 79
    .line 80
    invoke-virtual {v5, v3}, Lf1/F;->onUnselect(I)V

    .line 81
    .line 82
    .line 83
    iget-object v5, v1, Lf1/k;->t:Lf1/F;

    .line 84
    .line 85
    invoke-virtual {v5}, Lf1/F;->onRelease()V

    .line 86
    .line 87
    .line 88
    :cond_3
    iget-object v5, v1, Lf1/k;->w:Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-nez v6, :cond_5

    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-eqz v7, :cond_4

    .line 109
    .line 110
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    check-cast v7, Lf1/F;

    .line 115
    .line 116
    invoke-virtual {v7, v3}, Lf1/F;->onUnselect(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7}, Lf1/F;->onRelease()V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 124
    .line 125
    .line 126
    :cond_5
    iput-object v2, v1, Lf1/k;->t:Lf1/F;

    .line 127
    .line 128
    :cond_6
    :goto_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Lf1/k;

    .line 133
    .line 134
    if-nez v0, :cond_7

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_7
    iget-object v1, p0, Lf1/Q;->d:Lf1/U;

    .line 138
    .line 139
    iput-object v1, v0, Lf1/k;->s:Lf1/U;

    .line 140
    .line 141
    iget-object v2, p0, Lf1/Q;->a:Lf1/F;

    .line 142
    .line 143
    iput-object v2, v0, Lf1/k;->t:Lf1/F;

    .line 144
    .line 145
    iget-object v2, v0, Lf1/k;->m:Lf1/d;

    .line 146
    .line 147
    iget-object v5, p0, Lf1/Q;->e:Lf1/U;

    .line 148
    .line 149
    if-nez v5, :cond_8

    .line 150
    .line 151
    new-instance v5, LL/d;

    .line 152
    .line 153
    invoke-direct {v5, v4, v1}, LL/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    const/16 v1, 0x106

    .line 157
    .line 158
    invoke-virtual {v2, v1, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 163
    .line 164
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_8
    new-instance v4, LL/d;

    .line 169
    .line 170
    invoke-direct {v4, v5, v1}, LL/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    const/16 v1, 0x108

    .line 174
    .line 175
    invoke-virtual {v2, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 180
    .line 181
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 182
    .line 183
    .line 184
    :goto_2
    iget-object v1, v0, Lf1/k;->w:Ljava/util/HashMap;

    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Lf1/k;->g()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Lf1/k;->l()V

    .line 193
    .line 194
    .line 195
    iget-object v1, p0, Lf1/Q;->f:Ljava/util/ArrayList;

    .line 196
    .line 197
    if-eqz v1, :cond_a

    .line 198
    .line 199
    iget-object v0, v0, Lf1/k;->s:Lf1/U;

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Lf1/U;->c(Ljava/util/Collection;)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lf1/Q;->a()V

    .line 206
    .line 207
    .line 208
    :cond_a
    :goto_4
    return-void
.end method
