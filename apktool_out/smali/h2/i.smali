.class public abstract Lh2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-object v3, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    return-object v4

    .line 13
    :cond_0
    const-string v5, "Date"

    .line 14
    .line 15
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    check-cast v5, Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    invoke-static {v5}, Lh2/i;->parseDateAsEpoch(Ljava/lang/String;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v8

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-wide/16 v8, 0x0

    .line 29
    .line 30
    :goto_0
    const-string v5, "Cache-Control"

    .line 31
    .line 32
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Ljava/lang/String;

    .line 37
    .line 38
    const/4 v10, 0x0

    .line 39
    if-eqz v5, :cond_9

    .line 40
    .line 41
    const-string v11, ","

    .line 42
    .line 43
    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    move-object/from16 v16, v4

    .line 48
    .line 49
    move v11, v10

    .line 50
    const-wide/16 v12, 0x0

    .line 51
    .line 52
    const-wide/16 v14, 0x0

    .line 53
    .line 54
    :goto_1
    array-length v4, v5

    .line 55
    const/16 v17, 0x1

    .line 56
    .line 57
    if-ge v10, v4, :cond_8

    .line 58
    .line 59
    aget-object v4, v5, v10

    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    const-wide/16 v18, 0x0

    .line 66
    .line 67
    const-string v6, "no-cache"

    .line 68
    .line 69
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-nez v6, :cond_7

    .line 74
    .line 75
    const-string v6, "no-store"

    .line 76
    .line 77
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_2

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_2
    const-string v6, "max-age="

    .line 85
    .line 86
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_3

    .line 91
    .line 92
    const/16 v6, 0x8

    .line 93
    .line 94
    :try_start_0
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_2

    .line 103
    :cond_3
    const-string v6, "stale-while-revalidate="

    .line 104
    .line 105
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-eqz v6, :cond_4

    .line 110
    .line 111
    const/16 v6, 0x17

    .line 112
    .line 113
    :try_start_1
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 118
    .line 119
    .line 120
    move-result-wide v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    goto :goto_2

    .line 122
    :cond_4
    const-string v6, "must-revalidate"

    .line 123
    .line 124
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    if-nez v6, :cond_5

    .line 129
    .line 130
    const-string v6, "proxy-revalidate"

    .line 131
    .line 132
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_6

    .line 137
    .line 138
    :cond_5
    move/from16 v11, v17

    .line 139
    .line 140
    :catch_0
    :cond_6
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_7
    :goto_3
    return-object v16

    .line 144
    :cond_8
    const-wide/16 v18, 0x0

    .line 145
    .line 146
    move/from16 v10, v17

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_9
    const-wide/16 v18, 0x0

    .line 150
    .line 151
    move v11, v10

    .line 152
    move-wide/from16 v12, v18

    .line 153
    .line 154
    move-wide v14, v12

    .line 155
    :goto_4
    const-string v4, "Expires"

    .line 156
    .line 157
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    check-cast v4, Ljava/lang/String;

    .line 162
    .line 163
    if-eqz v4, :cond_a

    .line 164
    .line 165
    invoke-static {v4}, Lh2/i;->parseDateAsEpoch(Ljava/lang/String;)J

    .line 166
    .line 167
    .line 168
    move-result-wide v4

    .line 169
    goto :goto_5

    .line 170
    :cond_a
    move-wide/from16 v4, v18

    .line 171
    .line 172
    :goto_5
    const-string v6, "Last-Modified"

    .line 173
    .line 174
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    check-cast v6, Ljava/lang/String;

    .line 179
    .line 180
    if-eqz v6, :cond_b

    .line 181
    .line 182
    invoke-static {v6}, Lh2/i;->parseDateAsEpoch(Ljava/lang/String;)J

    .line 183
    .line 184
    .line 185
    move-result-wide v6

    .line 186
    :goto_6
    move-wide/from16 v16, v1

    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_b
    move-wide/from16 v6, v18

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :goto_7
    const-string v1, "ETag"

    .line 193
    .line 194
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    check-cast v1, Ljava/lang/String;

    .line 199
    .line 200
    if-eqz v10, :cond_d

    .line 201
    .line 202
    const-wide/16 v4, 0x3e8

    .line 203
    .line 204
    mul-long/2addr v12, v4

    .line 205
    add-long v12, v12, v16

    .line 206
    .line 207
    if-eqz v11, :cond_c

    .line 208
    .line 209
    move-wide v14, v12

    .line 210
    goto :goto_8

    .line 211
    :cond_c
    invoke-static {v14, v15}, Ljava/lang/Long;->signum(J)I

    .line 212
    .line 213
    .line 214
    mul-long/2addr v14, v4

    .line 215
    add-long/2addr v14, v12

    .line 216
    :goto_8
    move-wide v4, v12

    .line 217
    goto :goto_a

    .line 218
    :cond_d
    cmp-long v2, v8, v18

    .line 219
    .line 220
    if-lez v2, :cond_e

    .line 221
    .line 222
    cmp-long v2, v4, v8

    .line 223
    .line 224
    if-ltz v2, :cond_e

    .line 225
    .line 226
    sub-long/2addr v4, v8

    .line 227
    add-long v4, v4, v16

    .line 228
    .line 229
    :goto_9
    move-wide v14, v4

    .line 230
    goto :goto_a

    .line 231
    :cond_e
    move-wide/from16 v4, v18

    .line 232
    .line 233
    goto :goto_9

    .line 234
    :goto_a
    new-instance v2, Lcom/android/volley/Cache$Entry;

    .line 235
    .line 236
    invoke-direct {v2}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 237
    .line 238
    .line 239
    iget-object v10, v0, Lcom/android/volley/NetworkResponse;->data:[B

    .line 240
    .line 241
    iput-object v10, v2, Lcom/android/volley/Cache$Entry;->data:[B

    .line 242
    .line 243
    iput-object v1, v2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 244
    .line 245
    iput-wide v4, v2, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 246
    .line 247
    iput-wide v14, v2, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 248
    .line 249
    iput-wide v8, v2, Lcom/android/volley/Cache$Entry;->serverDate:J

    .line 250
    .line 251
    iput-wide v6, v2, Lcom/android/volley/Cache$Entry;->lastModified:J

    .line 252
    .line 253
    iput-object v3, v2, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    .line 254
    .line 255
    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->allHeaders:Ljava/util/List;

    .line 256
    .line 257
    iput-object v0, v2, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    .line 258
    .line 259
    return-object v2
.end method

.method public static parseCharset(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 8
    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lh2/i;->parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 2
    const-string v0, ";"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    move v2, v0

    .line 3
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 4
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 5
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 6
    aget-object v4, v3, v1

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    aget-object p0, v3, v0

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public static parseDateAsEpoch(Ljava/lang/String;)J
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    .line 4
    .line 5
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 6
    .line 7
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 8
    .line 9
    invoke-direct {v3, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "GMT"

    .line 13
    .line 14
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-wide v0

    .line 30
    :catch_0
    move-exception v2

    .line 31
    const-string v3, "0"

    .line 32
    .line 33
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const-string v4, "Unable to parse dateStr: %s, falling back to 0"

    .line 38
    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    const-string v3, "-1"

    .line 42
    .line 43
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 51
    .line 52
    aput-object p0, v1, v0

    .line 53
    .line 54
    invoke-static {v2, v4, v1}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 59
    .line 60
    aput-object p0, v1, v0

    .line 61
    .line 62
    invoke-static {v4, v1}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    const-wide/16 v0, 0x0

    .line 66
    .line 67
    return-wide v0
.end method
