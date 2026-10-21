.class public final LS2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS2/I;


# instance fields
.field public a:Landroid/content/Context;


# virtual methods
.method public build()LS2/J;
    .locals 11

    .line 1
    iget-object v0, p0, LS2/o;->a:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0, v1}, LU2/d;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, LS2/p;

    .line 9
    .line 10
    iget-object v1, p0, LS2/o;->a:Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, LS2/w;->create()LS2/w;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, LU2/a;->provider(Lt5/a;)Lt5/a;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iput-object v2, v0, LS2/p;->b:Lt5/a;

    .line 24
    .line 25
    invoke-static {v1}, LU2/c;->create(Ljava/lang/Object;)LU2/b;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v0, LS2/p;->e:LU2/b;

    .line 30
    .line 31
    invoke-static {}, Lc3/c;->create()Lc3/c;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {}, Lc3/e;->create()Lc3/e;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v1, v2, v3}, LT2/l;->create(Lt5/a;Lt5/a;Lt5/a;)LT2/l;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, v0, LS2/p;->e:LU2/b;

    .line 44
    .line 45
    invoke-static {v2, v1}, LT2/n;->create(Lt5/a;Lt5/a;)LT2/n;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, LU2/a;->provider(Lt5/a;)Lt5/a;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, v0, LS2/p;->f:Lt5/a;

    .line 54
    .line 55
    iget-object v1, v0, LS2/p;->e:LU2/b;

    .line 56
    .line 57
    invoke-static {}, La3/g;->create()La3/g;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {}, La3/j;->create()La3/j;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v1, v2, v3}, La3/w;->create(Lt5/a;Lt5/a;Lt5/a;)La3/w;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iput-object v1, v0, LS2/p;->j:La3/w;

    .line 70
    .line 71
    iget-object v1, v0, LS2/p;->e:LU2/b;

    .line 72
    .line 73
    invoke-static {v1}, La3/h;->create(Lt5/a;)La3/h;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v1}, LU2/a;->provider(Lt5/a;)Lt5/a;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iput-object v1, v0, LS2/p;->m:Lt5/a;

    .line 82
    .line 83
    invoke-static {}, Lc3/c;->create()Lc3/c;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {}, Lc3/e;->create()Lc3/e;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {}, La3/l;->create()La3/l;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    iget-object v4, v0, LS2/p;->j:La3/w;

    .line 96
    .line 97
    iget-object v5, v0, LS2/p;->m:Lt5/a;

    .line 98
    .line 99
    invoke-static {v1, v2, v3, v4, v5}, La3/s;->create(Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;)La3/s;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v1}, LU2/a;->provider(Lt5/a;)Lt5/a;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iput-object v1, v0, LS2/p;->n:Lt5/a;

    .line 108
    .line 109
    invoke-static {}, Lc3/c;->create()Lc3/c;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v1}, LY2/e;->create(Lt5/a;)LY2/e;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    iget-object v2, v0, LS2/p;->e:LU2/b;

    .line 118
    .line 119
    iget-object v3, v0, LS2/p;->n:Lt5/a;

    .line 120
    .line 121
    invoke-static {}, Lc3/e;->create()Lc3/e;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-static {v2, v3, v1, v4}, LY2/f;->create(Lt5/a;Lt5/a;Lt5/a;Lt5/a;)LY2/f;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    iput-object v1, v0, LS2/p;->p:LY2/f;

    .line 130
    .line 131
    iget-object v2, v0, LS2/p;->b:Lt5/a;

    .line 132
    .line 133
    iget-object v3, v0, LS2/p;->f:Lt5/a;

    .line 134
    .line 135
    iget-object v4, v0, LS2/p;->n:Lt5/a;

    .line 136
    .line 137
    invoke-static {v2, v3, v1, v4, v4}, LY2/c;->create(Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;)LY2/c;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    iput-object v1, v0, LS2/p;->q:LY2/c;

    .line 142
    .line 143
    iget-object v2, v0, LS2/p;->e:LU2/b;

    .line 144
    .line 145
    iget-object v3, v0, LS2/p;->f:Lt5/a;

    .line 146
    .line 147
    iget-object v4, v0, LS2/p;->n:Lt5/a;

    .line 148
    .line 149
    iget-object v5, v0, LS2/p;->p:LY2/f;

    .line 150
    .line 151
    iget-object v6, v0, LS2/p;->b:Lt5/a;

    .line 152
    .line 153
    invoke-static {}, Lc3/c;->create()Lc3/c;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-static {}, Lc3/e;->create()Lc3/e;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    iget-object v10, v0, LS2/p;->n:Lt5/a;

    .line 162
    .line 163
    move-object v7, v4

    .line 164
    invoke-static/range {v2 .. v10}, LZ2/n;->create(Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;)LZ2/n;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iput-object v1, v0, LS2/p;->r:LZ2/n;

    .line 169
    .line 170
    iget-object v1, v0, LS2/p;->b:Lt5/a;

    .line 171
    .line 172
    iget-object v2, v0, LS2/p;->n:Lt5/a;

    .line 173
    .line 174
    iget-object v3, v0, LS2/p;->p:LY2/f;

    .line 175
    .line 176
    invoke-static {v1, v2, v3, v2}, LZ2/p;->create(Lt5/a;Lt5/a;Lt5/a;Lt5/a;)LZ2/p;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    iput-object v1, v0, LS2/p;->s:LZ2/p;

    .line 181
    .line 182
    invoke-static {}, Lc3/c;->create()Lc3/c;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-static {}, Lc3/e;->create()Lc3/e;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    iget-object v3, v0, LS2/p;->q:LY2/c;

    .line 191
    .line 192
    iget-object v4, v0, LS2/p;->r:LZ2/n;

    .line 193
    .line 194
    iget-object v5, v0, LS2/p;->s:LZ2/p;

    .line 195
    .line 196
    invoke-static {v1, v2, v3, v4, v5}, LS2/K;->create(Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;)LS2/K;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-static {v1}, LU2/a;->provider(Lt5/a;)Lt5/a;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    iput-object v1, v0, LS2/p;->t:Lt5/a;

    .line 205
    .line 206
    return-object v0
.end method

.method public bridge synthetic setApplicationContext(Landroid/content/Context;)LS2/I;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LS2/o;->setApplicationContext(Landroid/content/Context;)LS2/o;

    move-result-object p1

    return-object p1
.end method

.method public setApplicationContext(Landroid/content/Context;)LS2/o;
    .locals 0

    .line 2
    invoke-static {p1}, LU2/d;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, LS2/o;->a:Landroid/content/Context;

    return-object p0
.end method
