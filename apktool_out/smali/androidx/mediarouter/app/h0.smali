.class public final Landroidx/mediarouter/app/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Landroidx/mediarouter/app/i0;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/app/h0;->b:Landroidx/mediarouter/app/i0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/h0;->b:Landroidx/mediarouter/app/i0;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/mediarouter/app/Y;->u:Lf1/U;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroidx/mediarouter/app/i0;->p(Lf1/U;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v1, v0, 0x1

    .line 10
    .line 11
    iget-object v2, p1, Landroidx/mediarouter/app/Y;->u:Lf1/U;

    .line 12
    .line 13
    invoke-virtual {v2}, Lf1/U;->isGroup()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object v3, p1, Landroidx/mediarouter/app/i0;->H:Landroidx/mediarouter/app/j0;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v4, v3, Landroidx/mediarouter/app/j0;->m:Landroidx/mediarouter/app/m0;

    .line 22
    .line 23
    iget-object v4, v4, Landroidx/mediarouter/app/m0;->n:Lf1/X;

    .line 24
    .line 25
    iget-object v5, p1, Landroidx/mediarouter/app/Y;->u:Lf1/U;

    .line 26
    .line 27
    invoke-virtual {v4, v5}, Lf1/X;->addMemberToDynamicGroup(Lf1/U;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v4, v3, Landroidx/mediarouter/app/j0;->m:Landroidx/mediarouter/app/m0;

    .line 32
    .line 33
    iget-object v4, v4, Landroidx/mediarouter/app/m0;->n:Lf1/X;

    .line 34
    .line 35
    iget-object v5, p1, Landroidx/mediarouter/app/Y;->u:Lf1/U;

    .line 36
    .line 37
    invoke-virtual {v4, v5}, Lf1/X;->removeMemberFromDynamicGroup(Lf1/U;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    xor-int/lit8 v4, v2, 0x1

    .line 41
    .line 42
    invoke-virtual {p1, v1, v4}, Landroidx/mediarouter/app/i0;->q(ZZ)V

    .line 43
    .line 44
    .line 45
    const/4 v4, 0x1

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    iget-object v2, v3, Landroidx/mediarouter/app/j0;->m:Landroidx/mediarouter/app/m0;

    .line 49
    .line 50
    iget-object v2, v2, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 51
    .line 52
    invoke-virtual {v2}, Lf1/U;->getMemberRoutes()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget-object v5, p1, Landroidx/mediarouter/app/Y;->u:Lf1/U;

    .line 57
    .line 58
    invoke-virtual {v5}, Lf1/U;->getMemberRoutes()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_2

    .line 71
    .line 72
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, Lf1/U;

    .line 77
    .line 78
    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-eq v7, v1, :cond_1

    .line 83
    .line 84
    iget-object v7, v3, Landroidx/mediarouter/app/j0;->m:Landroidx/mediarouter/app/m0;

    .line 85
    .line 86
    iget-object v7, v7, Landroidx/mediarouter/app/m0;->E:Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-virtual {v6}, Lf1/U;->getId()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    check-cast v6, Landroidx/mediarouter/app/Y;

    .line 97
    .line 98
    instance-of v7, v6, Landroidx/mediarouter/app/i0;

    .line 99
    .line 100
    if-eqz v7, :cond_1

    .line 101
    .line 102
    check-cast v6, Landroidx/mediarouter/app/i0;

    .line 103
    .line 104
    invoke-virtual {v6, v1, v4}, Landroidx/mediarouter/app/i0;->q(ZZ)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    iget-object p1, p1, Landroidx/mediarouter/app/Y;->u:Lf1/U;

    .line 109
    .line 110
    iget-object v2, v3, Landroidx/mediarouter/app/j0;->m:Landroidx/mediarouter/app/m0;

    .line 111
    .line 112
    iget-object v5, v2, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 113
    .line 114
    invoke-virtual {v5}, Lf1/U;->getMemberRoutes()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    invoke-virtual {p1}, Lf1/U;->isGroup()Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    const/4 v8, -0x1

    .line 131
    if-eqz v7, :cond_5

    .line 132
    .line 133
    invoke-virtual {p1}, Lf1/U;->getMemberRoutes()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    if-eqz v7, :cond_7

    .line 146
    .line 147
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    check-cast v7, Lf1/U;

    .line 152
    .line 153
    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    if-eq v7, v1, :cond_3

    .line 158
    .line 159
    if-nez v0, :cond_4

    .line 160
    .line 161
    move v7, v4

    .line 162
    goto :goto_3

    .line 163
    :cond_4
    move v7, v8

    .line 164
    :goto_3
    add-int/2addr v6, v7

    .line 165
    goto :goto_2

    .line 166
    :cond_5
    if-nez v0, :cond_6

    .line 167
    .line 168
    move v8, v4

    .line 169
    :cond_6
    add-int/2addr v6, v8

    .line 170
    :cond_7
    iget-boolean p1, v2, Landroidx/mediarouter/app/m0;->b0:Z

    .line 171
    .line 172
    const/4 v0, 0x0

    .line 173
    if-eqz p1, :cond_8

    .line 174
    .line 175
    iget-object p1, v2, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 176
    .line 177
    invoke-virtual {p1}, Lf1/U;->getMemberRoutes()Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-le p1, v4, :cond_8

    .line 186
    .line 187
    move p1, v4

    .line 188
    goto :goto_4

    .line 189
    :cond_8
    move p1, v0

    .line 190
    :goto_4
    iget-boolean v1, v2, Landroidx/mediarouter/app/m0;->b0:Z

    .line 191
    .line 192
    if-eqz v1, :cond_9

    .line 193
    .line 194
    const/4 v1, 0x2

    .line 195
    if-lt v6, v1, :cond_9

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_9
    move v4, v0

    .line 199
    :goto_5
    if-eq p1, v4, :cond_b

    .line 200
    .line 201
    iget-object p1, v2, Landroidx/mediarouter/app/m0;->B:Landroidx/recyclerview/widget/RecyclerView;

    .line 202
    .line 203
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lm1/B0;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    instance-of v1, p1, Landroidx/mediarouter/app/e0;

    .line 208
    .line 209
    if-eqz v1, :cond_b

    .line 210
    .line 211
    check-cast p1, Landroidx/mediarouter/app/e0;

    .line 212
    .line 213
    iget-object v1, p1, Lm1/B0;->a:Landroid/view/View;

    .line 214
    .line 215
    if-eqz v4, :cond_a

    .line 216
    .line 217
    iget v0, p1, Landroidx/mediarouter/app/e0;->z:I

    .line 218
    .line 219
    :cond_a
    invoke-virtual {v3, v1, v0}, Landroidx/mediarouter/app/j0;->a(Landroid/view/View;I)V

    .line 220
    .line 221
    .line 222
    :cond_b
    return-void
.end method
