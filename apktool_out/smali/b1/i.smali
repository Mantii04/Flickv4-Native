.class public abstract Lb1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/Map;

.field public static final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "^(\\S+)\\s+-->\\s+(\\S+)((?:.|\\f)*+)?$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lb1/i;->a:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "(\\S+?):(\\S+)"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lb1/i;->b:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    const/16 v1, 0xff

    .line 23
    .line 24
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "white"

    .line 33
    .line 34
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-static {v2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-string v4, "lime"

    .line 47
    .line 48
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const-string v4, "cyan"

    .line 60
    .line 61
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const-string v4, "red"

    .line 73
    .line 74
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    const-string v4, "yellow"

    .line 86
    .line 87
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    const-string v4, "magenta"

    .line 99
    .line 100
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    invoke-static {v2, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    const-string v4, "blue"

    .line 112
    .line 113
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    const-string v4, "black"

    .line 125
    .line 126
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sput-object v0, Lb1/i;->c:Ljava/util/Map;

    .line 134
    .line 135
    new-instance v0, Ljava/util/HashMap;

    .line 136
    .line 137
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    const-string v4, "bg_white"

    .line 149
    .line 150
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    invoke-static {v2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    const-string v4, "bg_lime"

    .line 162
    .line 163
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    invoke-static {v2, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    const-string v4, "bg_cyan"

    .line 175
    .line 176
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    const-string v4, "bg_red"

    .line 188
    .line 189
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    const-string v4, "bg_yellow"

    .line 201
    .line 202
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    invoke-static {v1, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    const-string v4, "bg_magenta"

    .line 214
    .line 215
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    invoke-static {v2, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    const-string v3, "bg_blue"

    .line 227
    .line 228
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    const-string v2, "bg_black"

    .line 240
    .line 241
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    sput-object v0, Lb1/i;->d:Ljava/util/Map;

    .line 249
    .line 250
    return-void
.end method

.method public static a(Ljava/lang/String;Lb1/f;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    iget v5, v1, Lb1/f;->b:I

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    iget-object v7, v1, Lb1/f;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const/4 v8, 0x2

    .line 21
    const/4 v9, -0x1

    .line 22
    const/16 v12, 0x21

    .line 23
    .line 24
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v13

    .line 28
    sparse-switch v13, :sswitch_data_0

    .line 29
    .line 30
    .line 31
    :goto_0
    move v7, v9

    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :sswitch_0
    const-string v13, "ruby"

    .line 35
    .line 36
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-nez v7, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v7, 0x7

    .line 44
    goto :goto_1

    .line 45
    :sswitch_1
    const-string v13, "lang"

    .line 46
    .line 47
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-nez v7, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v7, 0x6

    .line 55
    goto :goto_1

    .line 56
    :sswitch_2
    const-string v13, "v"

    .line 57
    .line 58
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-nez v7, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 v7, 0x5

    .line 66
    goto :goto_1

    .line 67
    :sswitch_3
    const-string v13, "u"

    .line 68
    .line 69
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-nez v7, :cond_3

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    const/4 v7, 0x4

    .line 77
    goto :goto_1

    .line 78
    :sswitch_4
    const-string v13, "i"

    .line 79
    .line 80
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-nez v7, :cond_4

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    const/4 v7, 0x3

    .line 88
    goto :goto_1

    .line 89
    :sswitch_5
    const-string v13, "c"

    .line 90
    .line 91
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-nez v7, :cond_5

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    move v7, v8

    .line 99
    goto :goto_1

    .line 100
    :sswitch_6
    const-string v13, "b"

    .line 101
    .line 102
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-nez v7, :cond_6

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_6
    const/4 v7, 0x1

    .line 110
    goto :goto_1

    .line 111
    :sswitch_7
    const-string v13, ""

    .line 112
    .line 113
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-nez v7, :cond_7

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_7
    const/4 v7, 0x0

    .line 121
    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 122
    .line 123
    .line 124
    goto/16 :goto_b

    .line 125
    .line 126
    :pswitch_0
    invoke-static {v3, v0, v1}, Lb1/i;->c(Ljava/util/List;Ljava/lang/String;Lb1/f;)I

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    new-instance v13, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result v14

    .line 136
    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    .line 138
    .line 139
    move-object/from16 v14, p2

    .line 140
    .line 141
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 142
    .line 143
    .line 144
    sget-object v14, Lb1/e;->c:LJ/c;

    .line 145
    .line 146
    invoke-static {v13, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 147
    .line 148
    .line 149
    iget v14, v1, Lb1/f;->b:I

    .line 150
    .line 151
    const/4 v15, 0x0

    .line 152
    const/16 v16, 0x0

    .line 153
    .line 154
    :goto_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 155
    .line 156
    .line 157
    move-result v10

    .line 158
    if-ge v15, v10, :cond_d

    .line 159
    .line 160
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    check-cast v10, Lb1/e;

    .line 165
    .line 166
    iget-object v10, v10, Lb1/e;->a:Lb1/f;

    .line 167
    .line 168
    iget-object v10, v10, Lb1/f;->a:Ljava/lang/String;

    .line 169
    .line 170
    const-string v4, "rt"

    .line 171
    .line 172
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-nez v4, :cond_8

    .line 177
    .line 178
    const/16 v18, 0x1

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_8
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    check-cast v4, Lb1/e;

    .line 186
    .line 187
    iget-object v10, v4, Lb1/e;->a:Lb1/f;

    .line 188
    .line 189
    invoke-static {v3, v0, v10}, Lb1/i;->c(Ljava/util/List;Ljava/lang/String;Lb1/f;)I

    .line 190
    .line 191
    .line 192
    move-result v10

    .line 193
    if-eq v10, v9, :cond_9

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_9
    if-eq v7, v9, :cond_a

    .line 197
    .line 198
    move v10, v7

    .line 199
    goto :goto_3

    .line 200
    :cond_a
    const/4 v10, 0x1

    .line 201
    :goto_3
    iget-object v9, v4, Lb1/e;->a:Lb1/f;

    .line 202
    .line 203
    iget v9, v9, Lb1/f;->b:I

    .line 204
    .line 205
    sub-int v9, v9, v16

    .line 206
    .line 207
    iget v4, v4, Lb1/e;->b:I

    .line 208
    .line 209
    sub-int v4, v4, v16

    .line 210
    .line 211
    invoke-virtual {v2, v9, v4}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    .line 212
    .line 213
    .line 214
    move-result-object v17

    .line 215
    invoke-virtual {v2, v9, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 216
    .line 217
    .line 218
    new-instance v4, Landroidx/media3/common/text/RubySpan;

    .line 219
    .line 220
    const/16 v18, 0x1

    .line 221
    .line 222
    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v11

    .line 226
    invoke-direct {v4, v11, v10}, Landroidx/media3/common/text/RubySpan;-><init>(Ljava/lang/String;I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v4, v14, v9, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 230
    .line 231
    .line 232
    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    add-int v16, v4, v16

    .line 237
    .line 238
    move v14, v9

    .line 239
    :goto_4
    add-int/lit8 v15, v15, 0x1

    .line 240
    .line 241
    const/4 v9, -0x1

    .line 242
    goto :goto_2

    .line 243
    :pswitch_1
    const/16 v18, 0x1

    .line 244
    .line 245
    new-instance v4, Landroidx/media3/common/text/VoiceSpan;

    .line 246
    .line 247
    iget-object v7, v1, Lb1/f;->c:Ljava/lang/String;

    .line 248
    .line 249
    invoke-direct {v4, v7}, Landroidx/media3/common/text/VoiceSpan;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, v4, v5, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 253
    .line 254
    .line 255
    goto :goto_6

    .line 256
    :pswitch_2
    const/16 v18, 0x1

    .line 257
    .line 258
    new-instance v4, Landroid/text/style/UnderlineSpan;

    .line 259
    .line 260
    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2, v4, v5, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 264
    .line 265
    .line 266
    goto :goto_6

    .line 267
    :pswitch_3
    const/16 v18, 0x1

    .line 268
    .line 269
    new-instance v4, Landroid/text/style/StyleSpan;

    .line 270
    .line 271
    invoke-direct {v4, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2, v4, v5, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 275
    .line 276
    .line 277
    goto :goto_6

    .line 278
    :pswitch_4
    const/16 v18, 0x1

    .line 279
    .line 280
    iget-object v4, v1, Lb1/f;->d:Ljava/util/Set;

    .line 281
    .line 282
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    :cond_b
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 287
    .line 288
    .line 289
    move-result v7

    .line 290
    if-eqz v7, :cond_d

    .line 291
    .line 292
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    check-cast v7, Ljava/lang/String;

    .line 297
    .line 298
    sget-object v9, Lb1/i;->c:Ljava/util/Map;

    .line 299
    .line 300
    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v10

    .line 304
    if-eqz v10, :cond_c

    .line 305
    .line 306
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    check-cast v7, Ljava/lang/Integer;

    .line 311
    .line 312
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    .line 317
    .line 318
    invoke-direct {v9, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, v9, v5, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 322
    .line 323
    .line 324
    goto :goto_5

    .line 325
    :cond_c
    sget-object v9, Lb1/i;->d:Ljava/util/Map;

    .line 326
    .line 327
    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v10

    .line 331
    if-eqz v10, :cond_b

    .line 332
    .line 333
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v7

    .line 337
    check-cast v7, Ljava/lang/Integer;

    .line 338
    .line 339
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 340
    .line 341
    .line 342
    move-result v7

    .line 343
    new-instance v9, Landroid/text/style/BackgroundColorSpan;

    .line 344
    .line 345
    invoke-direct {v9, v7}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2, v9, v5, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 349
    .line 350
    .line 351
    goto :goto_5

    .line 352
    :pswitch_5
    const/16 v18, 0x1

    .line 353
    .line 354
    new-instance v4, Landroid/text/style/StyleSpan;

    .line 355
    .line 356
    move/from16 v7, v18

    .line 357
    .line 358
    invoke-direct {v4, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2, v4, v5, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 362
    .line 363
    .line 364
    :cond_d
    :goto_6
    :pswitch_6
    invoke-static {v3, v0, v1}, Lb1/i;->b(Ljava/util/List;Ljava/lang/String;Lb1/f;)Ljava/util/ArrayList;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    const/4 v10, 0x0

    .line 369
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-ge v10, v1, :cond_19

    .line 374
    .line 375
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    check-cast v1, Lb1/g;

    .line 380
    .line 381
    iget-object v1, v1, Lb1/g;->e:Lb1/c;

    .line 382
    .line 383
    if-nez v1, :cond_e

    .line 384
    .line 385
    const/4 v4, -0x1

    .line 386
    const/4 v7, 0x3

    .line 387
    const/4 v11, 0x1

    .line 388
    goto/16 :goto_a

    .line 389
    .line 390
    :cond_e
    invoke-virtual {v1}, Lb1/c;->getStyle()I

    .line 391
    .line 392
    .line 393
    move-result v3

    .line 394
    const/4 v4, -0x1

    .line 395
    if-eq v3, v4, :cond_f

    .line 396
    .line 397
    new-instance v3, Landroid/text/style/StyleSpan;

    .line 398
    .line 399
    invoke-virtual {v1}, Lb1/c;->getStyle()I

    .line 400
    .line 401
    .line 402
    move-result v7

    .line 403
    invoke-direct {v3, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 404
    .line 405
    .line 406
    invoke-static {v2, v3, v5, v6, v12}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 407
    .line 408
    .line 409
    :cond_f
    invoke-virtual {v1}, Lb1/c;->isLinethrough()Z

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    if-eqz v3, :cond_10

    .line 414
    .line 415
    new-instance v3, Landroid/text/style/StrikethroughSpan;

    .line 416
    .line 417
    invoke-direct {v3}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v2, v3, v5, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 421
    .line 422
    .line 423
    :cond_10
    invoke-virtual {v1}, Lb1/c;->isUnderline()Z

    .line 424
    .line 425
    .line 426
    move-result v3

    .line 427
    if-eqz v3, :cond_11

    .line 428
    .line 429
    new-instance v3, Landroid/text/style/UnderlineSpan;

    .line 430
    .line 431
    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v2, v3, v5, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 435
    .line 436
    .line 437
    :cond_11
    invoke-virtual {v1}, Lb1/c;->hasFontColor()Z

    .line 438
    .line 439
    .line 440
    move-result v3

    .line 441
    if-eqz v3, :cond_12

    .line 442
    .line 443
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 444
    .line 445
    invoke-virtual {v1}, Lb1/c;->getFontColor()I

    .line 446
    .line 447
    .line 448
    move-result v7

    .line 449
    invoke-direct {v3, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 450
    .line 451
    .line 452
    invoke-static {v2, v3, v5, v6, v12}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 453
    .line 454
    .line 455
    :cond_12
    invoke-virtual {v1}, Lb1/c;->hasBackgroundColor()Z

    .line 456
    .line 457
    .line 458
    move-result v3

    .line 459
    if-eqz v3, :cond_13

    .line 460
    .line 461
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    .line 462
    .line 463
    invoke-virtual {v1}, Lb1/c;->getBackgroundColor()I

    .line 464
    .line 465
    .line 466
    move-result v7

    .line 467
    invoke-direct {v3, v7}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 468
    .line 469
    .line 470
    invoke-static {v2, v3, v5, v6, v12}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 471
    .line 472
    .line 473
    :cond_13
    invoke-virtual {v1}, Lb1/c;->getFontFamily()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    if-eqz v3, :cond_14

    .line 478
    .line 479
    new-instance v3, Landroid/text/style/TypefaceSpan;

    .line 480
    .line 481
    invoke-virtual {v1}, Lb1/c;->getFontFamily()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v7

    .line 485
    invoke-direct {v3, v7}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    invoke-static {v2, v3, v5, v6, v12}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 489
    .line 490
    .line 491
    :cond_14
    invoke-virtual {v1}, Lb1/c;->getFontSizeUnit()I

    .line 492
    .line 493
    .line 494
    move-result v3

    .line 495
    const/4 v7, 0x1

    .line 496
    if-eq v3, v7, :cond_17

    .line 497
    .line 498
    if-eq v3, v8, :cond_16

    .line 499
    .line 500
    const/4 v7, 0x3

    .line 501
    if-eq v3, v7, :cond_15

    .line 502
    .line 503
    :goto_8
    const/4 v11, 0x1

    .line 504
    goto :goto_9

    .line 505
    :cond_15
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    .line 506
    .line 507
    invoke-virtual {v1}, Lb1/c;->getFontSize()F

    .line 508
    .line 509
    .line 510
    move-result v9

    .line 511
    const/high16 v11, 0x42c80000    # 100.0f

    .line 512
    .line 513
    div-float/2addr v9, v11

    .line 514
    invoke-direct {v3, v9}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 515
    .line 516
    .line 517
    invoke-static {v2, v3, v5, v6, v12}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 518
    .line 519
    .line 520
    goto :goto_8

    .line 521
    :cond_16
    const/4 v7, 0x3

    .line 522
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    .line 523
    .line 524
    invoke-virtual {v1}, Lb1/c;->getFontSize()F

    .line 525
    .line 526
    .line 527
    move-result v9

    .line 528
    invoke-direct {v3, v9}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 529
    .line 530
    .line 531
    invoke-static {v2, v3, v5, v6, v12}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 532
    .line 533
    .line 534
    goto :goto_8

    .line 535
    :cond_17
    const/4 v7, 0x3

    .line 536
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    .line 537
    .line 538
    invoke-virtual {v1}, Lb1/c;->getFontSize()F

    .line 539
    .line 540
    .line 541
    move-result v9

    .line 542
    float-to-int v9, v9

    .line 543
    const/4 v11, 0x1

    .line 544
    invoke-direct {v3, v9, v11}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 545
    .line 546
    .line 547
    invoke-static {v2, v3, v5, v6, v12}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 548
    .line 549
    .line 550
    :goto_9
    invoke-virtual {v1}, Lb1/c;->getCombineUpright()Z

    .line 551
    .line 552
    .line 553
    move-result v1

    .line 554
    if-eqz v1, :cond_18

    .line 555
    .line 556
    new-instance v1, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    .line 557
    .line 558
    invoke-direct {v1}, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;-><init>()V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v2, v1, v5, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 562
    .line 563
    .line 564
    :cond_18
    :goto_a
    add-int/2addr v10, v11

    .line 565
    goto/16 :goto_7

    .line 566
    .line 567
    :cond_19
    :goto_b
    return-void

    .line 568
    nop

    .line 569
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x62 -> :sswitch_6
        0x63 -> :sswitch_5
        0x69 -> :sswitch_4
        0x75 -> :sswitch_3
        0x76 -> :sswitch_2
        0x3291ee -> :sswitch_1
        0x3595da -> :sswitch_0
    .end sparse-switch

    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Ljava/util/List;Ljava/lang/String;Lb1/f;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lb1/c;

    .line 18
    .line 19
    iget-object v3, p2, Lb1/f;->a:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, p2, Lb1/f;->d:Ljava/util/Set;

    .line 22
    .line 23
    iget-object v5, p2, Lb1/f;->c:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v2, p1, v3, v4, v5}, Lb1/c;->getSpecificityScore(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-lez v3, :cond_0

    .line 30
    .line 31
    new-instance v4, Lb1/g;

    .line 32
    .line 33
    invoke-direct {v4, v3, v2}, Lb1/g;-><init>(ILb1/c;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method public static c(Ljava/util/List;Ljava/lang/String;Lb1/f;)I
    .locals 2

    .line 1
    invoke-static {p0, p1, p2}, Lb1/i;->b(Ljava/util/List;Ljava/lang/String;Lb1/f;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    const/4 v0, -0x1

    .line 11
    if-ge p1, p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Lb1/g;

    .line 18
    .line 19
    iget-object p2, p2, Lb1/g;->e:Lb1/c;

    .line 20
    .line 21
    invoke-virtual {p2}, Lb1/c;->getRubyPosition()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eq v1, v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p2}, Lb1/c;->getRubyPosition()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0

    .line 32
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/util/regex/Matcher;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/List;)Lb1/d;
    .locals 3

    .line 1
    new-instance v0, Lb1/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lb1/h;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1}, Lb1/k;->parseTimestampUs(Ljava/lang/String;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    iput-wide v1, v0, Lb1/h;->a:J

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1}, Lb1/k;->parseTimestampUs(Ljava/lang/String;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    iput-wide v1, v0, Lb1/h;->b:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {p1, v0}, Lb1/i;->e(Ljava/lang/String;Lb1/h;)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_1

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-lez v2, :cond_0

    .line 74
    .line 75
    const-string v2, "\n"

    .line 76
    .line 77
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p0, p1, p3}, Lb1/i;->f(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    iput-object p0, v0, Lb1/h;->c:Ljava/lang/CharSequence;

    .line 101
    .line 102
    invoke-virtual {v0}, Lb1/h;->build()Lb1/d;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0

    .line 107
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string p2, "Skipping cue with bad header: "

    .line 110
    .line 111
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    const-string p1, "WebvttCueParser"

    .line 126
    .line 127
    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const/4 p0, 0x0

    .line 131
    return-object p0
.end method

.method public static e(Ljava/lang/String;Lb1/h;)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "start"

    .line 4
    .line 5
    const-string v2, "end"

    .line 6
    .line 7
    const-string v3, "middle"

    .line 8
    .line 9
    const-string v4, "center"

    .line 10
    .line 11
    const/4 v7, 0x3

    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, -0x1

    .line 14
    const/4 v10, 0x2

    .line 15
    const/4 v11, 0x1

    .line 16
    const-string v12, "WebvttCueParser"

    .line 17
    .line 18
    sget-object v13, Lb1/i;->b:Ljava/util/regex/Pattern;

    .line 19
    .line 20
    move-object/from16 v14, p0

    .line 21
    .line 22
    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 23
    .line 24
    .line 25
    move-result-object v13

    .line 26
    :goto_0
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    .line 27
    .line 28
    .line 29
    move-result v14

    .line 30
    if-eqz v14, :cond_14

    .line 31
    .line 32
    invoke-virtual {v13, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v14

    .line 36
    invoke-static {v14}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v14

    .line 40
    check-cast v14, Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v13, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v15

    .line 46
    invoke-static {v15}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v15

    .line 50
    check-cast v15, Ljava/lang/String;

    .line 51
    .line 52
    :try_start_0
    const-string v5, "line"

    .line 53
    .line 54
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_0

    .line 59
    .line 60
    invoke-static {v15, v0}, Lb1/i;->g(Ljava/lang/String;Lb1/h;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const-string v5, "align"

    .line 65
    .line 66
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_7

    .line 71
    .line 72
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    sparse-switch v5, :sswitch_data_0

    .line 80
    .line 81
    .line 82
    :goto_1
    move v5, v9

    .line 83
    goto :goto_2

    .line 84
    :sswitch_0
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-nez v5, :cond_1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    const/4 v5, 0x5

    .line 92
    goto :goto_2

    .line 93
    :sswitch_1
    const-string v5, "right"

    .line 94
    .line 95
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-nez v5, :cond_2

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    const/4 v5, 0x4

    .line 103
    goto :goto_2

    .line 104
    :sswitch_2
    const-string v5, "left"

    .line 105
    .line 106
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-nez v5, :cond_3

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    move v5, v7

    .line 114
    goto :goto_2

    .line 115
    :sswitch_3
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-nez v5, :cond_4

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    move v5, v10

    .line 123
    goto :goto_2

    .line 124
    :sswitch_4
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-nez v5, :cond_5

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_5
    move v5, v11

    .line 132
    goto :goto_2

    .line 133
    :sswitch_5
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-nez v5, :cond_6

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_6
    move v5, v8

    .line 141
    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 142
    .line 143
    .line 144
    :try_start_1
    const-string v5, "Invalid alignment value: "

    .line 145
    .line 146
    invoke-virtual {v5, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-static {v12, v5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :pswitch_0
    move v5, v10

    .line 154
    goto :goto_3

    .line 155
    :pswitch_1
    move v5, v11

    .line 156
    goto :goto_3

    .line 157
    :pswitch_2
    const/4 v5, 0x5

    .line 158
    goto :goto_3

    .line 159
    :pswitch_3
    const/4 v5, 0x4

    .line 160
    goto :goto_3

    .line 161
    :pswitch_4
    move v5, v7

    .line 162
    :goto_3
    iput v5, v0, Lb1/h;->d:I

    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_7
    const-string v5, "position"

    .line 167
    .line 168
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    const/high16 v16, -0x80000000

    .line 173
    .line 174
    if-eqz v5, :cond_f

    .line 175
    .line 176
    const/16 v5, 0x2c

    .line 177
    .line 178
    invoke-virtual {v15, v5}, Ljava/lang/String;->indexOf(I)I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-eq v5, v9, :cond_e

    .line 183
    .line 184
    add-int/lit8 v14, v5, 0x1

    .line 185
    .line 186
    invoke-virtual {v15, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v14

    .line 190
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    .line 192
    .line 193
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    .line 194
    .line 195
    .line 196
    move-result v17

    .line 197
    sparse-switch v17, :sswitch_data_1

    .line 198
    .line 199
    .line 200
    :goto_4
    move v6, v9

    .line 201
    goto :goto_5

    .line 202
    :sswitch_6
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v17

    .line 206
    if-nez v17, :cond_8

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_8
    const/4 v6, 0x5

    .line 210
    goto :goto_5

    .line 211
    :sswitch_7
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v17

    .line 215
    if-nez v17, :cond_9

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_9
    const/4 v6, 0x4

    .line 219
    goto :goto_5

    .line 220
    :sswitch_8
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v17

    .line 224
    if-nez v17, :cond_a

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_a
    move v6, v7

    .line 228
    goto :goto_5

    .line 229
    :sswitch_9
    const-string v6, "line-right"

    .line 230
    .line 231
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    if-nez v6, :cond_b

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_b
    move v6, v10

    .line 239
    goto :goto_5

    .line 240
    :sswitch_a
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    if-nez v6, :cond_c

    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_c
    move v6, v11

    .line 248
    goto :goto_5

    .line 249
    :sswitch_b
    const-string v6, "line-left"

    .line 250
    .line 251
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v6

    .line 255
    if-nez v6, :cond_d

    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_d
    move v6, v8

    .line 259
    :goto_5
    packed-switch v6, :pswitch_data_1

    .line 260
    .line 261
    .line 262
    :try_start_2
    const-string v6, "Invalid anchor value: "

    .line 263
    .line 264
    invoke-virtual {v6, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    invoke-static {v12, v6}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    move/from16 v6, v16

    .line 272
    .line 273
    goto :goto_6

    .line 274
    :pswitch_5
    move v6, v10

    .line 275
    goto :goto_6

    .line 276
    :pswitch_6
    move v6, v11

    .line 277
    goto :goto_6

    .line 278
    :pswitch_7
    move v6, v8

    .line 279
    :goto_6
    iput v6, v0, Lb1/h;->i:I

    .line 280
    .line 281
    invoke-virtual {v15, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v15

    .line 285
    :cond_e
    invoke-static {v15}, Lb1/k;->parsePercentage(Ljava/lang/String;)F

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    iput v5, v0, Lb1/h;->h:F

    .line 290
    .line 291
    goto/16 :goto_0

    .line 292
    .line 293
    :cond_f
    const-string v5, "size"

    .line 294
    .line 295
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v5

    .line 299
    if-eqz v5, :cond_10

    .line 300
    .line 301
    invoke-static {v15}, Lb1/k;->parsePercentage(Ljava/lang/String;)F

    .line 302
    .line 303
    .line 304
    move-result v5

    .line 305
    iput v5, v0, Lb1/h;->j:F

    .line 306
    .line 307
    goto/16 :goto_0

    .line 308
    .line 309
    :cond_10
    const-string v5, "vertical"

    .line 310
    .line 311
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    if-eqz v5, :cond_13

    .line 316
    .line 317
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 318
    .line 319
    .line 320
    const-string v5, "lr"

    .line 321
    .line 322
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v5

    .line 326
    if-nez v5, :cond_12

    .line 327
    .line 328
    const-string v5, "rl"

    .line 329
    .line 330
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    if-nez v5, :cond_11

    .line 335
    .line 336
    :try_start_3
    const-string v5, "Invalid \'vertical\' value: "

    .line 337
    .line 338
    invoke-virtual {v5, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    invoke-static {v12, v5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    move/from16 v5, v16

    .line 346
    .line 347
    goto :goto_7

    .line 348
    :cond_11
    move v5, v11

    .line 349
    goto :goto_7

    .line 350
    :cond_12
    move v5, v10

    .line 351
    :goto_7
    iput v5, v0, Lb1/h;->k:I

    .line 352
    .line 353
    goto/16 :goto_0

    .line 354
    .line 355
    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    const-string v6, "Unknown cue setting "

    .line 361
    .line 362
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    const-string v6, ":"

    .line 369
    .line 370
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    invoke-static {v12, v5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    .line 381
    .line 382
    .line 383
    goto/16 :goto_0

    .line 384
    .line 385
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    const-string v6, "Skipping bad cue setting: "

    .line 388
    .line 389
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v6

    .line 396
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    invoke-static {v12, v5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    goto/16 :goto_0

    .line 407
    .line 408
    :cond_14
    return-void

    .line 409
    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x4009266b -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    :sswitch_data_1
    .sparse-switch
        -0x6dd215c0 -> :sswitch_b
        -0x514d33ab -> :sswitch_a
        -0x4c1a40fd -> :sswitch_9
        -0x4009266b -> :sswitch_8
        0x188db -> :sswitch_7
        0x68ac462 -> :sswitch_6
    .end sparse-switch

    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v4, -0x1

    .line 8
    const/4 v5, 0x2

    .line 9
    const/4 v6, 0x1

    .line 10
    new-instance v7, Landroid/text/SpannableStringBuilder;

    .line 11
    .line 12
    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v8, Ljava/util/ArrayDeque;

    .line 16
    .line 17
    invoke-direct {v8}, Ljava/util/ArrayDeque;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v9, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v10, 0x0

    .line 26
    move v11, v10

    .line 27
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v12

    .line 31
    if-ge v11, v12, :cond_1e

    .line 32
    .line 33
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v12

    .line 37
    const/16 v13, 0x3e

    .line 38
    .line 39
    const/16 v14, 0x3c

    .line 40
    .line 41
    const/16 v15, 0x26

    .line 42
    .line 43
    if-eq v12, v15, :cond_15

    .line 44
    .line 45
    if-eq v12, v14, :cond_0

    .line 46
    .line 47
    invoke-virtual {v7, v12}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 48
    .line 49
    .line 50
    add-int/2addr v11, v6

    .line 51
    move/from16 v16, v6

    .line 52
    .line 53
    goto/16 :goto_f

    .line 54
    .line 55
    :cond_0
    add-int/lit8 v12, v11, 0x1

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v14

    .line 61
    if-lt v12, v14, :cond_2

    .line 62
    .line 63
    :cond_1
    :goto_1
    move/from16 v16, v6

    .line 64
    .line 65
    move v11, v12

    .line 66
    goto/16 :goto_f

    .line 67
    .line 68
    :cond_2
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v14

    .line 72
    const/16 v15, 0x2f

    .line 73
    .line 74
    if-ne v14, v15, :cond_3

    .line 75
    .line 76
    move v14, v6

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    move v14, v10

    .line 79
    :goto_2
    invoke-virtual {v1, v13, v12}, Ljava/lang/String;->indexOf(II)I

    .line 80
    .line 81
    .line 82
    move-result v12

    .line 83
    if-ne v12, v4, :cond_4

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result v12

    .line 89
    goto :goto_3

    .line 90
    :cond_4
    add-int/2addr v12, v6

    .line 91
    :goto_3
    add-int/lit8 v13, v12, -0x2

    .line 92
    .line 93
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-ne v3, v15, :cond_5

    .line 98
    .line 99
    move v3, v6

    .line 100
    goto :goto_4

    .line 101
    :cond_5
    move v3, v10

    .line 102
    :goto_4
    if-eqz v14, :cond_6

    .line 103
    .line 104
    move v15, v5

    .line 105
    goto :goto_5

    .line 106
    :cond_6
    move v15, v6

    .line 107
    :goto_5
    add-int/2addr v11, v15

    .line 108
    if-eqz v3, :cond_7

    .line 109
    .line 110
    goto :goto_6

    .line 111
    :cond_7
    add-int/lit8 v13, v12, -0x1

    .line 112
    .line 113
    :goto_6
    invoke-virtual {v1, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v13

    .line 121
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v13

    .line 125
    if-eqz v13, :cond_8

    .line 126
    .line 127
    goto/16 :goto_9

    .line 128
    .line 129
    :cond_8
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v15

    .line 137
    xor-int/2addr v15, v6

    .line 138
    invoke-static {v15}, LP3/v;->checkArgument(Z)V

    .line 139
    .line 140
    .line 141
    const-string v15, "[ \\.]"

    .line 142
    .line 143
    invoke-static {v13, v15}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    aget-object v13, v13, v10

    .line 148
    .line 149
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    .line 153
    .line 154
    .line 155
    move-result v15

    .line 156
    sparse-switch v15, :sswitch_data_0

    .line 157
    .line 158
    .line 159
    :goto_7
    move v15, v4

    .line 160
    goto/16 :goto_8

    .line 161
    .line 162
    :sswitch_0
    const-string v15, "ruby"

    .line 163
    .line 164
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v15

    .line 168
    if-nez v15, :cond_9

    .line 169
    .line 170
    goto :goto_7

    .line 171
    :cond_9
    const/4 v15, 0x7

    .line 172
    goto :goto_8

    .line 173
    :sswitch_1
    const-string v15, "lang"

    .line 174
    .line 175
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v15

    .line 179
    if-nez v15, :cond_a

    .line 180
    .line 181
    goto :goto_7

    .line 182
    :cond_a
    const/4 v15, 0x6

    .line 183
    goto :goto_8

    .line 184
    :sswitch_2
    const-string v15, "rt"

    .line 185
    .line 186
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v15

    .line 190
    if-nez v15, :cond_b

    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_b
    const/4 v15, 0x5

    .line 194
    goto :goto_8

    .line 195
    :sswitch_3
    const-string v15, "v"

    .line 196
    .line 197
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v15

    .line 201
    if-nez v15, :cond_c

    .line 202
    .line 203
    goto :goto_7

    .line 204
    :cond_c
    const/4 v15, 0x4

    .line 205
    goto :goto_8

    .line 206
    :sswitch_4
    const-string v15, "u"

    .line 207
    .line 208
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v15

    .line 212
    if-nez v15, :cond_d

    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_d
    const/4 v15, 0x3

    .line 216
    goto :goto_8

    .line 217
    :sswitch_5
    const-string v15, "i"

    .line 218
    .line 219
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v15

    .line 223
    if-nez v15, :cond_e

    .line 224
    .line 225
    goto :goto_7

    .line 226
    :cond_e
    move v15, v5

    .line 227
    goto :goto_8

    .line 228
    :sswitch_6
    const-string v15, "c"

    .line 229
    .line 230
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v15

    .line 234
    if-nez v15, :cond_f

    .line 235
    .line 236
    goto :goto_7

    .line 237
    :cond_f
    move v15, v6

    .line 238
    goto :goto_8

    .line 239
    :sswitch_7
    const-string v15, "b"

    .line 240
    .line 241
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v15

    .line 245
    if-nez v15, :cond_10

    .line 246
    .line 247
    goto :goto_7

    .line 248
    :cond_10
    move v15, v10

    .line 249
    :goto_8
    packed-switch v15, :pswitch_data_0

    .line 250
    .line 251
    .line 252
    :goto_9
    move v11, v12

    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :pswitch_0
    if-eqz v14, :cond_14

    .line 256
    .line 257
    :cond_11
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    if-eqz v3, :cond_12

    .line 262
    .line 263
    goto/16 :goto_1

    .line 264
    .line 265
    :cond_12
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    check-cast v3, Lb1/f;

    .line 270
    .line 271
    invoke-static {v0, v3, v9, v7, v2}, Lb1/i;->a(Ljava/lang/String;Lb1/f;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 275
    .line 276
    .line 277
    move-result v11

    .line 278
    if-nez v11, :cond_13

    .line 279
    .line 280
    new-instance v11, Lb1/e;

    .line 281
    .line 282
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 283
    .line 284
    .line 285
    move-result v14

    .line 286
    invoke-direct {v11, v3, v14}, Lb1/e;-><init>(Lb1/f;I)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    goto :goto_a

    .line 293
    :cond_13
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 294
    .line 295
    .line 296
    :goto_a
    iget-object v3, v3, Lb1/f;->a:Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    if-eqz v3, :cond_11

    .line 303
    .line 304
    goto/16 :goto_1

    .line 305
    .line 306
    :cond_14
    if-nez v3, :cond_1

    .line 307
    .line 308
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 309
    .line 310
    .line 311
    move-result v3

    .line 312
    invoke-static {v11, v3}, Lb1/f;->buildStartTag(Ljava/lang/String;I)Lb1/f;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    invoke-virtual {v8, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    goto/16 :goto_1

    .line 320
    .line 321
    :cond_15
    add-int/2addr v11, v6

    .line 322
    const/16 v3, 0x3b

    .line 323
    .line 324
    invoke-virtual {v1, v3, v11}, Ljava/lang/String;->indexOf(II)I

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    const/16 v5, 0x20

    .line 329
    .line 330
    move/from16 v16, v6

    .line 331
    .line 332
    invoke-virtual {v1, v5, v11}, Ljava/lang/String;->indexOf(II)I

    .line 333
    .line 334
    .line 335
    move-result v6

    .line 336
    if-ne v3, v4, :cond_16

    .line 337
    .line 338
    move v3, v6

    .line 339
    goto :goto_b

    .line 340
    :cond_16
    if-ne v6, v4, :cond_17

    .line 341
    .line 342
    goto :goto_b

    .line 343
    :cond_17
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    :goto_b
    if-eq v3, v4, :cond_1d

    .line 348
    .line 349
    invoke-virtual {v1, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v11

    .line 353
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 357
    .line 358
    .line 359
    move-result v12

    .line 360
    sparse-switch v12, :sswitch_data_1

    .line 361
    .line 362
    .line 363
    :goto_c
    move v12, v4

    .line 364
    goto :goto_d

    .line 365
    :sswitch_8
    const-string v12, "nbsp"

    .line 366
    .line 367
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v12

    .line 371
    if-nez v12, :cond_18

    .line 372
    .line 373
    goto :goto_c

    .line 374
    :cond_18
    const/4 v12, 0x3

    .line 375
    goto :goto_d

    .line 376
    :sswitch_9
    const-string v12, "amp"

    .line 377
    .line 378
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v12

    .line 382
    if-nez v12, :cond_19

    .line 383
    .line 384
    goto :goto_c

    .line 385
    :cond_19
    const/4 v12, 0x2

    .line 386
    goto :goto_d

    .line 387
    :sswitch_a
    const-string v12, "lt"

    .line 388
    .line 389
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v12

    .line 393
    if-nez v12, :cond_1a

    .line 394
    .line 395
    goto :goto_c

    .line 396
    :cond_1a
    move/from16 v12, v16

    .line 397
    .line 398
    goto :goto_d

    .line 399
    :sswitch_b
    const-string v12, "gt"

    .line 400
    .line 401
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v12

    .line 405
    if-nez v12, :cond_1b

    .line 406
    .line 407
    goto :goto_c

    .line 408
    :cond_1b
    move v12, v10

    .line 409
    :goto_d
    packed-switch v12, :pswitch_data_1

    .line 410
    .line 411
    .line 412
    new-instance v5, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    const-string v12, "ignoring unsupported entity: \'&"

    .line 415
    .line 416
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    const-string v11, ";\'"

    .line 423
    .line 424
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v5

    .line 431
    const-string v11, "WebvttCueParser"

    .line 432
    .line 433
    invoke-static {v11, v5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    goto :goto_e

    .line 437
    :pswitch_1
    invoke-virtual {v7, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 438
    .line 439
    .line 440
    goto :goto_e

    .line 441
    :pswitch_2
    invoke-virtual {v7, v15}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 442
    .line 443
    .line 444
    goto :goto_e

    .line 445
    :pswitch_3
    invoke-virtual {v7, v14}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 446
    .line 447
    .line 448
    goto :goto_e

    .line 449
    :pswitch_4
    invoke-virtual {v7, v13}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 450
    .line 451
    .line 452
    :goto_e
    if-ne v3, v6, :cond_1c

    .line 453
    .line 454
    const-string v5, " "

    .line 455
    .line 456
    invoke-virtual {v7, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 457
    .line 458
    .line 459
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    .line 460
    .line 461
    move v11, v3

    .line 462
    goto :goto_f

    .line 463
    :cond_1d
    invoke-virtual {v7, v12}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 464
    .line 465
    .line 466
    :goto_f
    move/from16 v6, v16

    .line 467
    .line 468
    const/4 v5, 0x2

    .line 469
    goto/16 :goto_0

    .line 470
    .line 471
    :cond_1e
    :goto_10
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    if-nez v1, :cond_1f

    .line 476
    .line 477
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    check-cast v1, Lb1/f;

    .line 482
    .line 483
    invoke-static {v0, v1, v9, v7, v2}, Lb1/i;->a(Ljava/lang/String;Lb1/f;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 484
    .line 485
    .line 486
    goto :goto_10

    .line 487
    :cond_1f
    invoke-static {}, Lb1/f;->buildWholeCueVirtualTag()Lb1/f;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 492
    .line 493
    invoke-static {v0, v1, v3, v7, v2}, Lb1/i;->a(Ljava/lang/String;Lb1/f;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 494
    .line 495
    .line 496
    invoke-static {v7}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    return-object v0

    .line 501
    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_7
        0x63 -> :sswitch_6
        0x69 -> :sswitch_5
        0x75 -> :sswitch_4
        0x76 -> :sswitch_3
        0xe42 -> :sswitch_2
        0x3291ee -> :sswitch_1
        0x3595da -> :sswitch_0
    .end sparse-switch

    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    :sswitch_data_1
    .sparse-switch
        0xced -> :sswitch_b
        0xd88 -> :sswitch_a
        0x179c4 -> :sswitch_9
        0x337f11 -> :sswitch_8
    .end sparse-switch

    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static g(Ljava/lang/String;Lb1/h;)V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/16 v1, 0x2c

    .line 3
    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, -0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eq v1, v2, :cond_4

    .line 12
    .line 13
    add-int/lit8 v5, v1, 0x1

    .line 14
    .line 15
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    sparse-switch v6, :sswitch_data_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :sswitch_0
    const-string v6, "start"

    .line 31
    .line 32
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-nez v6, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v2, 0x3

    .line 40
    goto :goto_0

    .line 41
    :sswitch_1
    const-string v6, "end"

    .line 42
    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-nez v6, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v2, v0

    .line 51
    goto :goto_0

    .line 52
    :sswitch_2
    const-string v6, "middle"

    .line 53
    .line 54
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-nez v6, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    move v2, v4

    .line 62
    goto :goto_0

    .line 63
    :sswitch_3
    const-string v6, "center"

    .line 64
    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-nez v6, :cond_3

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    move v2, v3

    .line 73
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 74
    .line 75
    .line 76
    const-string v0, "Invalid anchor value: "

    .line 77
    .line 78
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v2, "WebvttCueParser"

    .line 83
    .line 84
    invoke-static {v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/high16 v0, -0x80000000

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :pswitch_0
    move v0, v3

    .line 91
    goto :goto_1

    .line 92
    :pswitch_1
    move v0, v4

    .line 93
    :goto_1
    :pswitch_2
    iput v0, p1, Lb1/h;->g:I

    .line 94
    .line 95
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    :cond_4
    const-string v0, "%"

    .line 100
    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_5

    .line 106
    .line 107
    invoke-static {p0}, Lb1/k;->parsePercentage(Ljava/lang/String;)F

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    iput p0, p1, Lb1/h;->e:F

    .line 112
    .line 113
    iput v3, p1, Lb1/h;->f:I

    .line 114
    .line 115
    return-void

    .line 116
    :cond_5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    int-to-float p0, p0

    .line 121
    iput p0, p1, Lb1/h;->e:F

    .line 122
    .line 123
    iput v4, p1, Lb1/h;->f:I

    .line 124
    .line 125
    return-void

    .line 126
    nop

    .line 127
    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_3
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static newCueForText(Ljava/lang/CharSequence;)Landroidx/media3/common/text/Cue;
    .locals 1

    .line 1
    new-instance v0, Lb1/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lb1/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lb1/h;->c:Ljava/lang/CharSequence;

    .line 7
    .line 8
    invoke-virtual {v0}, Lb1/h;->toCueBuilder()Landroidx/media3/common/text/Cue$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static parseCue(Landroidx/media3/common/util/ParsableByteArray;Ljava/util/List;)Lb1/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            "Ljava/util/List<",
            "Lb1/c;",
            ">;)",
            "Lb1/d;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    sget-object v2, Lb1/i;->a:Ljava/util/regex/Pattern;

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    invoke-static {v1, v3, p0, p1}, Lb1/i;->d(Ljava/lang/String;Ljava/util/regex/Matcher;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/List;)Lb1/d;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0, v2, p0, p1}, Lb1/i;->d(Ljava/lang/String;Ljava/util/regex/Matcher;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/List;)Lb1/d;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_3
    return-object v1
.end method
