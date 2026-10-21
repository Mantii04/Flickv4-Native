.class public final LW0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS0/s;


# static fields
.field public static final g:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Z

.field public final b:LW0/a;

.field public final c:Landroidx/media3/common/util/ParsableByteArray;

.field public d:Ljava/util/LinkedHashMap;

.field public e:F

.field public f:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LW0/b;->g:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, -0x800001

    .line 5
    .line 6
    .line 7
    iput v0, p0, LW0/b;->e:F

    .line 8
    .line 9
    iput v0, p0, LW0/b;->f:F

    .line 10
    .line 11
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LW0/b;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, LW0/b;->a:Z

    .line 29
    .line 30
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, [B

    .line 35
    .line 36
    invoke-static {v0}, Landroidx/media3/common/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v2, "Format:"

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-static {v2}, LP3/v;->checkArgument(Z)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, LW0/a;->fromFormatLine(Ljava/lang/String;)LW0/a;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, LW0/a;

    .line 58
    .line 59
    iput-object v0, p0, LW0/b;->b:LW0/a;

    .line 60
    .line 61
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 62
    .line 63
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, [B

    .line 68
    .line 69
    invoke-direct {v0, p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 70
    .line 71
    .line 72
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 73
    .line 74
    invoke-virtual {p0, v0, p1}, LW0/b;->b(Landroidx/media3/common/util/ParsableByteArray;Ljava/nio/charset/Charset;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_0
    iput-boolean v0, p0, LW0/b;->a:Z

    .line 79
    .line 80
    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, LW0/b;->b:LW0/a;

    .line 82
    .line 83
    return-void
.end method

.method public static a(JLjava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Long;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    cmp-long v1, v1, p0

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    return v0

    .line 24
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Long;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    cmp-long v1, v1, p0

    .line 35
    .line 36
    if-gez v1, :cond_1

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v0, 0x0

    .line 45
    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p2, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance p0, Ljava/util/ArrayList;

    .line 53
    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    add-int/lit8 p1, v0, -0x1

    .line 61
    .line 62
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Ljava/util/Collection;

    .line 67
    .line 68
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 69
    .line 70
    .line 71
    :goto_2
    invoke-virtual {p3, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return v0
.end method

.method public static c(Ljava/lang/String;)J
    .locals 6

    .line 1
    sget-object v0, LW0/b;->g:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    return-wide v0

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    const-wide v2, 0xd693a400L

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    mul-long/2addr v0, v2

    .line 44
    const/4 v2, 0x2

    .line 45
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    const-wide/32 v4, 0x3938700

    .line 60
    .line 61
    .line 62
    mul-long/2addr v2, v4

    .line 63
    add-long/2addr v2, v0

    .line 64
    const/4 v0, 0x3

    .line 65
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    const-wide/32 v4, 0xf4240

    .line 80
    .line 81
    .line 82
    mul-long/2addr v0, v4

    .line 83
    add-long/2addr v0, v2

    .line 84
    const/4 v2, 0x4

    .line 85
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    check-cast p0, Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 96
    .line 97
    .line 98
    move-result-wide v2

    .line 99
    const-wide/16 v4, 0x2710

    .line 100
    .line 101
    mul-long/2addr v2, v4

    .line 102
    add-long/2addr v2, v0

    .line 103
    return-wide v2
.end method


# virtual methods
.method public final b(Landroidx/media3/common/util/ParsableByteArray;Ljava/nio/charset/Charset;)V
    .locals 6

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_d

    .line 6
    .line 7
    const-string v1, "[Script Info]"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x5b

    .line 14
    .line 15
    if-eqz v1, :cond_5

    .line 16
    .line 17
    :catch_0
    :goto_1
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;->peekCodePoint(Ljava/nio/charset/Charset;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eq v1, v2, :cond_0

    .line 34
    .line 35
    :cond_1
    const-string v1, ":"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    array-length v1, v0

    .line 42
    const/4 v3, 0x2

    .line 43
    if-eq v1, v3, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const/4 v1, 0x0

    .line 47
    aget-object v1, v0, v1

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, LP3/a;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    const/4 v3, 0x1

    .line 61
    const-string v4, "playresx"

    .line 62
    .line 63
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_4

    .line 68
    .line 69
    const-string v4, "playresy"

    .line 70
    .line 71
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    :try_start_0
    aget-object v0, v0, v3

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iput v0, p0, LW0/b;->f:F

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    aget-object v0, v0, v3

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iput v0, p0, LW0/b;->e:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    const-string v1, "[V4+ Styles]"

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    const-string v3, "SsaParser"

    .line 111
    .line 112
    if-eqz v1, :cond_b

    .line 113
    .line 114
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 115
    .line 116
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 117
    .line 118
    .line 119
    const/4 v1, 0x0

    .line 120
    :cond_6
    :goto_2
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    if-eqz v4, :cond_a

    .line 125
    .line 126
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_7

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;->peekCodePoint(Ljava/nio/charset/Charset;)I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-eq v5, v2, :cond_a

    .line 137
    .line 138
    :cond_7
    const-string v5, "Format:"

    .line 139
    .line 140
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-eqz v5, :cond_8

    .line 145
    .line 146
    invoke-static {v4}, LW0/c;->fromFormatLine(Ljava/lang/String;)LW0/c;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    goto :goto_2

    .line 151
    :cond_8
    const-string v5, "Style:"

    .line 152
    .line 153
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-eqz v5, :cond_6

    .line 158
    .line 159
    if-nez v1, :cond_9

    .line 160
    .line 161
    const-string v5, "Skipping \'Style:\' line before \'Format:\' line: "

    .line 162
    .line 163
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-static {v3, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_9
    invoke-static {v4, v1}, LW0/e;->fromStyleLine(Ljava/lang/String;LW0/c;)LW0/e;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    if-eqz v4, :cond_6

    .line 176
    .line 177
    iget-object v5, v4, LW0/e;->a:Ljava/lang/String;

    .line 178
    .line 179
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_a
    iput-object v0, p0, LW0/b;->d:Ljava/util/LinkedHashMap;

    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_b
    const-string v1, "[V4 Styles]"

    .line 188
    .line 189
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_c

    .line 194
    .line 195
    const-string v0, "[V4 Styles] are not supported"

    .line 196
    .line 197
    invoke-static {v3, v0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :cond_c
    const-string v1, "[Events]"

    .line 203
    .line 204
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_0

    .line 209
    .line 210
    :cond_d
    return-void
.end method

.method public getCueReplacementBehavior()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public parse([BIILS0/r;Landroidx/media3/common/util/Consumer;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "LS0/r;",
            "Landroidx/media3/common/util/Consumer<",
            "LS0/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    new-instance v4, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v5, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    add-int v6, v1, p3

    .line 18
    .line 19
    iget-object v7, v0, LW0/b;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 20
    .line 21
    move-object/from16 v8, p1

    .line 22
    .line 23
    invoke-virtual {v7, v8, v6}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v7, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUtfCharsetFromBom()Ljava/nio/charset/Charset;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 37
    .line 38
    :goto_0
    iget-boolean v6, v0, LW0/b;->a:Z

    .line 39
    .line 40
    if-nez v6, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0, v7, v1}, LW0/b;->b(Landroidx/media3/common/util/ParsableByteArray;Ljava/nio/charset/Charset;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    if-eqz v6, :cond_2

    .line 46
    .line 47
    iget-object v6, v0, LW0/b;->b:LW0/a;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const/4 v6, 0x0

    .line 51
    :goto_1
    invoke-virtual {v7, v1}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    if-eqz v9, :cond_1f

    .line 56
    .line 57
    const-string v14, "Format:"

    .line 58
    .line 59
    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v14

    .line 63
    if-eqz v14, :cond_3

    .line 64
    .line 65
    invoke-static {v9}, LW0/a;->fromFormatLine(Ljava/lang/String;)LW0/a;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    const-string v14, "Dialogue:"

    .line 71
    .line 72
    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v15

    .line 76
    if-eqz v15, :cond_4

    .line 77
    .line 78
    const-string v15, "SsaParser"

    .line 79
    .line 80
    if-nez v6, :cond_5

    .line 81
    .line 82
    const-string v10, "Skipping dialogue line before complete format: "

    .line 83
    .line 84
    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    invoke-static {v15, v9}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    :goto_2
    move-object/from16 v20, v1

    .line 92
    .line 93
    move-object/from16 v21, v6

    .line 94
    .line 95
    move-object/from16 v19, v7

    .line 96
    .line 97
    goto/16 :goto_12

    .line 98
    .line 99
    :cond_5
    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v14

    .line 103
    invoke-static {v14}, LP3/v;->checkArgument(Z)V

    .line 104
    .line 105
    .line 106
    const/16 v14, 0x9

    .line 107
    .line 108
    invoke-virtual {v9, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v14

    .line 112
    const-string v8, ","

    .line 113
    .line 114
    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    iget v12, v6, LW0/a;->f:I

    .line 120
    .line 121
    invoke-virtual {v14, v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    array-length v13, v8

    .line 126
    if-eq v13, v12, :cond_6

    .line 127
    .line 128
    const-string v8, "Skipping dialogue line with fewer columns than format: "

    .line 129
    .line 130
    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    invoke-static {v15, v8}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_6
    const/4 v12, -0x1

    .line 139
    iget v13, v6, LW0/a;->a:I

    .line 140
    .line 141
    if-eq v13, v12, :cond_7

    .line 142
    .line 143
    :try_start_0
    aget-object v14, v8, v13

    .line 144
    .line 145
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v14

    .line 149
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v13
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_3

    .line 154
    :catch_0
    new-instance v14, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v10, "Fail to parse layer: "

    .line 157
    .line 158
    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    aget-object v10, v8, v13

    .line 162
    .line 163
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v10

    .line 170
    invoke-static {v15, v10}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :cond_7
    const/4 v13, 0x0

    .line 174
    :goto_3
    iget v10, v6, LW0/a;->b:I

    .line 175
    .line 176
    aget-object v10, v8, v10

    .line 177
    .line 178
    invoke-static {v10}, LW0/b;->c(Ljava/lang/String;)J

    .line 179
    .line 180
    .line 181
    move-result-wide v11

    .line 182
    cmp-long v10, v11, p2

    .line 183
    .line 184
    const-string v14, "Skipping invalid timing: "

    .line 185
    .line 186
    if-nez v10, :cond_8

    .line 187
    .line 188
    invoke-virtual {v14, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    invoke-static {v15, v8}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_8
    iget v10, v6, LW0/a;->c:I

    .line 197
    .line 198
    aget-object v10, v8, v10

    .line 199
    .line 200
    move-object/from16 v19, v7

    .line 201
    .line 202
    move-object/from16 v20, v8

    .line 203
    .line 204
    invoke-static {v10}, LW0/b;->c(Ljava/lang/String;)J

    .line 205
    .line 206
    .line 207
    move-result-wide v7

    .line 208
    cmp-long v10, v7, p2

    .line 209
    .line 210
    if-eqz v10, :cond_9

    .line 211
    .line 212
    cmp-long v10, v7, v11

    .line 213
    .line 214
    if-gtz v10, :cond_a

    .line 215
    .line 216
    :cond_9
    move-object/from16 v20, v1

    .line 217
    .line 218
    move-object/from16 v21, v6

    .line 219
    .line 220
    goto/16 :goto_11

    .line 221
    .line 222
    :cond_a
    iget-object v9, v0, LW0/b;->d:Ljava/util/LinkedHashMap;

    .line 223
    .line 224
    if-eqz v9, :cond_b

    .line 225
    .line 226
    iget v10, v6, LW0/a;->d:I

    .line 227
    .line 228
    const/4 v14, -0x1

    .line 229
    if-eq v10, v14, :cond_b

    .line 230
    .line 231
    aget-object v10, v20, v10

    .line 232
    .line 233
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v10

    .line 237
    invoke-virtual {v9, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v9

    .line 241
    check-cast v9, LW0/e;

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_b
    const/4 v9, 0x0

    .line 245
    :goto_4
    iget v10, v6, LW0/a;->e:I

    .line 246
    .line 247
    aget-object v10, v20, v10

    .line 248
    .line 249
    invoke-static {v10}, LW0/d;->parseFromDialogue(Ljava/lang/String;)LW0/d;

    .line 250
    .line 251
    .line 252
    move-result-object v14

    .line 253
    invoke-static {v10}, LW0/d;->stripStyleOverrides(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    move-object/from16 v20, v1

    .line 258
    .line 259
    const-string v1, "\\N"

    .line 260
    .line 261
    move-object/from16 v21, v6

    .line 262
    .line 263
    const-string v6, "\n"

    .line 264
    .line 265
    invoke-virtual {v10, v1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    const-string v10, "\\n"

    .line 270
    .line 271
    invoke-virtual {v1, v10, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    const-string v6, "\\h"

    .line 276
    .line 277
    const-string v10, "\u00a0"

    .line 278
    .line 279
    invoke-virtual {v1, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    iget v6, v0, LW0/b;->e:F

    .line 284
    .line 285
    iget v10, v0, LW0/b;->f:F

    .line 286
    .line 287
    new-instance v0, Landroid/text/SpannableString;

    .line 288
    .line 289
    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 290
    .line 291
    .line 292
    new-instance v1, Landroidx/media3/common/text/Cue$Builder;

    .line 293
    .line 294
    invoke-direct {v1}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1, v0}, Landroidx/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Landroidx/media3/common/text/Cue$Builder;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-virtual {v1, v13}, Landroidx/media3/common/text/Cue$Builder;->setZIndex(I)Landroidx/media3/common/text/Cue$Builder;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    const p2, -0x800001

    .line 306
    .line 307
    .line 308
    if-eqz v9, :cond_13

    .line 309
    .line 310
    iget-object v13, v9, LW0/e;->c:Ljava/lang/Integer;

    .line 311
    .line 312
    move/from16 v23, v6

    .line 313
    .line 314
    if-eqz v13, :cond_c

    .line 315
    .line 316
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    .line 317
    .line 318
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 319
    .line 320
    .line 321
    move-result v13

    .line 322
    invoke-direct {v6, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 326
    .line 327
    .line 328
    move-result v13

    .line 329
    move/from16 v24, v10

    .line 330
    .line 331
    move-object/from16 v18, v14

    .line 332
    .line 333
    const/4 v10, 0x0

    .line 334
    const/16 v14, 0x21

    .line 335
    .line 336
    invoke-virtual {v0, v6, v10, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 337
    .line 338
    .line 339
    move-object/from16 v6, v18

    .line 340
    .line 341
    goto :goto_5

    .line 342
    :cond_c
    move/from16 v24, v10

    .line 343
    .line 344
    move-object v6, v14

    .line 345
    :goto_5
    iget v10, v9, LW0/e;->j:I

    .line 346
    .line 347
    const/4 v13, 0x3

    .line 348
    if-ne v10, v13, :cond_d

    .line 349
    .line 350
    iget-object v10, v9, LW0/e;->d:Ljava/lang/Integer;

    .line 351
    .line 352
    if-eqz v10, :cond_d

    .line 353
    .line 354
    new-instance v14, Landroid/text/style/BackgroundColorSpan;

    .line 355
    .line 356
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 357
    .line 358
    .line 359
    move-result v10

    .line 360
    invoke-direct {v14, v10}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 364
    .line 365
    .line 366
    move-result v10

    .line 367
    const/16 v3, 0x21

    .line 368
    .line 369
    const/4 v13, 0x0

    .line 370
    invoke-virtual {v0, v14, v13, v10, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 371
    .line 372
    .line 373
    :cond_d
    iget v3, v9, LW0/e;->e:F

    .line 374
    .line 375
    cmpl-float v10, v3, p2

    .line 376
    .line 377
    if-eqz v10, :cond_e

    .line 378
    .line 379
    cmpl-float v10, v24, p2

    .line 380
    .line 381
    if-eqz v10, :cond_e

    .line 382
    .line 383
    div-float v3, v3, v24

    .line 384
    .line 385
    const/4 v10, 0x1

    .line 386
    invoke-virtual {v1, v3, v10}, Landroidx/media3/common/text/Cue$Builder;->setTextSize(FI)Landroidx/media3/common/text/Cue$Builder;

    .line 387
    .line 388
    .line 389
    :cond_e
    iget-boolean v3, v9, LW0/e;->g:Z

    .line 390
    .line 391
    iget-boolean v10, v9, LW0/e;->f:Z

    .line 392
    .line 393
    if-eqz v10, :cond_f

    .line 394
    .line 395
    if-eqz v3, :cond_f

    .line 396
    .line 397
    new-instance v3, Landroid/text/style/StyleSpan;

    .line 398
    .line 399
    const/4 v10, 0x3

    .line 400
    invoke-direct {v3, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 404
    .line 405
    .line 406
    move-result v10

    .line 407
    const/16 v13, 0x21

    .line 408
    .line 409
    const/4 v14, 0x0

    .line 410
    invoke-virtual {v0, v3, v14, v10, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 411
    .line 412
    .line 413
    goto :goto_6

    .line 414
    :cond_f
    const/16 v13, 0x21

    .line 415
    .line 416
    const/4 v14, 0x0

    .line 417
    if-eqz v10, :cond_10

    .line 418
    .line 419
    new-instance v3, Landroid/text/style/StyleSpan;

    .line 420
    .line 421
    const/4 v10, 0x1

    .line 422
    invoke-direct {v3, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 426
    .line 427
    .line 428
    move-result v10

    .line 429
    invoke-virtual {v0, v3, v14, v10, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 430
    .line 431
    .line 432
    goto :goto_6

    .line 433
    :cond_10
    if-eqz v3, :cond_11

    .line 434
    .line 435
    new-instance v3, Landroid/text/style/StyleSpan;

    .line 436
    .line 437
    const/4 v10, 0x2

    .line 438
    invoke-direct {v3, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 442
    .line 443
    .line 444
    move-result v10

    .line 445
    invoke-virtual {v0, v3, v14, v10, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 446
    .line 447
    .line 448
    :cond_11
    :goto_6
    iget-boolean v3, v9, LW0/e;->h:Z

    .line 449
    .line 450
    if-eqz v3, :cond_12

    .line 451
    .line 452
    new-instance v3, Landroid/text/style/UnderlineSpan;

    .line 453
    .line 454
    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 458
    .line 459
    .line 460
    move-result v10

    .line 461
    invoke-virtual {v0, v3, v14, v10, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 462
    .line 463
    .line 464
    :cond_12
    iget-boolean v3, v9, LW0/e;->i:Z

    .line 465
    .line 466
    if-eqz v3, :cond_14

    .line 467
    .line 468
    new-instance v3, Landroid/text/style/StrikethroughSpan;

    .line 469
    .line 470
    invoke-direct {v3}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 474
    .line 475
    .line 476
    move-result v10

    .line 477
    invoke-virtual {v0, v3, v14, v10, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 478
    .line 479
    .line 480
    goto :goto_7

    .line 481
    :cond_13
    move/from16 v23, v6

    .line 482
    .line 483
    move/from16 v24, v10

    .line 484
    .line 485
    move-object v6, v14

    .line 486
    :cond_14
    :goto_7
    iget v0, v6, LW0/d;->a:I

    .line 487
    .line 488
    const/4 v3, -0x1

    .line 489
    if-eq v0, v3, :cond_15

    .line 490
    .line 491
    goto :goto_8

    .line 492
    :cond_15
    if-eqz v9, :cond_16

    .line 493
    .line 494
    iget v0, v9, LW0/e;->b:I

    .line 495
    .line 496
    goto :goto_8

    .line 497
    :cond_16
    move v0, v3

    .line 498
    :goto_8
    const-string v3, "Unknown alignment: "

    .line 499
    .line 500
    packed-switch v0, :pswitch_data_0

    .line 501
    .line 502
    .line 503
    :pswitch_0
    invoke-static {v0, v3, v15}, LA/i;->v(ILjava/lang/String;Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    :pswitch_1
    const/4 v9, 0x0

    .line 507
    goto :goto_9

    .line 508
    :pswitch_2
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 509
    .line 510
    goto :goto_9

    .line 511
    :pswitch_3
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 512
    .line 513
    goto :goto_9

    .line 514
    :pswitch_4
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 515
    .line 516
    :goto_9
    invoke-virtual {v1, v9}, Landroidx/media3/common/text/Cue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Landroidx/media3/common/text/Cue$Builder;

    .line 517
    .line 518
    .line 519
    move-result-object v9

    .line 520
    const/high16 v10, -0x80000000

    .line 521
    .line 522
    packed-switch v0, :pswitch_data_1

    .line 523
    .line 524
    .line 525
    :pswitch_5
    invoke-static {v0, v3, v15}, LA/i;->v(ILjava/lang/String;Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    :pswitch_6
    move v13, v10

    .line 529
    goto :goto_a

    .line 530
    :pswitch_7
    const/4 v13, 0x2

    .line 531
    goto :goto_a

    .line 532
    :pswitch_8
    const/4 v13, 0x1

    .line 533
    goto :goto_a

    .line 534
    :pswitch_9
    const/4 v13, 0x0

    .line 535
    :goto_a
    invoke-virtual {v9, v13}, Landroidx/media3/common/text/Cue$Builder;->setPositionAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    .line 536
    .line 537
    .line 538
    move-result-object v9

    .line 539
    packed-switch v0, :pswitch_data_2

    .line 540
    .line 541
    .line 542
    :pswitch_a
    invoke-static {v0, v3, v15}, LA/i;->v(ILjava/lang/String;Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    goto :goto_b

    .line 546
    :pswitch_b
    const/4 v10, 0x0

    .line 547
    goto :goto_b

    .line 548
    :pswitch_c
    const/4 v10, 0x1

    .line 549
    goto :goto_b

    .line 550
    :pswitch_d
    const/4 v10, 0x2

    .line 551
    :goto_b
    :pswitch_e
    invoke-virtual {v9, v10}, Landroidx/media3/common/text/Cue$Builder;->setLineAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    .line 552
    .line 553
    .line 554
    iget-object v0, v6, LW0/d;->b:Landroid/graphics/PointF;

    .line 555
    .line 556
    if-eqz v0, :cond_17

    .line 557
    .line 558
    cmpl-float v3, v24, p2

    .line 559
    .line 560
    if-eqz v3, :cond_17

    .line 561
    .line 562
    cmpl-float v3, v23, p2

    .line 563
    .line 564
    if-eqz v3, :cond_17

    .line 565
    .line 566
    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 567
    .line 568
    div-float v3, v3, v23

    .line 569
    .line 570
    invoke-virtual {v1, v3}, Landroidx/media3/common/text/Cue$Builder;->setPosition(F)Landroidx/media3/common/text/Cue$Builder;

    .line 571
    .line 572
    .line 573
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 574
    .line 575
    div-float v0, v0, v24

    .line 576
    .line 577
    const/4 v14, 0x0

    .line 578
    invoke-virtual {v1, v0, v14}, Landroidx/media3/common/text/Cue$Builder;->setLine(FI)Landroidx/media3/common/text/Cue$Builder;

    .line 579
    .line 580
    .line 581
    goto :goto_f

    .line 582
    :cond_17
    invoke-virtual {v1}, Landroidx/media3/common/text/Cue$Builder;->getPositionAnchor()I

    .line 583
    .line 584
    .line 585
    move-result v0

    .line 586
    const v3, 0x3d4ccccd    # 0.05f

    .line 587
    .line 588
    .line 589
    const/high16 v6, 0x3f000000    # 0.5f

    .line 590
    .line 591
    const v9, 0x3f733333    # 0.95f

    .line 592
    .line 593
    .line 594
    if-eqz v0, :cond_1a

    .line 595
    .line 596
    const/4 v10, 0x1

    .line 597
    if-eq v0, v10, :cond_19

    .line 598
    .line 599
    const/4 v13, 0x2

    .line 600
    if-eq v0, v13, :cond_18

    .line 601
    .line 602
    move/from16 v0, p2

    .line 603
    .line 604
    goto :goto_c

    .line 605
    :cond_18
    move v0, v9

    .line 606
    goto :goto_c

    .line 607
    :cond_19
    const/4 v13, 0x2

    .line 608
    move v0, v6

    .line 609
    goto :goto_c

    .line 610
    :cond_1a
    const/4 v10, 0x1

    .line 611
    const/4 v13, 0x2

    .line 612
    move v0, v3

    .line 613
    :goto_c
    invoke-virtual {v1, v0}, Landroidx/media3/common/text/Cue$Builder;->setPosition(F)Landroidx/media3/common/text/Cue$Builder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v1}, Landroidx/media3/common/text/Cue$Builder;->getLineAnchor()I

    .line 617
    .line 618
    .line 619
    move-result v0

    .line 620
    if-eqz v0, :cond_1d

    .line 621
    .line 622
    if-eq v0, v10, :cond_1c

    .line 623
    .line 624
    if-eq v0, v13, :cond_1b

    .line 625
    .line 626
    move/from16 v13, p2

    .line 627
    .line 628
    :goto_d
    const/4 v14, 0x0

    .line 629
    goto :goto_e

    .line 630
    :cond_1b
    move v13, v9

    .line 631
    goto :goto_d

    .line 632
    :cond_1c
    move v13, v6

    .line 633
    goto :goto_d

    .line 634
    :cond_1d
    move v13, v3

    .line 635
    goto :goto_d

    .line 636
    :goto_e
    invoke-virtual {v1, v13, v14}, Landroidx/media3/common/text/Cue$Builder;->setLine(FI)Landroidx/media3/common/text/Cue$Builder;

    .line 637
    .line 638
    .line 639
    :goto_f
    invoke-virtual {v1}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    invoke-static {v11, v12, v5, v4}, LW0/b;->a(JLjava/util/ArrayList;Ljava/util/ArrayList;)I

    .line 644
    .line 645
    .line 646
    move-result v1

    .line 647
    invoke-static {v7, v8, v5, v4}, LW0/b;->a(JLjava/util/ArrayList;Ljava/util/ArrayList;)I

    .line 648
    .line 649
    .line 650
    move-result v3

    .line 651
    :goto_10
    if-ge v1, v3, :cond_1e

    .line 652
    .line 653
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v6

    .line 657
    check-cast v6, Ljava/util/List;

    .line 658
    .line 659
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    .line 661
    .line 662
    add-int/lit8 v1, v1, 0x1

    .line 663
    .line 664
    goto :goto_10

    .line 665
    :goto_11
    invoke-virtual {v14, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    invoke-static {v15, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    :cond_1e
    :goto_12
    move-object/from16 v0, p0

    .line 673
    .line 674
    move-object/from16 v7, v19

    .line 675
    .line 676
    move-object/from16 v1, v20

    .line 677
    .line 678
    move-object/from16 v6, v21

    .line 679
    .line 680
    goto/16 :goto_1

    .line 681
    .line 682
    :cond_1f
    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    const/4 v14, 0x0

    .line 688
    iget-wide v0, v2, LS0/r;->a:J

    .line 689
    .line 690
    cmp-long v0, v0, p2

    .line 691
    .line 692
    if-eqz v0, :cond_20

    .line 693
    .line 694
    iget-boolean v0, v2, LS0/r;->b:Z

    .line 695
    .line 696
    if-eqz v0, :cond_20

    .line 697
    .line 698
    new-instance v8, Ljava/util/ArrayList;

    .line 699
    .line 700
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 701
    .line 702
    .line 703
    goto :goto_13

    .line 704
    :cond_20
    const/4 v8, 0x0

    .line 705
    :goto_13
    move v11, v14

    .line 706
    :goto_14
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 707
    .line 708
    .line 709
    move-result v0

    .line 710
    if-ge v11, v0, :cond_26

    .line 711
    .line 712
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    move-object/from16 v18, v0

    .line 717
    .line 718
    check-cast v18, Ljava/util/List;

    .line 719
    .line 720
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    .line 721
    .line 722
    .line 723
    move-result v0

    .line 724
    if-eqz v0, :cond_21

    .line 725
    .line 726
    if-eqz v11, :cond_21

    .line 727
    .line 728
    move-object/from16 v0, p5

    .line 729
    .line 730
    const/16 v16, 0x1

    .line 731
    .line 732
    goto :goto_16

    .line 733
    :cond_21
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 734
    .line 735
    .line 736
    move-result v0

    .line 737
    const/16 v16, 0x1

    .line 738
    .line 739
    add-int/lit8 v0, v0, -0x1

    .line 740
    .line 741
    if-eq v11, v0, :cond_25

    .line 742
    .line 743
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    move-result-object v0

    .line 747
    check-cast v0, Ljava/lang/Long;

    .line 748
    .line 749
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 750
    .line 751
    .line 752
    move-result-wide v19

    .line 753
    add-int/lit8 v0, v11, 0x1

    .line 754
    .line 755
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    check-cast v0, Ljava/lang/Long;

    .line 760
    .line 761
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 762
    .line 763
    .line 764
    move-result-wide v0

    .line 765
    new-instance v17, LS0/c;

    .line 766
    .line 767
    sub-long v21, v0, v19

    .line 768
    .line 769
    invoke-direct/range {v17 .. v22}, LS0/c;-><init>(Ljava/util/List;JJ)V

    .line 770
    .line 771
    .line 772
    move-object/from16 v3, v17

    .line 773
    .line 774
    iget-wide v6, v2, LS0/r;->a:J

    .line 775
    .line 776
    cmp-long v9, v6, p2

    .line 777
    .line 778
    if-eqz v9, :cond_22

    .line 779
    .line 780
    cmp-long v0, v0, v6

    .line 781
    .line 782
    if-ltz v0, :cond_23

    .line 783
    .line 784
    :cond_22
    move-object/from16 v0, p5

    .line 785
    .line 786
    goto :goto_15

    .line 787
    :cond_23
    if-eqz v8, :cond_24

    .line 788
    .line 789
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    .line 791
    .line 792
    :cond_24
    move-object/from16 v0, p5

    .line 793
    .line 794
    goto :goto_16

    .line 795
    :goto_15
    invoke-interface {v0, v3}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 796
    .line 797
    .line 798
    :goto_16
    add-int/lit8 v11, v11, 0x1

    .line 799
    .line 800
    goto :goto_14

    .line 801
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 802
    .line 803
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 804
    .line 805
    .line 806
    throw v0

    .line 807
    :cond_26
    move-object/from16 v0, p5

    .line 808
    .line 809
    if-eqz v8, :cond_27

    .line 810
    .line 811
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 812
    .line 813
    .line 814
    move-result-object v1

    .line 815
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 816
    .line 817
    .line 818
    move-result v2

    .line 819
    if-eqz v2, :cond_27

    .line 820
    .line 821
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v2

    .line 825
    check-cast v2, LS0/c;

    .line 826
    .line 827
    invoke-interface {v0, v2}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 828
    .line 829
    .line 830
    goto :goto_17

    .line 831
    :cond_27
    return-void

    .line 832
    nop

    .line 833
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_e
        :pswitch_a
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public final synthetic parseToLegacySubtitle([BII)LS0/i;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, LS0/o;->a(LS0/s;[BII)LS0/i;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic reset()V
    .locals 0

    .line 1
    invoke-static {p0}, LS0/o;->b(LS0/s;)V

    return-void
.end method
