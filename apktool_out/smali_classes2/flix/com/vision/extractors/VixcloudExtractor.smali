.class public Lflix/com/vision/extractors/VixcloudExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService;
    }
.end annotation


# instance fields
.field private preferredLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "eng"

    invoke-direct {p0, v0}, Lflix/com/vision/extractors/VixcloudExtractor;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lflix/com/vision/extractors/VixcloudExtractor;->preferredLanguage:Ljava/lang/String;

    return-void
.end method

.method private removeTrailingCommaFromJsonObjectString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x7d

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_1

    .line 12
    .line 13
    const-string v2, "{"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    add-int/lit8 v1, v1, -0x1

    .line 22
    .line 23
    :goto_0
    if-ltz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    add-int/lit8 v1, v1, -0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    if-ltz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/16 v3, 0x2c

    .line 45
    .line 46
    if-ne v2, v3, :cond_1

    .line 47
    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :cond_1
    return-object p1
.end method

.method private sanitizeJsonKeysAndQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "\'"

    .line 2
    .line 3
    const-string v1, "\""

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "(\\b(?:id|filename|token|expires|asn)\\b)\\s*:"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v0, Ljava/lang/StringBuffer;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v3, "\":"

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1
.end method

.method private substringAfter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return-object p3

    .line 8
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    add-int/2addr p2, v0

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private substringBefore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-gez p2, :cond_0

    .line 6
    .line 7
    return-object p3

    .line 8
    :cond_0
    const/4 p3, 0x0

    .line 9
    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method


# virtual methods
.method public extract(Ljava/lang/String;)Lflix/com/vision/models/Video;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "AUTOSELECT=NO"

    .line 6
    .line 7
    const-string v3, "#"

    .line 8
    .line 9
    const-string v4, "\n"

    .line 10
    .line 11
    const-string v5, "SmartSubtitleLog"

    .line 12
    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v7, "Extracting with preferredLanguage: "

    .line 16
    .line 17
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v7, v1, Lflix/com/vision/extractors/VixcloudExtractor;->preferredLanguage:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    const-string v7, "VixcloudDebug"

    .line 30
    .line 31
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lflix/com/vision/extractors/VixcloudExtractor;->getMainUrl()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-static {v6}, Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService$Builder;->build(Ljava/lang/String;)Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v1}, Lflix/com/vision/extractors/VixcloudExtractor;->getMainUrl()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    const-string v9, ""

    .line 47
    .line 48
    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-interface {v6, v0}, Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService;->getSource(Ljava/lang/String;)Lretrofit2/Call;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-interface {v6}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v6}, Lretrofit2/Response;->isSuccessful()Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-eqz v8, :cond_1e

    .line 64
    .line 65
    invoke-virtual {v6}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    if-eqz v8, :cond_1e

    .line 70
    .line 71
    invoke-virtual {v6}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Lj6/h;

    .line 76
    .line 77
    invoke-virtual {v6}, Lj6/h;->body()Lorg/jsoup/nodes/b;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    const-string v8, "script"

    .line 82
    .line 83
    invoke-virtual {v6, v8}, Lorg/jsoup/nodes/b;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/b;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    if-eqz v6, :cond_0

    .line 88
    .line 89
    invoke-virtual {v6}, Lorg/jsoup/nodes/b;->data()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    goto :goto_0

    .line 94
    :cond_0
    move-object v6, v9

    .line 95
    :goto_0
    const-string v8, "window.video = "

    .line 96
    .line 97
    invoke-direct {v1, v6, v8, v9}, Lflix/com/vision/extractors/VixcloudExtractor;->substringAfter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    const-string v10, ";"

    .line 102
    .line 103
    invoke-direct {v1, v8, v10, v9}, Lflix/com/vision/extractors/VixcloudExtractor;->substringBefore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    const-string v11, "}"

    .line 116
    .line 117
    const-string v12, "{"

    .line 118
    .line 119
    if-nez v10, :cond_2

    .line 120
    .line 121
    invoke-direct {v1, v8}, Lflix/com/vision/extractors/VixcloudExtractor;->sanitizeJsonKeysAndQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    invoke-direct {v1, v8}, Lflix/com/vision/extractors/VixcloudExtractor;->removeTrailingCommaFromJsonObjectString(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    const-string v13, ":"

    .line 134
    .line 135
    if-nez v10, :cond_1

    .line 136
    .line 137
    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result v10

    .line 141
    if-eqz v10, :cond_1

    .line 142
    .line 143
    invoke-virtual {v12, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    :cond_1
    invoke-virtual {v8, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    if-nez v10, :cond_2

    .line 152
    .line 153
    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result v10

    .line 157
    if-eqz v10, :cond_2

    .line 158
    .line 159
    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    :cond_2
    const-string v10, "window.masterPlaylist"

    .line 164
    .line 165
    invoke-direct {v1, v6, v10, v9}, Lflix/com/vision/extractors/VixcloudExtractor;->substringAfter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    const-string v13, "params: {"

    .line 170
    .line 171
    invoke-direct {v1, v10, v13, v9}, Lflix/com/vision/extractors/VixcloudExtractor;->substringAfter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v10

    .line 175
    const-string v13, "},"

    .line 176
    .line 177
    invoke-direct {v1, v10, v13, v9}, Lflix/com/vision/extractors/VixcloudExtractor;->substringBefore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 186
    .line 187
    .line 188
    move-result v13

    .line 189
    const-string v15, ","

    .line 190
    .line 191
    const/16 v16, 0x1

    .line 192
    .line 193
    const/4 v14, 0x0

    .line 194
    if-nez v13, :cond_4

    .line 195
    .line 196
    invoke-direct {v1, v10}, Lflix/com/vision/extractors/VixcloudExtractor;->sanitizeJsonKeysAndQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v10

    .line 200
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    invoke-virtual {v10, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v13

    .line 208
    if-eqz v13, :cond_3

    .line 209
    .line 210
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 211
    .line 212
    .line 213
    move-result v13

    .line 214
    add-int/lit8 v13, v13, -0x1

    .line 215
    .line 216
    invoke-virtual {v10, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v10

    .line 224
    :cond_3
    invoke-static {v12, v10, v11}, LA/i;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    goto :goto_1

    .line 229
    :cond_4
    const-string v10, "{}"

    .line 230
    .line 231
    :goto_1
    const-string v11, "url:"

    .line 232
    .line 233
    invoke-direct {v1, v6, v11, v9}, Lflix/com/vision/extractors/VixcloudExtractor;->substringAfter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    invoke-direct {v1, v6, v15, v9}, Lflix/com/vision/extractors/VixcloudExtractor;->substringBefore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    const-string v9, "b=1"

    .line 242
    .line 243
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 244
    .line 245
    .line 246
    move-result v6

    .line 247
    new-instance v9, Lcom/google/gson/Gson;

    .line 248
    .line 249
    invoke-direct {v9}, Lcom/google/gson/Gson;-><init>()V

    .line 250
    .line 251
    .line 252
    const-class v11, Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService$WindowVideo;

    .line 253
    .line 254
    invoke-virtual {v9, v8, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    check-cast v8, Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService$WindowVideo;

    .line 259
    .line 260
    const-class v11, Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService$WindowParams;

    .line 261
    .line 262
    invoke-virtual {v9, v10, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v9

    .line 266
    check-cast v9, Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService$WindowParams;

    .line 267
    .line 268
    new-instance v10, Ljava/util/HashMap;

    .line 269
    .line 270
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 271
    .line 272
    .line 273
    if-eqz v9, :cond_5

    .line 274
    .line 275
    iget-object v11, v9, Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService$WindowParams;->token:Ljava/lang/String;

    .line 276
    .line 277
    if-eqz v11, :cond_5

    .line 278
    .line 279
    const-string v12, "token"

    .line 280
    .line 281
    invoke-virtual {v10, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    :cond_5
    if-eqz v9, :cond_6

    .line 285
    .line 286
    iget-object v9, v9, Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService$WindowParams;->expires:Ljava/lang/String;

    .line 287
    .line 288
    if-eqz v9, :cond_6

    .line 289
    .line 290
    const-string v11, "expires"

    .line 291
    .line 292
    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    :cond_6
    new-instance v9, Ljava/util/HashMap;

    .line 296
    .line 297
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 298
    .line 299
    .line 300
    const-string v11, "&"

    .line 301
    .line 302
    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    array-length v11, v0

    .line 307
    move v12, v14

    .line 308
    :goto_2
    const/4 v13, 0x2

    .line 309
    if-ge v12, v11, :cond_8

    .line 310
    .line 311
    aget-object v15, v0, v12

    .line 312
    .line 313
    move/from16 v17, v14

    .line 314
    .line 315
    const-string v14, "="

    .line 316
    .line 317
    invoke-virtual {v15, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v14

    .line 321
    array-length v15, v14

    .line 322
    if-ne v15, v13, :cond_7

    .line 323
    .line 324
    aget-object v13, v14, v17

    .line 325
    .line 326
    aget-object v14, v14, v16

    .line 327
    .line 328
    invoke-virtual {v9, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    :cond_7
    add-int/lit8 v12, v12, 0x1

    .line 332
    .line 333
    move/from16 v14, v17

    .line 334
    .line 335
    goto :goto_2

    .line 336
    :cond_8
    move/from16 v17, v14

    .line 337
    .line 338
    const-string v0, "1"

    .line 339
    .line 340
    if-eqz v6, :cond_9

    .line 341
    .line 342
    const-string v6, "b"

    .line 343
    .line 344
    invoke-virtual {v10, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    :cond_9
    const-string v6, "canPlayFHD"

    .line 348
    .line 349
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v6

    .line 353
    if-eqz v6, :cond_a

    .line 354
    .line 355
    const-string v6, "h"

    .line 356
    .line 357
    invoke-virtual {v10, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    const-string v6, "https://vixcloud.co/playlist/"

    .line 363
    .line 364
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    iget v6, v8, Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService$WindowVideo;->id:I

    .line 368
    .line 369
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-static {v0}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    if-eqz v0, :cond_1d

    .line 381
    .line 382
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 387
    .line 388
    .line 389
    move-result-object v6

    .line 390
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 391
    .line 392
    .line 393
    move-result-object v6

    .line 394
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 395
    .line 396
    .line 397
    move-result v8

    .line 398
    if-eqz v8, :cond_b

    .line 399
    .line 400
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v8

    .line 404
    check-cast v8, Ljava/util/Map$Entry;

    .line 405
    .line 406
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v9

    .line 410
    check-cast v9, Ljava/lang/String;

    .line 411
    .line 412
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v8

    .line 416
    check-cast v8, Ljava/lang/String;

    .line 417
    .line 418
    invoke-virtual {v0, v9, v8}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 419
    .line 420
    .line 421
    goto :goto_3

    .line 422
    :cond_b
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v6

    .line 430
    new-instance v8, Ljava/util/HashMap;

    .line 431
    .line 432
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 433
    .line 434
    .line 435
    const-string v0, "Referer"

    .line 436
    .line 437
    invoke-virtual {v1}, Lflix/com/vision/extractors/VixcloudExtractor;->getMainUrl()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v9

    .line 441
    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    const-string v0, "User-Agent"

    .line 445
    .line 446
    const-string v9, "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"

    .line 447
    .line 448
    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    iget-object v0, v1, Lflix/com/vision/extractors/VixcloudExtractor;->preferredLanguage:Ljava/lang/String;

    .line 452
    .line 453
    if-eqz v0, :cond_1c

    .line 454
    .line 455
    :try_start_0
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 456
    .line 457
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 458
    .line 459
    .line 460
    invoke-static {}, Lh5/h;->getInstance()Lh5/h;

    .line 461
    .line 462
    .line 463
    move-result-object v9

    .line 464
    invoke-virtual {v9}, Lh5/h;->getDoh()Lokhttp3/Dns;

    .line 465
    .line 466
    .line 467
    move-result-object v9

    .line 468
    invoke-virtual {v0, v9}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 473
    .line 474
    const-wide/16 v10, 0xf

    .line 475
    .line 476
    invoke-virtual {v0, v10, v11, v9}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    new-instance v9, Lokhttp3/Headers$Builder;

    .line 485
    .line 486
    invoke-direct {v9}, Lokhttp3/Headers$Builder;-><init>()V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 490
    .line 491
    .line 492
    move-result-object v10

    .line 493
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 494
    .line 495
    .line 496
    move-result-object v10

    .line 497
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 498
    .line 499
    .line 500
    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 501
    if-eqz v11, :cond_c

    .line 502
    .line 503
    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v11

    .line 507
    check-cast v11, Ljava/util/Map$Entry;

    .line 508
    .line 509
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v12

    .line 513
    check-cast v12, Ljava/lang/String;

    .line 514
    .line 515
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v11

    .line 519
    check-cast v11, Ljava/lang/String;

    .line 520
    .line 521
    invoke-virtual {v9, v12, v11}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 522
    .line 523
    .line 524
    goto :goto_4

    .line 525
    :catch_0
    move-exception v0

    .line 526
    :goto_5
    move-object/from16 v21, v8

    .line 527
    .line 528
    goto/16 :goto_14

    .line 529
    .line 530
    :cond_c
    :try_start_2
    new-instance v10, Lokhttp3/Request$Builder;

    .line 531
    .line 532
    invoke-direct {v10}, Lokhttp3/Request$Builder;-><init>()V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v10, v6}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 536
    .line 537
    .line 538
    move-result-object v10

    .line 539
    invoke-virtual {v9}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    .line 540
    .line 541
    .line 542
    move-result-object v9

    .line 543
    invoke-virtual {v10, v9}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 544
    .line 545
    .line 546
    move-result-object v9

    .line 547
    invoke-virtual {v9}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 548
    .line 549
    .line 550
    move-result-object v9

    .line 551
    invoke-virtual {v0, v9}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 556
    .line 557
    .line 558
    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 559
    :try_start_3
    invoke-virtual {v9}, Lokhttp3/Response;->isSuccessful()Z

    .line 560
    .line 561
    .line 562
    move-result v0

    .line 563
    if-eqz v0, :cond_1a

    .line 564
    .line 565
    invoke-virtual {v9}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    if-eqz v0, :cond_1a

    .line 570
    .line 571
    invoke-virtual {v9}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    iget-object v10, v1, Lflix/com/vision/extractors/VixcloudExtractor;->preferredLanguage:Ljava/lang/String;

    .line 580
    .line 581
    invoke-virtual {v9}, Lokhttp3/Response;->request()Lokhttp3/Request;

    .line 582
    .line 583
    .line 584
    move-result-object v11

    .line 585
    invoke-virtual {v11}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 586
    .line 587
    .line 588
    move-result-object v11

    .line 589
    new-instance v12, Ljava/lang/StringBuilder;

    .line 590
    .line 591
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 592
    .line 593
    .line 594
    const-string v14, "--- Vixcloud Subtitle Processing START ("

    .line 595
    .line 596
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    const-string v14, ") ---"

    .line 603
    .line 604
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v12

    .line 611
    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    .line 613
    .line 614
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    new-instance v12, Ljava/util/ArrayList;

    .line 619
    .line 620
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 621
    .line 622
    .line 623
    const-string v14, "URI=[\"\']([^\"\']+)[\"\']"

    .line 624
    .line 625
    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 626
    .line 627
    .line 628
    move-result-object v14

    .line 629
    array-length v15, v0

    .line 630
    move/from16 v13, v17

    .line 631
    .line 632
    :goto_6
    if-ge v13, v15, :cond_18

    .line 633
    .line 634
    move-object/from16 v17, v0

    .line 635
    .line 636
    aget-object v0, v17, v13

    .line 637
    .line 638
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 639
    .line 640
    .line 641
    move-result v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 642
    const-string v1, "\""

    .line 643
    .line 644
    if-eqz v18, :cond_11

    .line 645
    .line 646
    :try_start_4
    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 647
    .line 648
    .line 649
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 650
    move-object/from16 v18, v6

    .line 651
    .line 652
    :try_start_5
    new-instance v6, Ljava/lang/StringBuffer;

    .line 653
    .line 654
    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 655
    .line 656
    .line 657
    :goto_7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 658
    .line 659
    .line 660
    move-result v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 661
    if-eqz v19, :cond_10

    .line 662
    .line 663
    move-object/from16 v21, v8

    .line 664
    .line 665
    move/from16 v8, v16

    .line 666
    .line 667
    move-object/from16 v16, v9

    .line 668
    .line 669
    :try_start_6
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v9

    .line 673
    const-string v8, "http"

    .line 674
    .line 675
    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 676
    .line 677
    .line 678
    move-result v8

    .line 679
    if-nez v8, :cond_d

    .line 680
    .line 681
    const-string v8, "data:"

    .line 682
    .line 683
    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 684
    .line 685
    .line 686
    move-result v8

    .line 687
    if-eqz v8, :cond_e

    .line 688
    .line 689
    :cond_d
    move/from16 v20, v13

    .line 690
    .line 691
    goto :goto_a

    .line 692
    :cond_e
    invoke-virtual {v11, v9}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 693
    .line 694
    .line 695
    move-result-object v8

    .line 696
    if-eqz v8, :cond_f

    .line 697
    .line 698
    invoke-virtual {v8}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v9

    .line 702
    goto :goto_9

    .line 703
    :catchall_0
    move-exception v0

    .line 704
    :goto_8
    move-object v1, v0

    .line 705
    goto/16 :goto_12

    .line 706
    .line 707
    :cond_f
    :goto_9
    new-instance v8, Ljava/lang/StringBuilder;

    .line 708
    .line 709
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 710
    .line 711
    .line 712
    move/from16 v20, v13

    .line 713
    .line 714
    const-string v13, "URI=\""

    .line 715
    .line 716
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v8

    .line 729
    invoke-static {v8}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v8

    .line 733
    invoke-virtual {v0, v6, v8}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 734
    .line 735
    .line 736
    goto :goto_b

    .line 737
    :goto_a
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v8

    .line 741
    invoke-static {v8}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v8

    .line 745
    invoke-virtual {v0, v6, v8}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 746
    .line 747
    .line 748
    :goto_b
    move-object/from16 v9, v16

    .line 749
    .line 750
    move/from16 v13, v20

    .line 751
    .line 752
    move-object/from16 v8, v21

    .line 753
    .line 754
    const/16 v16, 0x1

    .line 755
    .line 756
    goto :goto_7

    .line 757
    :cond_10
    move-object/from16 v21, v8

    .line 758
    .line 759
    move-object/from16 v16, v9

    .line 760
    .line 761
    move/from16 v20, v13

    .line 762
    .line 763
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 764
    .line 765
    .line 766
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v0

    .line 770
    goto :goto_d

    .line 771
    :catchall_1
    move-exception v0

    .line 772
    :goto_c
    move-object/from16 v21, v8

    .line 773
    .line 774
    move-object/from16 v16, v9

    .line 775
    .line 776
    goto :goto_8

    .line 777
    :catchall_2
    move-exception v0

    .line 778
    move-object/from16 v18, v6

    .line 779
    .line 780
    goto :goto_c

    .line 781
    :cond_11
    move-object/from16 v18, v6

    .line 782
    .line 783
    move-object/from16 v21, v8

    .line 784
    .line 785
    move-object/from16 v16, v9

    .line 786
    .line 787
    move/from16 v20, v13

    .line 788
    .line 789
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v6

    .line 793
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 794
    .line 795
    .line 796
    move-result v6

    .line 797
    if-nez v6, :cond_12

    .line 798
    .line 799
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 800
    .line 801
    .line 802
    move-result v6

    .line 803
    if-nez v6, :cond_12

    .line 804
    .line 805
    invoke-virtual {v11, v0}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 806
    .line 807
    .line 808
    move-result-object v6

    .line 809
    if-eqz v6, :cond_12

    .line 810
    .line 811
    invoke-virtual {v6}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    :cond_12
    :goto_d
    const-string v6, "#EXT-X-MEDIA:TYPE=AUDIO"

    .line 816
    .line 817
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 818
    .line 819
    .line 820
    move-result v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 821
    const-string v8, "language=\""

    .line 822
    .line 823
    const-string v9, "(?i)DEFAULT=YES"

    .line 824
    .line 825
    const-string v13, "DEFAULT=NO"

    .line 826
    .line 827
    if-eqz v6, :cond_15

    .line 828
    .line 829
    :try_start_7
    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v0

    .line 833
    const-string v6, "(?i)AUTOSELECT=YES"

    .line 834
    .line 835
    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v6

    .line 843
    new-instance v9, Ljava/lang/StringBuilder;

    .line 844
    .line 845
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 846
    .line 847
    .line 848
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v8

    .line 855
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    .line 857
    .line 858
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    .line 860
    .line 861
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v8

    .line 865
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 866
    .line 867
    .line 868
    move-result v6

    .line 869
    if-nez v6, :cond_13

    .line 870
    .line 871
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v6

    .line 875
    new-instance v8, Ljava/lang/StringBuilder;

    .line 876
    .line 877
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 878
    .line 879
    .line 880
    const-string v9, "name=\""

    .line 881
    .line 882
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    .line 884
    .line 885
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v9

    .line 889
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    .line 891
    .line 892
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    .line 894
    .line 895
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object v1

    .line 899
    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 900
    .line 901
    .line 902
    move-result v1

    .line 903
    if-nez v1, :cond_13

    .line 904
    .line 905
    const-string v1, "eng"

    .line 906
    .line 907
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 908
    .line 909
    .line 910
    move-result v1

    .line 911
    if-eqz v1, :cond_14

    .line 912
    .line 913
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 914
    .line 915
    .line 916
    move-result-object v1

    .line 917
    const-string v6, "english"

    .line 918
    .line 919
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 920
    .line 921
    .line 922
    move-result v1

    .line 923
    if-eqz v1, :cond_14

    .line 924
    .line 925
    :cond_13
    const-string v1, "DEFAULT=YES"

    .line 926
    .line 927
    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v0

    .line 931
    const-string v1, "AUTOSELECT=YES"

    .line 932
    .line 933
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object v0

    .line 937
    :cond_14
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    .line 939
    .line 940
    goto :goto_e

    .line 941
    :cond_15
    const-string v6, "#EXT-X-MEDIA:TYPE=SUBTITLES"

    .line 942
    .line 943
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 944
    .line 945
    .line 946
    move-result v6

    .line 947
    if-eqz v6, :cond_17

    .line 948
    .line 949
    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v0

    .line 953
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v6

    .line 957
    new-instance v9, Ljava/lang/StringBuilder;

    .line 958
    .line 959
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 960
    .line 961
    .line 962
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v8

    .line 969
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    .line 971
    .line 972
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    .line 974
    .line 975
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 976
    .line 977
    .line 978
    move-result-object v1

    .line 979
    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 980
    .line 981
    .line 982
    move-result v1

    .line 983
    if-eqz v1, :cond_16

    .line 984
    .line 985
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v1

    .line 989
    const-string v6, "forced"

    .line 990
    .line 991
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 992
    .line 993
    .line 994
    :cond_16
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    .line 996
    .line 997
    goto :goto_e

    .line 998
    :cond_17
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    .line 1000
    .line 1001
    :goto_e
    add-int/lit8 v13, v20, 0x1

    .line 1002
    .line 1003
    move-object/from16 v1, p0

    .line 1004
    .line 1005
    move-object/from16 v9, v16

    .line 1006
    .line 1007
    move-object/from16 v0, v17

    .line 1008
    .line 1009
    move-object/from16 v6, v18

    .line 1010
    .line 1011
    move-object/from16 v8, v21

    .line 1012
    .line 1013
    const/16 v16, 0x1

    .line 1014
    .line 1015
    goto/16 :goto_6

    .line 1016
    .line 1017
    :cond_18
    move-object/from16 v18, v6

    .line 1018
    .line 1019
    move-object/from16 v21, v8

    .line 1020
    .line 1021
    move-object/from16 v16, v9

    .line 1022
    .line 1023
    const-string v0, "--- Vixcloud Subtitle Processing END ---"

    .line 1024
    .line 1025
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    .line 1027
    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1029
    .line 1030
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v1

    .line 1037
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1038
    .line 1039
    .line 1040
    move-result v2

    .line 1041
    if-eqz v2, :cond_19

    .line 1042
    .line 1043
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v2

    .line 1047
    check-cast v2, Ljava/lang/CharSequence;

    .line 1048
    .line 1049
    :goto_f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1050
    .line 1051
    .line 1052
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1053
    .line 1054
    .line 1055
    move-result v2

    .line 1056
    if-eqz v2, :cond_19

    .line 1057
    .line 1058
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1059
    .line 1060
    .line 1061
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v2

    .line 1065
    check-cast v2, Ljava/lang/CharSequence;

    .line 1066
    .line 1067
    goto :goto_f

    .line 1068
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 1073
    .line 1074
    .line 1075
    move-result-object v0

    .line 1076
    const/4 v1, 0x2

    .line 1077
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v0

    .line 1081
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1082
    .line 1083
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1084
    .line 1085
    .line 1086
    const-string v2, "data:application/vnd.apple.mpegurl;base64,"

    .line 1087
    .line 1088
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1098
    goto :goto_10

    .line 1099
    :cond_1a
    move-object/from16 v18, v6

    .line 1100
    .line 1101
    move-object/from16 v21, v8

    .line 1102
    .line 1103
    move-object/from16 v16, v9

    .line 1104
    .line 1105
    move-object/from16 v6, v18

    .line 1106
    .line 1107
    :goto_10
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 1108
    .line 1109
    .line 1110
    :goto_11
    move-object/from16 v19, v6

    .line 1111
    .line 1112
    goto :goto_15

    .line 1113
    :catch_1
    move-exception v0

    .line 1114
    goto :goto_14

    .line 1115
    :goto_12
    if-eqz v16, :cond_1b

    .line 1116
    .line 1117
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1118
    .line 1119
    .line 1120
    goto :goto_13

    .line 1121
    :catchall_3
    move-exception v0

    .line 1122
    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1123
    .line 1124
    .line 1125
    goto :goto_13

    .line 1126
    :catch_2
    move-exception v0

    .line 1127
    move-object/from16 v6, v18

    .line 1128
    .line 1129
    goto :goto_14

    .line 1130
    :cond_1b
    :goto_13
    throw v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 1131
    :catch_3
    move-exception v0

    .line 1132
    move-object/from16 v18, v6

    .line 1133
    .line 1134
    goto/16 :goto_5

    .line 1135
    .line 1136
    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1137
    .line 1138
    const-string v2, "Error in patching: "

    .line 1139
    .line 1140
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1141
    .line 1142
    .line 1143
    invoke-static {v0, v1, v7}, Lb/c;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1144
    .line 1145
    .line 1146
    goto :goto_11

    .line 1147
    :cond_1c
    move-object/from16 v18, v6

    .line 1148
    .line 1149
    move-object/from16 v21, v8

    .line 1150
    .line 1151
    move-object/from16 v19, v18

    .line 1152
    .line 1153
    :goto_15
    new-instance v18, Lflix/com/vision/models/Video;

    .line 1154
    .line 1155
    new-instance v20, Ljava/util/ArrayList;

    .line 1156
    .line 1157
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1158
    .line 1159
    .line 1160
    const/16 v24, 0x0

    .line 1161
    .line 1162
    const-string v22, "application/x-mpegURL"

    .line 1163
    .line 1164
    const/16 v23, 0x0

    .line 1165
    .line 1166
    invoke-direct/range {v18 .. v24}, Lflix/com/vision/models/Video;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ZZ)V

    .line 1167
    .line 1168
    .line 1169
    return-object v18

    .line 1170
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1171
    .line 1172
    const-string v1, "Invalid base URL"

    .line 1173
    .line 1174
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1175
    .line 1176
    .line 1177
    throw v0

    .line 1178
    :cond_1e
    new-instance v0, Ljava/lang/Exception;

    .line 1179
    .line 1180
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1181
    .line 1182
    const-string v2, "Failed to fetch source: "

    .line 1183
    .line 1184
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1185
    .line 1186
    .line 1187
    invoke-virtual {v6}, Lretrofit2/Response;->code()I

    .line 1188
    .line 1189
    .line 1190
    move-result v2

    .line 1191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v1

    .line 1198
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1199
    .line 1200
    .line 1201
    throw v0
.end method

.method public getMainUrl()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "https://vixcloud.co/"

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "vixcloud"

    .line 2
    .line 3
    return-object v0
.end method
