.class public final LM/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Class;

.field public final c:I

.field public final d:I

.field public final synthetic e:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;III)V
    .locals 0

    .line 1
    iput p5, p0, LM/Z;->e:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, p0, LM/Z;->a:I

    .line 7
    .line 8
    iput-object p2, p0, LM/Z;->b:Ljava/lang/Class;

    .line 9
    .line 10
    iput p3, p0, LM/Z;->d:I

    .line 11
    .line 12
    iput p4, p0, LM/Z;->c:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Landroid/view/View;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    iget v1, p0, LM/Z;->c:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, LM/Z;->e:I

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p2, p1}, LM/i0;->g(Landroid/view/View;Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_0
    check-cast p1, Ljava/lang/CharSequence;

    .line 23
    .line 24
    invoke-static {p2, p1}, LM/k0;->e(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_1
    check-cast p1, Ljava/lang/CharSequence;

    .line 29
    .line 30
    invoke-static {p2, p1}, LM/i0;->h(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-static {p2, p1}, LM/i0;->i(Landroid/view/View;Z)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 45
    .line 46
    iget v1, p0, LM/Z;->c:I

    .line 47
    .line 48
    if-lt v0, v1, :cond_1

    .line 49
    .line 50
    iget v0, p0, LM/Z;->e:I

    .line 51
    .line 52
    packed-switch v0, :pswitch_data_1

    .line 53
    .line 54
    .line 55
    invoke-static {p2}, LM/i0;->c(Landroid/view/View;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    goto :goto_1

    .line 64
    :pswitch_3
    invoke-static {p2}, LM/k0;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    goto :goto_1

    .line 69
    :pswitch_4
    invoke-static {p2}, LM/i0;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    goto :goto_1

    .line 74
    :pswitch_5
    invoke-static {p2}, LM/i0;->d(Landroid/view/View;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    iget v0, p0, LM/Z;->a:I

    .line 84
    .line 85
    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-object v1, p0, LM/Z;->b:Ljava/lang/Class;

    .line 90
    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    const/4 v0, 0x0

    .line 99
    :goto_1
    iget v1, p0, LM/Z;->e:I

    .line 100
    .line 101
    packed-switch v1, :pswitch_data_2

    .line 102
    .line 103
    .line 104
    check-cast v0, Ljava/lang/Boolean;

    .line 105
    .line 106
    move-object v1, p1

    .line 107
    check-cast v1, Ljava/lang/Boolean;

    .line 108
    .line 109
    const/4 v2, 0x1

    .line 110
    const/4 v3, 0x0

    .line 111
    if-eqz v0, :cond_3

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    move v0, v2

    .line 120
    goto :goto_2

    .line 121
    :cond_3
    move v0, v3

    .line 122
    :goto_2
    if-eqz v1, :cond_4

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_4

    .line 129
    .line 130
    move v1, v2

    .line 131
    goto :goto_3

    .line 132
    :cond_4
    move v1, v3

    .line 133
    :goto_3
    if-ne v0, v1, :cond_5

    .line 134
    .line 135
    :goto_4
    move v3, v2

    .line 136
    :cond_5
    xor-int/lit8 v0, v3, 0x1

    .line 137
    .line 138
    goto :goto_8

    .line 139
    :pswitch_6
    check-cast v0, Ljava/lang/CharSequence;

    .line 140
    .line 141
    move-object v1, p1

    .line 142
    check-cast v1, Ljava/lang/CharSequence;

    .line 143
    .line 144
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    :goto_5
    xor-int/lit8 v0, v0, 0x1

    .line 149
    .line 150
    goto :goto_8

    .line 151
    :pswitch_7
    check-cast v0, Ljava/lang/CharSequence;

    .line 152
    .line 153
    move-object v1, p1

    .line 154
    check-cast v1, Ljava/lang/CharSequence;

    .line 155
    .line 156
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    goto :goto_5

    .line 161
    :pswitch_8
    check-cast v0, Ljava/lang/Boolean;

    .line 162
    .line 163
    move-object v1, p1

    .line 164
    check-cast v1, Ljava/lang/Boolean;

    .line 165
    .line 166
    const/4 v2, 0x1

    .line 167
    const/4 v3, 0x0

    .line 168
    if-eqz v0, :cond_6

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_6

    .line 175
    .line 176
    move v0, v2

    .line 177
    goto :goto_6

    .line 178
    :cond_6
    move v0, v3

    .line 179
    :goto_6
    if-eqz v1, :cond_7

    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_7

    .line 186
    .line 187
    move v1, v2

    .line 188
    goto :goto_7

    .line 189
    :cond_7
    move v1, v3

    .line 190
    :goto_7
    if-ne v0, v1, :cond_5

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :goto_8
    if-eqz v0, :cond_9

    .line 194
    .line 195
    invoke-static {p2}, LM/p0;->getAccessibilityDelegate(Landroid/view/View;)LM/b;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    if-nez v0, :cond_8

    .line 200
    .line 201
    new-instance v0, LM/b;

    .line 202
    .line 203
    invoke-direct {v0}, LM/b;-><init>()V

    .line 204
    .line 205
    .line 206
    :cond_8
    invoke-static {p2, v0}, LM/p0;->setAccessibilityDelegate(Landroid/view/View;LM/b;)V

    .line 207
    .line 208
    .line 209
    iget v0, p0, LM/Z;->a:I

    .line 210
    .line 211
    invoke-virtual {p2, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    iget p1, p0, LM/Z;->d:I

    .line 215
    .line 216
    invoke-static {p2, p1}, LM/p0;->d(Landroid/view/View;I)V

    .line 217
    .line 218
    .line 219
    :cond_9
    return-void

    .line 220
    nop

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
