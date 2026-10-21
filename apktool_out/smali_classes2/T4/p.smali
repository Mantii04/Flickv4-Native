.class public abstract LT4/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static parseChannels(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/ChannelTv;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "group-title="

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    sget-object v3, Lcom/comcast/viper/hlsparserj/PlaylistVersion;->TWELVE:Lcom/comcast/viper/hlsparserj/PlaylistVersion;

    .line 11
    .line 12
    invoke-static {v3, p0}, Lcom/comcast/viper/hlsparserj/PlaylistFactory;->parsePlaylist(Lcom/comcast/viper/hlsparserj/PlaylistVersion;Ljava/lang/String;)Lcom/comcast/viper/hlsparserj/AbstractPlaylist;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Lcom/comcast/viper/hlsparserj/IPlaylist;->getTags()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-static {p0}, LT4/p;->parseExtended(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-lez v3, :cond_0

    .line 31
    .line 32
    return-object v2

    .line 33
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_9

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;

    .line 48
    .line 49
    new-instance v4, Lflix/com/vision/models/ChannelTv;

    .line 50
    .line 51
    invoke-direct {v4}, Lflix/com/vision/models/ChannelTv;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->getRawTag()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    const-string v6, ","

    .line 59
    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 64
    :try_start_1
    array-length v6, v5

    .line 65
    const/4 v7, 0x1

    .line 66
    sub-int/2addr v6, v7

    .line 67
    aget-object v6, v5, v6

    .line 68
    .line 69
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 73
    :try_start_2
    array-length v8, v5

    .line 74
    if-le v8, v7, :cond_1

    .line 75
    .line 76
    array-length v8, v5

    .line 77
    add-int/lit8 v8, v8, -0x2

    .line 78
    .line 79
    aget-object v5, v5, v8

    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    goto :goto_1

    .line 86
    :catch_0
    move-exception v5

    .line 87
    goto :goto_4

    .line 88
    :cond_1
    move-object v5, v1

    .line 89
    :goto_1
    const-string v8, "tvg-logo"

    .line 90
    .line 91
    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 95
    const-string v9, "\""

    .line 96
    .line 97
    if-eqz v8, :cond_3

    .line 98
    .line 99
    :try_start_3
    const-string v8, "tvg-logo="

    .line 100
    .line 101
    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    aget-object v8, v8, v7

    .line 106
    .line 107
    const-string v10, " "

    .line 108
    .line 109
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    const/4 v10, 0x0

    .line 114
    aget-object v8, v8, v10

    .line 115
    .line 116
    invoke-virtual {v8, v9, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 124
    goto :goto_2

    .line 125
    :catch_1
    move-exception v8

    .line 126
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    move-object v8, v1

    .line 130
    :goto_2
    if-eqz v8, :cond_2

    .line 131
    .line 132
    iput-object v8, v4, Lflix/com/vision/models/ChannelTv;->logoUrl:Ljava/lang/String;

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_2
    iput-object v1, v4, Lflix/com/vision/models/ChannelTv;->logoUrl:Ljava/lang/String;

    .line 136
    .line 137
    :cond_3
    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    if-eqz v8, :cond_4

    .line 142
    .line 143
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    aget-object v5, v5, v7

    .line 148
    .line 149
    invoke-virtual {v5, v9, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    if-eqz v5, :cond_5

    .line 158
    .line 159
    iput-object v5, v4, Lflix/com/vision/models/ChannelTv;->group_name:Ljava/lang/String;

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_4
    const-string v5, "UNGROUPED"

    .line 163
    .line 164
    iput-object v5, v4, Lflix/com/vision/models/ChannelTv;->group_name:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :catch_2
    move-exception v5

    .line 168
    move-object v6, v1

    .line 169
    :goto_4
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 170
    .line 171
    .line 172
    :cond_5
    :goto_5
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    const-string v7, "label"

    .line 177
    .line 178
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-eqz v5, :cond_6

    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    const-string v7, "[off]"

    .line 191
    .line 192
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    if-eqz v5, :cond_7

    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    iput-object v5, v4, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v3}, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->getURI()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    iput-object v3, v4, Lflix/com/vision/models/ChannelTv;->url:Ljava/lang/String;

    .line 211
    .line 212
    if-eqz v3, :cond_8

    .line 213
    .line 214
    const-string v5, "autoiptv."

    .line 215
    .line 216
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    if-eqz v3, :cond_8

    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :catch_3
    move-exception p0

    .line 225
    goto :goto_6

    .line 226
    :cond_8
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 227
    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :goto_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 232
    .line 233
    .line 234
    :cond_9
    return-object v2
.end method

.method public static parseExtended(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/ChannelTv;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_8

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;

    .line 21
    .line 22
    new-instance v2, Lflix/com/vision/models/ChannelTv;

    .line 23
    .line 24
    invoke-direct {v2}, Lflix/com/vision/models/ChannelTv;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->getURI()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-lez v4, :cond_0

    .line 38
    .line 39
    iput-object v3, v2, Lflix/com/vision/models/ChannelTv;->url:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->getRawTag()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v4, "\" "

    .line 46
    .line 47
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    array-length v4, v1

    .line 52
    const/4 v5, 0x0

    .line 53
    const/4 v6, 0x0

    .line 54
    const-string v7, ""

    .line 55
    .line 56
    move v9, v6

    .line 57
    move-object v8, v7

    .line 58
    move-object v7, v5

    .line 59
    :goto_1
    if-ge v9, v4, :cond_7

    .line 60
    .line 61
    aget-object v10, v1, v9

    .line 62
    .line 63
    const-string v11, "=\""

    .line 64
    .line 65
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    array-length v11, v10

    .line 70
    const/4 v12, 0x1

    .line 71
    if-le v11, v12, :cond_6

    .line 72
    .line 73
    aget-object v11, v10, v6

    .line 74
    .line 75
    aget-object v10, v10, v12

    .line 76
    .line 77
    const-string v12, "\""

    .line 78
    .line 79
    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v13

    .line 83
    if-eqz v13, :cond_1

    .line 84
    .line 85
    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    aget-object v10, v10, v6

    .line 90
    .line 91
    :cond_1
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    const-string v13, "tvg-name"

    .line 96
    .line 97
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    if-eqz v12, :cond_2

    .line 102
    .line 103
    move-object v5, v10

    .line 104
    :cond_2
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v12

    .line 108
    const-string v13, "tvg-logo"

    .line 109
    .line 110
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v12

    .line 114
    if-eqz v12, :cond_3

    .line 115
    .line 116
    move-object v8, v10

    .line 117
    :cond_3
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    const-string v12, "group-title"

    .line 122
    .line 123
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    if-eqz v11, :cond_4

    .line 128
    .line 129
    move-object v7, v10

    .line 130
    :cond_4
    if-eqz v7, :cond_5

    .line 131
    .line 132
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    if-eqz v10, :cond_6

    .line 137
    .line 138
    :cond_5
    const-string v7, "UNGROUPED"

    .line 139
    .line 140
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_7
    if-eqz v5, :cond_0

    .line 144
    .line 145
    iput-object v5, v2, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iput-object v1, v2, Lflix/com/vision/models/ChannelTv;->group_name:Ljava/lang/String;

    .line 152
    .line 153
    iput-object v3, v2, Lflix/com/vision/models/ChannelTv;->url:Ljava/lang/String;

    .line 154
    .line 155
    iput-object v8, v2, Lflix/com/vision/models/ChannelTv;->logoUrl:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_8
    return-object v0
.end method
