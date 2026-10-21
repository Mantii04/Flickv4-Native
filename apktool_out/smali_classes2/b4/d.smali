.class public final Lb4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:Ljava/util/ArrayList;

.field public final i:Lb4/e;

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/ArrayList;

.field public final l:Ljava/util/ArrayList;

.field public final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc4/b;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "moduleId"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lc4/b;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lb4/d;->a:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "version"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lc4/b;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lb4/d;->b:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "url"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lc4/b;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lb4/d;->c:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "className"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lc4/b;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lb4/d;->d:Ljava/lang/String;

    .line 35
    .line 36
    const-string v0, "packageName"

    .line 37
    .line 38
    const-string v1, "org.weathero.app"

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Lc4/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lb4/d;->e:Ljava/lang/String;

    .line 45
    .line 46
    const-string v0, "instanceMode"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lc4/b;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lb4/d;->f:Ljava/lang/String;

    .line 53
    .line 54
    const-string v0, "createInstance"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lc4/b;->i(Ljava/lang/String;)Lc4/b;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/4 v1, 0x0

    .line 61
    if-nez v0, :cond_0

    .line 62
    .line 63
    move-object v2, v1

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    new-instance v2, Lb4/e;

    .line 66
    .line 67
    const-string v3, "method"

    .line 68
    .line 69
    invoke-virtual {v0, v3}, Lc4/b;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const-string v4, "params"

    .line 74
    .line 75
    invoke-virtual {v0, v4}, Lc4/b;->h(Ljava/lang/String;)Lc4/a;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Lb4/d;->a(Lc4/a;)Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-direct {v2, v3, v0}, Lb4/e;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    iput-object v2, p0, Lb4/d;->i:Lb4/e;

    .line 87
    .line 88
    const-string v0, "minSdk"

    .line 89
    .line 90
    const/4 v2, 0x1

    .line 91
    invoke-virtual {p1, v0, v2}, Lc4/b;->a(Ljava/lang/String;I)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    iput v0, p0, Lb4/d;->g:I

    .line 96
    .line 97
    const-string v0, "constructorParams"

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lc4/b;->h(Ljava/lang/String;)Lc4/a;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Lb4/d;->a(Lc4/a;)Ljava/util/ArrayList;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-object v0, p0, Lb4/d;->h:Ljava/util/ArrayList;

    .line 108
    .line 109
    const-string v0, "startSequence"

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Lc4/b;->h(Ljava/lang/String;)Lc4/a;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v0}, Lb4/d;->b(Lc4/a;)Ljava/util/ArrayList;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iput-object v0, p0, Lb4/d;->j:Ljava/util/ArrayList;

    .line 120
    .line 121
    const-string v0, "stopSequence"

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Lc4/b;->h(Ljava/lang/String;)Lc4/a;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v0}, Lb4/d;->b(Lc4/a;)Ljava/util/ArrayList;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iput-object v0, p0, Lb4/d;->k:Ljava/util/ArrayList;

    .line 132
    .line 133
    const-string v0, "buildSequence"

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Lc4/b;->f(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_1

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Lc4/b;->d(Ljava/lang/String;)Lc4/b;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const-string v2, "builderClass"

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Lc4/b;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iput-object v1, p0, Lb4/d;->m:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {p1, v0}, Lc4/b;->d(Ljava/lang/String;)Lc4/b;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    const-string v0, "sequence"

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Lc4/b;->h(Ljava/lang/String;)Lc4/a;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-static {p1}, Lb4/d;->b(Lc4/a;)Ljava/util/ArrayList;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    iput-object p1, p0, Lb4/d;->l:Ljava/util/ArrayList;

    .line 168
    .line 169
    return-void

    .line 170
    :cond_1
    iput-object v1, p0, Lb4/d;->m:Ljava/lang/String;

    .line 171
    .line 172
    iput-object v1, p0, Lb4/d;->l:Ljava/util/ArrayList;

    .line 173
    .line 174
    return-void
.end method

.method public static a(Lc4/a;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-virtual {p0}, Lc4/a;->a()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_1

    .line 15
    .line 16
    new-instance v2, Lb4/f;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lc4/a;->d(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-direct {v2, v3}, Lb4/f;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static b(Lc4/a;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-virtual {p0}, Lc4/a;->a()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lc4/a;->b(I)Lc4/b;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, Lb4/e;

    .line 21
    .line 22
    const-string v4, "method"

    .line 23
    .line 24
    invoke-virtual {v2, v4}, Lc4/b;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const-string v5, "params"

    .line 29
    .line 30
    invoke-virtual {v2, v5}, Lc4/b;->h(Ljava/lang/String;)Lc4/a;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2}, Lb4/d;->a(Lc4/a;)Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-direct {v3, v4, v2}, Lb4/e;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lb4/d;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " v"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lb4/d;->b:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lb4/d;->f:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
