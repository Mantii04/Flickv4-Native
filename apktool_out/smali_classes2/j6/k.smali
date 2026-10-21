.class public abstract Lj6/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[C

.field public static final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lj6/k;->a:[C

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lj6/k;->b:Ljava/util/HashMap;

    .line 15
    .line 16
    new-instance v0, Lorg/jsoup/nodes/a;

    .line 17
    .line 18
    invoke-direct {v0}, Lorg/jsoup/nodes/a;-><init>()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 2
        0x2cs
        0x3bs
    .end array-data
.end method

.method public static a(Ljava/lang/Appendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V
    .locals 4

    .line 1
    iget-object v0, p1, Lorg/jsoup/nodes/Entities$EscapeMode;->f:[I

    .line 2
    .line 3
    invoke-static {v0, p2}, Ljava/util/Arrays;->binarySearch([II)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v2, p1, Lorg/jsoup/nodes/Entities$EscapeMode;->j:[Ljava/lang/String;

    .line 12
    .line 13
    array-length v3, v2

    .line 14
    add-int/lit8 v3, v3, -0x1

    .line 15
    .line 16
    if-ge v0, v3, :cond_0

    .line 17
    .line 18
    iget-object p1, p1, Lorg/jsoup/nodes/Entities$EscapeMode;->f:[I

    .line 19
    .line 20
    add-int/lit8 v3, v0, 0x1

    .line 21
    .line 22
    aget p1, p1, v3

    .line 23
    .line 24
    if-ne p1, p2, :cond_0

    .line 25
    .line 26
    aget-object p1, v2, v3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    aget-object p1, v2, v0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object p1, v1

    .line 33
    :goto_0
    const/16 v0, 0x3b

    .line 34
    .line 35
    if-eq p1, v1, :cond_2

    .line 36
    .line 37
    const/16 p2, 0x26

    .line 38
    .line 39
    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    const-string p1, "&#x"

    .line 52
    .line 53
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static b(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/a;ZZ)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Lorg/jsoup/nodes/a;->escapeMode()Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p2, Lorg/jsoup/nodes/a;->f:Ljava/lang/ThreadLocal;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/nio/charset/CharsetEncoder;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/nodes/a;->a()Ljava/nio/charset/CharsetEncoder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    iget-object p2, p2, Lorg/jsoup/nodes/a;->j:Lorg/jsoup/nodes/Entities$CoreCharset;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    move v4, v3

    .line 28
    move v5, v4

    .line 29
    :goto_1
    if-ge v4, v2, :cond_14

    .line 30
    .line 31
    invoke-virtual {p1, v4}, Ljava/lang/String;->codePointAt(I)I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    const/4 v7, 0x1

    .line 36
    if-eqz p4, :cond_3

    .line 37
    .line 38
    invoke-static {v6}, Lh6/j;->isWhitespace(I)Z

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-eqz v8, :cond_2

    .line 43
    .line 44
    if-eqz v5, :cond_1

    .line 45
    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :cond_1
    const/16 v5, 0x20

    .line 49
    .line 50
    invoke-interface {p0, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 51
    .line 52
    .line 53
    move v5, v7

    .line 54
    goto/16 :goto_4

    .line 55
    .line 56
    :cond_2
    move v5, v3

    .line 57
    :cond_3
    const/high16 v8, 0x10000

    .line 58
    .line 59
    if-ge v6, v8, :cond_12

    .line 60
    .line 61
    int-to-char v8, v6

    .line 62
    const/16 v9, 0x22

    .line 63
    .line 64
    if-eq v8, v9, :cond_10

    .line 65
    .line 66
    const/16 v9, 0x26

    .line 67
    .line 68
    if-eq v8, v9, :cond_f

    .line 69
    .line 70
    const/16 v9, 0x3c

    .line 71
    .line 72
    if-eq v8, v9, :cond_c

    .line 73
    .line 74
    const/16 v9, 0x3e

    .line 75
    .line 76
    if-eq v8, v9, :cond_a

    .line 77
    .line 78
    const/16 v9, 0xa0

    .line 79
    .line 80
    if-eq v8, v9, :cond_8

    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    if-eqz v9, :cond_4

    .line 87
    .line 88
    if-eq v9, v7, :cond_6

    .line 89
    .line 90
    invoke-virtual {v1, v8}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    const/16 v9, 0x80

    .line 96
    .line 97
    if-ge v8, v9, :cond_5

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_5
    move v7, v3

    .line 101
    :cond_6
    :goto_2
    if-eqz v7, :cond_7

    .line 102
    .line 103
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 104
    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_7
    invoke-static {p0, v0, v6}, Lj6/k;->a(Ljava/lang/Appendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V

    .line 108
    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_8
    sget-object v7, Lorg/jsoup/nodes/Entities$EscapeMode;->m:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 112
    .line 113
    if-eq v0, v7, :cond_9

    .line 114
    .line 115
    const-string v7, "&nbsp;"

    .line 116
    .line 117
    invoke-interface {p0, v7}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 118
    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_9
    const-string v7, "&#xa0;"

    .line 122
    .line 123
    invoke-interface {p0, v7}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 124
    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_a
    if-nez p3, :cond_b

    .line 128
    .line 129
    const-string v7, "&gt;"

    .line 130
    .line 131
    invoke-interface {p0, v7}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_b
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_c
    if-eqz p3, :cond_e

    .line 140
    .line 141
    sget-object v7, Lorg/jsoup/nodes/Entities$EscapeMode;->m:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 142
    .line 143
    if-ne v0, v7, :cond_d

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_d
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_e
    :goto_3
    const-string v7, "&lt;"

    .line 151
    .line 152
    invoke-interface {p0, v7}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 153
    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_f
    const-string v7, "&amp;"

    .line 157
    .line 158
    invoke-interface {p0, v7}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_10
    if-eqz p3, :cond_11

    .line 163
    .line 164
    const-string v7, "&quot;"

    .line 165
    .line 166
    invoke-interface {p0, v7}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_11
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 171
    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_12
    new-instance v7, Ljava/lang/String;

    .line 175
    .line 176
    invoke-static {v6}, Ljava/lang/Character;->toChars(I)[C

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v7}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    .line 184
    .line 185
    .line 186
    move-result v8

    .line 187
    if-eqz v8, :cond_13

    .line 188
    .line 189
    invoke-interface {p0, v7}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_13
    invoke-static {p0, v0, v6}, Lj6/k;->a(Ljava/lang/Appendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V

    .line 194
    .line 195
    .line 196
    :goto_4
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    add-int/2addr v4, v6

    .line 201
    goto/16 :goto_1

    .line 202
    .line 203
    :cond_14
    return-void
.end method

.method public static codepointsForName(Ljava/lang/String;[I)I
    .locals 4

    .line 1
    sget-object v0, Lj6/k;->b:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    aput p0, p1, v2

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    aput p0, p1, v1

    .line 24
    .line 25
    const/4 p0, 0x2

    .line 26
    return p0

    .line 27
    :cond_0
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->p:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 28
    .line 29
    iget-object v3, v0, Lorg/jsoup/nodes/Entities$EscapeMode;->b:[Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v3, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    const/4 v3, -0x1

    .line 36
    if-ltz p0, :cond_1

    .line 37
    .line 38
    iget-object v0, v0, Lorg/jsoup/nodes/Entities$EscapeMode;->e:[I

    .line 39
    .line 40
    aget p0, v0, p0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move p0, v3

    .line 44
    :goto_0
    if-eq p0, v3, :cond_2

    .line 45
    .line 46
    aput p0, p1, v2

    .line 47
    .line 48
    return v1

    .line 49
    :cond_2
    return v2
.end method

.method public static isBaseNamedEntity(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->n:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/jsoup/nodes/Entities$EscapeMode;->b:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-ltz p0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lorg/jsoup/nodes/Entities$EscapeMode;->e:[I

    .line 13
    .line 14
    aget p0, v0, p0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p0, v1

    .line 18
    :goto_0
    if-eq p0, v1, :cond_1

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public static isNamedEntity(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->p:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/jsoup/nodes/Entities$EscapeMode;->b:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-ltz p0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lorg/jsoup/nodes/Entities$EscapeMode;->e:[I

    .line 13
    .line 14
    aget p0, v0, p0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p0, v1

    .line 18
    :goto_0
    if-eq p0, v1, :cond_1

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    return p0
.end method
