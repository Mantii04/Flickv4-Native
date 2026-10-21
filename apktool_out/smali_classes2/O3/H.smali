.class public abstract LO3/H;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/Locale;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "error_initializing_player"

    .line 2
    .line 3
    const-string v1, "An error occurred while initializing the YouTube player."

    .line 4
    .line 5
    const-string v2, "get_youtube_app_title"

    .line 6
    .line 7
    const-string v3, "Get YouTube App"

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lb/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "get_youtube_app_text"

    .line 14
    .line 15
    const-string v2, "This app won\'t run without the YouTube App, which is missing from your device"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v1, "get_youtube_app_action"

    .line 21
    .line 22
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string v1, "enable_youtube_app_title"

    .line 26
    .line 27
    const-string v2, "Enable YouTube App"

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const-string v1, "enable_youtube_app_text"

    .line 33
    .line 34
    const-string v3, "This app won\'t work unless you enable the YouTube App."

    .line 35
    .line 36
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const-string v1, "enable_youtube_app_action"

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    const-string v1, "update_youtube_app_title"

    .line 45
    .line 46
    const-string v2, "Update YouTube App"

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    const-string v1, "update_youtube_app_text"

    .line 52
    .line 53
    const-string v3, "This app won\'t work unless you update the YouTube App."

    .line 54
    .line 55
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    const-string v1, "update_youtube_app_action"

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v0, v1}, LO3/H;->b(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    add-int/2addr v4, v3

    .line 99
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v1, "_"

    .line 106
    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-static {v0, p0}, LO3/H;->b(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-object v0
.end method

.method public static b(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 12

    .line 1
    const-string v0, "af"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "update_youtube_app_action"

    .line 8
    .line 9
    const-string v2, "update_youtube_app_text"

    .line 10
    .line 11
    const-string v3, "update_youtube_app_title"

    .line 12
    .line 13
    const-string v4, "enable_youtube_app_action"

    .line 14
    .line 15
    const-string v5, "enable_youtube_app_text"

    .line 16
    .line 17
    const-string v6, "enable_youtube_app_title"

    .line 18
    .line 19
    const-string v7, "get_youtube_app_action"

    .line 20
    .line 21
    const-string v8, "get_youtube_app_text"

    .line 22
    .line 23
    const-string v9, "get_youtube_app_title"

    .line 24
    .line 25
    const-string v10, "error_initializing_player"

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const-string p1, "Kon nie die YouTube-speler inisialiseer nie."

    .line 30
    .line 31
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string p1, "Kry YouTube-program"

    .line 35
    .line 36
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const-string v0, "Hierdie program sal nie loop sonder die YouTube-program, wat ontbreek van jou toestel, nie"

    .line 40
    .line 41
    invoke-virtual {p0, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    const-string p1, "Aktiveer YouTube-program"

    .line 48
    .line 49
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    const-string v0, "Hierdie program sal nie werk tensy jy die YouTube-program aktiveer nie."

    .line 53
    .line 54
    invoke-virtual {p0, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    const-string p1, "Dateer YouTube-program op"

    .line 61
    .line 62
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    const-string v0, "Hierdie program sal nie werk tensy jy die YouTube-program opdateer nie."

    .line 66
    .line 67
    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_0
    const-string v0, "am"

    .line 75
    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    const-string p1, "\u12e8YouTube \u12a0\u132b\u12cb\u1279\u1295 \u1260\u121b\u1235\u1300\u1218\u122d \u120b\u12ed \u1233\u1208 \u12a0\u1295\u12f5 \u1235\u1205\u1270\u1275 \u1270\u12a8\u1235\u1277\u120d\u1362"

    .line 83
    .line 84
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    const-string p1, "\u12e8YouTube \u1218\u1270\u130d\u1260\u122a\u12eb\u12cd\u1295 \u12eb\u130d\u1299"

    .line 88
    .line 89
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    const-string v0, "\u12ed\u1205 \u1218\u1270\u130d\u1260\u122a\u12eb \u12eb\u1208 YouTube \u1218\u1270\u130d\u1260\u122a\u12eb\u12cd \u12a0\u12ed\u1202\u12f5\u121d\u1363 \u12a5\u1231 \u12f0\u130d\u121e \u1260\u1218\u1223\u122a\u12eb\u12ce \u120b\u12ed \u12e8\u1208\u121d\u1362"

    .line 93
    .line 94
    invoke-virtual {p0, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    const-string p1, "\u12e8YouTube \u1218\u1270\u130d\u1260\u122a\u12eb\u12cd\u1295 \u12eb\u1295\u1241"

    .line 101
    .line 102
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    const-string v0, "\u12e8YouTube \u1218\u1270\u130d\u1260\u122a\u12eb\u12cd\u1295 \u12a5\u1235\u12ab\u120b\u1290\u1241 \u12f5\u1228\u1235 \u12ed\u1205 \u1218\u1270\u130d\u1260\u122a\u12eb \u12a0\u12ed\u1230\u122b\u121d\u1362"

    .line 106
    .line 107
    invoke-virtual {p0, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    const-string p1, "\u12e8YouTube \u1218\u1270\u130d\u1260\u122a\u12eb\u12cd\u1295 \u12eb\u12d8\u121d\u1291"

    .line 114
    .line 115
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    const-string v0, "\u12e8YouTube \u1218\u1270\u130d\u1260\u122a\u12eb\u12cd\u1295 \u12a5\u1235\u12ab\u120b\u12d8\u1218\u1291\u1275 \u12f5\u1228\u1235 \u12ed\u1205 \u1218\u1270\u130d\u1260\u122a\u12eb \u12a0\u12ed\u1230\u122b\u121d\u1362"

    .line 119
    .line 120
    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_1
    const-string v0, "ar"

    .line 128
    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_2

    .line 134
    .line 135
    const-string p1, "\u062d\u062f\u062b \u062e\u0637\u0623 \u0623\u062b\u0646\u0627\u0621 \u062a\u0647\u064a\u0626\u0629 \u0645\u0634\u063a\u0644 YouTube."

    .line 136
    .line 137
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    const-string p1, "\u0627\u0644\u062d\u0635\u0648\u0644 \u0639\u0644\u0649 \u062a\u0637\u0628\u064a\u0642 YouTube"

    .line 141
    .line 142
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    const-string v0, "\u0644\u0646 \u064a\u0639\u0645\u0644 \u0647\u0630\u0627 \u0627\u0644\u062a\u0637\u0628\u064a\u0642 \u0628\u062f\u0648\u0646 \u062a\u0637\u0628\u064a\u0642 YouTube \u0627\u0644\u0630\u064a \u0644\u0627 \u064a\u062a\u0648\u0641\u0631 \u0639\u0644\u0649 \u062c\u0647\u0627\u0632\u0643"

    .line 146
    .line 147
    invoke-virtual {p0, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    const-string p1, "\u062a\u0645\u0643\u064a\u0646 \u062a\u0637\u0628\u064a\u0642 YouTube"

    .line 154
    .line 155
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    const-string v0, "\u0644\u0646 \u064a\u0639\u0645\u0644 \u0647\u0630\u0627 \u0627\u0644\u062a\u0637\u0628\u064a\u0642 \u0645\u0627 \u0644\u0645 \u064a\u062a\u0645 \u062a\u0645\u0643\u064a\u0646 \u062a\u0637\u0628\u064a\u0642 YouTube."

    .line 159
    .line 160
    invoke-virtual {p0, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    const-string p1, "\u062a\u062d\u062f\u064a\u062b \u062a\u0637\u0628\u064a\u0642 YouTube"

    .line 167
    .line 168
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    const-string v0, "\u0644\u0646 \u064a\u0639\u0645\u0644 \u0647\u0630\u0627 \u0627\u0644\u062a\u0637\u0628\u064a\u0642 \u0645\u0627 \u0644\u0645 \u064a\u062a\u0645 \u062a\u062d\u062f\u064a\u062b \u062a\u0637\u0628\u064a\u0642 YouTube."

    .line 172
    .line 173
    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_2
    const-string v0, "be"

    .line 181
    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_3

    .line 187
    .line 188
    const-string p1, "\u041f\u0430\u043c\u044b\u043b\u043a\u0430 \u043f\u0430\u0434\u0447\u0430\u0441 \u0456\u043d\u0456\u0446\u044b\u044f\u043b\u0456\u0437\u0430\u0446\u044b\u0456 \u043f\u0440\u0430\u0439\u0433\u0440\u0430\u0432\u0430\u043b\u044c\u043di\u043a\u0430 YouTube."

    .line 189
    .line 190
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    const-string p1, "\u0421\u043f\u0430\u043c\u043f\u0430\u0432\u0430\u0446\u044c \u043f\u0440\u044b\u043a\u043b\u0430\u0434\u0430\u043d\u043d\u0435 YouTube"

    .line 194
    .line 195
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    const-string v0, "\u0413\u044d\u0442\u0430 \u043f\u0440\u044b\u043a\u043b\u0430\u0434\u0430\u043d\u043d\u0435 \u043d\u0435 \u0431\u0443\u0434\u0437\u0435 \u043f\u0440\u0430\u0446\u0430\u0432\u0430\u0446\u044c \u0431\u0435\u0437 \u043f\u0440\u044b\u043a\u043b\u0430\u0434\u0430\u043d\u043d\u044f YouTube, \u044f\u043a\u043e\u0435 \u0430\u0434\u0441\u0443\u0442\u043d\u0456\u0447\u0430\u0435 \u043d\u0430 \u043f\u0440\u044b\u043b\u0430\u0434\u0437\u0435"

    .line 199
    .line 200
    invoke-virtual {p0, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    const-string p1, "\u0423\u043a\u043b\u044e\u0447\u044b\u0446\u044c \u043f\u0440\u044b\u043a\u043b\u0430\u0434\u0430\u043d\u043d\u0435 YouTube"

    .line 207
    .line 208
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    const-string v0, "\u0413\u044d\u0442\u0430 \u043f\u0440\u044b\u043a\u043b\u0430\u0434\u0430\u043d\u043d\u0435 \u043d\u0435 \u0431\u0443\u0434\u0437\u0435 \u043f\u0440\u0430\u0446\u0430\u0432\u0430\u0446\u044c, \u043f\u0430\u043a\u0443\u043b\u044c \u0432\u044b \u043d\u0435 \u045e\u043a\u043b\u044e\u0447\u044b\u0446\u0435 \u043f\u0440\u044b\u043a\u043b\u0430\u0434\u0430\u043d\u043d\u0435 YouTube."

    .line 212
    .line 213
    invoke-virtual {p0, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    const-string p1, "\u0410\u0431\u043d\u0430\u0432i\u0446\u044c \u043f\u0440\u044b\u043a\u043b\u0430\u0434\u0430\u043d\u043d\u0435 YouTube"

    .line 220
    .line 221
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    const-string v0, "\u0413\u044d\u0442\u0430 \u043f\u0440\u044b\u043a\u043b\u0430\u0434\u0430\u043d\u043d\u0435 \u043d\u0435 \u0431\u0443\u0434\u0437\u0435 \u043f\u0440\u0430\u0446\u0430\u0432\u0430\u0446\u044c, \u043f\u0430\u043a\u0443\u043b\u044c \u0432\u044b \u043d\u0435 \u0430\u0431\u043d\u0430\u0432i\u0446\u0435 \u043f\u0440\u044b\u043a\u043b\u0430\u0434\u0430\u043d\u043d\u0435 YouTube."

    .line 225
    .line 226
    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :cond_3
    const-string v0, "bg"

    .line 234
    .line 235
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_4

    .line 240
    .line 241
    const-string p1, "\u041f\u0440\u0438 \u043f\u043e\u0434\u0433\u043e\u0442\u0432\u044f\u043d\u0435\u0442\u043e \u043d\u0430 \u043f\u043b\u0435\u0439\u044a\u0440\u0430 \u043d\u0430 YouTube \u0437\u0430 \u0440\u0430\u0431\u043e\u0442\u0430 \u0432\u044a\u0437\u043d\u0438\u043a\u043d\u0430 \u0433\u0440\u0435\u0448\u043a\u0430."

    .line 242
    .line 243
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    const-string p1, "\u0418\u0437\u0442\u0435\u0433\u043b. \u043d\u0430 \u043f\u0440\u0438\u043b. YouTube"

    .line 247
    .line 248
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    const-string v0, "\u0422\u043e\u0432\u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u043d\u044f\u043c\u0430 \u0434\u0430 \u0440\u0430\u0431\u043e\u0442\u0438 \u0431\u0435\u0437 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e YouTube, \u043a\u043e\u0435\u0442\u043e \u043b\u0438\u043f\u0441\u0432\u0430 \u043d\u0430 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0432\u0438"

    .line 252
    .line 253
    invoke-virtual {p0, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    const-string p1, "\u0410\u043a\u0442. \u043d\u0430 \u043f\u0440\u0438\u043b. YouTube"

    .line 260
    .line 261
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    const-string v0, "\u0422\u043e\u0432\u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u043d\u044f\u043c\u0430 \u0434\u0430 \u0440\u0430\u0431\u043e\u0442\u0438, \u043e\u0441\u0432\u0435\u043d \u0430\u043a\u043e \u043d\u0435 \u0430\u043a\u0442\u0438\u0432\u0438\u0440\u0430\u0442\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e YouTube."

    .line 265
    .line 266
    invoke-virtual {p0, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    const-string p1, "\u0410\u043a\u0442\u0443\u043b. \u043d\u0430 \u043f\u0440\u0438\u043b. YouTube"

    .line 273
    .line 274
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    const-string v0, "\u0422\u043e\u0432\u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u043d\u044f\u043c\u0430 \u0434\u0430 \u0440\u0430\u0431\u043e\u0442\u0438, \u043e\u0441\u0432\u0435\u043d \u0430\u043a\u043e \u043d\u0435 \u0430\u043a\u0442\u0443\u0430\u043b\u0438\u0437\u0438\u0440\u0430\u0442\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e YouTube."

    .line 278
    .line 279
    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    return-void

    .line 286
    :cond_4
    const-string v0, "ca"

    .line 287
    .line 288
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-eqz v0, :cond_5

    .line 293
    .line 294
    const-string p1, "S\'ha produ\u00eft un error en iniciar el reproductor de YouTube."

    .line 295
    .line 296
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    const-string p1, "Obtenci\u00f3 aplicac. YouTube"

    .line 300
    .line 301
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    const-string p1, "Aquesta aplicaci\u00f3 no funcionar\u00e0 sense l\'aplicaci\u00f3 de YouTube, que encara no \u00e9s al dispositiu."

    .line 305
    .line 306
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    const-string p1, "Obt\u00e9n l\'aplic. de YouTube"

    .line 310
    .line 311
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    const-string p1, "Activaci\u00f3 aplic. YouTube"

    .line 315
    .line 316
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    const-string p1, "Aquesta aplicaci\u00f3 no funcionar\u00e0 fins que no activis l\'aplicaci\u00f3 de YouTube."

    .line 320
    .line 321
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    const-string p1, "Activa aplicaci\u00f3 YouTube"

    .line 325
    .line 326
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    const-string p1, "Actualitz. aplic. YouTube"

    .line 330
    .line 331
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    const-string p1, "Aquesta aplicaci\u00f3 no funcionar\u00e0 fins que no actualitzis l\'aplicaci\u00f3 de YouTube."

    .line 335
    .line 336
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    const-string p1, "Actualitza aplic. YouTube"

    .line 340
    .line 341
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    return-void

    .line 345
    :cond_5
    const-string v0, "cs"

    .line 346
    .line 347
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-eqz v0, :cond_6

    .line 352
    .line 353
    const-string p1, "P\u0159i inicializaci p\u0159ehr\u00e1va\u010de YouTube do\u0161lo k chyb\u011b."

    .line 354
    .line 355
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    const-string p1, "St\u00e1hn\u011bte aplikaci YouTube"

    .line 359
    .line 360
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    const-string p1, "Tuto aplikaci nelze spustit bez aplikace YouTube, kterou v za\u0159\u00edzen\u00ed nem\u00e1te nainstalovanou"

    .line 364
    .line 365
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    const-string p1, "St\u00e1hnout aplikaci YouTube"

    .line 369
    .line 370
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    const-string p1, "Aktivujte aplik. YouTube"

    .line 374
    .line 375
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    const-string p1, "Ke spu\u0161t\u011bn\u00ed t\u00e9to aplikace je t\u0159eba aktivovat aplikaci YouTube."

    .line 379
    .line 380
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    const-string p1, "Zapnout aplikaci YouTube"

    .line 384
    .line 385
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    const-string p1, "Aktualizujte apl. YouTube"

    .line 389
    .line 390
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    const-string p1, "Ke spu\u0161t\u011bn\u00ed t\u00e9to aplikace je t\u0159eba aktualizovat aplikaci YouTube."

    .line 394
    .line 395
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    const-string p1, "Aktualizovat apl. YouTube"

    .line 399
    .line 400
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    return-void

    .line 404
    :cond_6
    const-string v0, "da"

    .line 405
    .line 406
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    if-eqz v0, :cond_7

    .line 411
    .line 412
    const-string p1, "Der opstod en fejl under initialisering af YouTube-afspilleren."

    .line 413
    .line 414
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    const-string p1, "F\u00e5 YouTube-appen"

    .line 418
    .line 419
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    const-string v0, "Denne app kan ikke k\u00f8re uden YouTube-appen, som ikke findes p\u00e5 din enhed"

    .line 423
    .line 424
    invoke-virtual {p0, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    const-string p1, "Aktiv\u00e9r YouTube-appen"

    .line 431
    .line 432
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    const-string v0, "Denne app fungerer ikke, medmindre du aktiverer YouTube-appen."

    .line 436
    .line 437
    invoke-virtual {p0, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    const-string p1, "Opdater YouTube-appen"

    .line 444
    .line 445
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    const-string v0, "Denne app fungerer ikke, hvis du ikke opdaterer YouTube-appen."

    .line 449
    .line 450
    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    return-void

    .line 457
    :cond_7
    const-string v0, "de"

    .line 458
    .line 459
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    if-eqz v0, :cond_8

    .line 464
    .line 465
    const-string p1, "Bei der Initialisierung des YouTube-Players ist ein Fehler aufgetreten."

    .line 466
    .line 467
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    const-string p1, "YouTube App herunterladen"

    .line 471
    .line 472
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    const-string v0, "Diese App kann nur ausgef\u00fchrt werden, wenn die YouTube App bereitgestellt ist. Diese ist auf deinem Ger\u00e4t nicht vorhanden."

    .line 476
    .line 477
    invoke-virtual {p0, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    const-string p1, "YouTube App aktivieren"

    .line 484
    .line 485
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    const-string v0, "Diese App funktioniert nur, wenn die YouTube App aktiviert wird."

    .line 489
    .line 490
    invoke-virtual {p0, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    const-string p1, "YouTube App aktualisieren"

    .line 497
    .line 498
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    const-string v0, "Diese App funktioniert nur, wenn die YouTube App aktualisiert wird."

    .line 502
    .line 503
    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    return-void

    .line 510
    :cond_8
    const-string v0, "el"

    .line 511
    .line 512
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    move-result v0

    .line 516
    if-eqz v0, :cond_9

    .line 517
    .line 518
    const-string p1, "\u03a0\u03b1\u03c1\u03bf\u03c5\u03c3\u03b9\u03ac\u03c3\u03c4\u03b7\u03ba\u03b5 \u03c3\u03c6\u03ac\u03bb\u03bc\u03b1 \u03ba\u03b1\u03c4\u03ac \u03c4\u03b7\u03bd \u03c0\u03c1\u03bf\u03b5\u03c4\u03bf\u03b9\u03bc\u03b1\u03c3\u03af\u03b1 \u03c4\u03bf\u03c5 \u03c0\u03c1\u03bf\u03b3\u03c1\u03ac\u03bc\u03bc\u03b1\u03c4\u03bf\u03c2 \u03b1\u03bd\u03b1\u03c0\u03b1\u03c1\u03b1\u03b3\u03c9\u03b3\u03ae\u03c2 \u03c4\u03bf\u03c5 YouTube."

    .line 519
    .line 520
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    const-string p1, "\u039b\u03ae\u03c8\u03b7 YouTube"

    .line 524
    .line 525
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    const-string v0, "\u0394\u03b5\u03bd \u03b5\u03af\u03bd\u03b1\u03b9 \u03b4\u03c5\u03bd\u03b1\u03c4\u03ae \u03b7 \u03b5\u03ba\u03c4\u03ad\u03bb\u03b5\u03c3\u03b7 \u03b1\u03c5\u03c4\u03ae\u03c2 \u03c4\u03b7\u03c2 \u03b5\u03c6\u03b1\u03c1\u03bc\u03bf\u03b3\u03ae\u03c2 \u03c7\u03c9\u03c1\u03af\u03c2 \u03c4\u03b7\u03bd \u03b5\u03c6\u03b1\u03c1\u03bc\u03bf\u03b3\u03ae YouTube, \u03b7 \u03bf\u03c0\u03bf\u03af\u03b1 \u03b1\u03c0\u03bf\u03c5\u03c3\u03b9\u03ac\u03b6\u03b5\u03b9 \u03b1\u03c0\u03cc \u03c4\u03b7 \u03c3\u03c5\u03c3\u03ba\u03b5\u03c5\u03ae \u03c3\u03b1\u03c2"

    .line 529
    .line 530
    invoke-virtual {p0, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    const-string p1, "\u0395\u03bd\u03b5\u03c1\u03b3\u03bf\u03c0\u03bf\u03af\u03b7\u03c3\u03b7 YouTube"

    .line 537
    .line 538
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    const-string v0, "\u0394\u03b5\u03bd \u03b5\u03af\u03bd\u03b1\u03b9 \u03b4\u03c5\u03bd\u03b1\u03c4\u03ae \u03b7 \u03bb\u03b5\u03b9\u03c4\u03bf\u03c5\u03c1\u03b3\u03af\u03b1 \u03b1\u03c5\u03c4\u03ae\u03c2 \u03c4\u03b7\u03c2 \u03b5\u03c6\u03b1\u03c1\u03bc\u03bf\u03b3\u03ae\u03c2 \u03b5\u03ac\u03bd \u03b4\u03b5\u03bd \u03b5\u03bd\u03b5\u03c1\u03b3\u03bf\u03c0\u03bf\u03b9\u03ae\u03c3\u03b5\u03c4\u03b5 \u03c4\u03b7\u03bd \u03b5\u03c6\u03b1\u03c1\u03bc\u03bf\u03b3\u03ae YouTube."

    .line 542
    .line 543
    invoke-virtual {p0, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    const-string p1, "\u0395\u03bd\u03b7\u03bc\u03ad\u03c1\u03c9\u03c3\u03b7 YouTube"

    .line 550
    .line 551
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    const-string v0, "\u0394\u03b5\u03bd \u03b5\u03af\u03bd\u03b1\u03b9 \u03b4\u03c5\u03bd\u03b1\u03c4\u03ae \u03b7 \u03bb\u03b5\u03b9\u03c4\u03bf\u03c5\u03c1\u03b3\u03af\u03b1 \u03b1\u03c5\u03c4\u03ae\u03c2 \u03c4\u03b7\u03c2 \u03b5\u03c6\u03b1\u03c1\u03bc\u03bf\u03b3\u03ae\u03c2 \u03b5\u03ac\u03bd \u03b4\u03b5\u03bd \u03b5\u03bd\u03b7\u03bc\u03b5\u03c1\u03ce\u03c3\u03b5\u03c4\u03b5 \u03c4\u03b7\u03bd \u03b5\u03c6\u03b1\u03c1\u03bc\u03bf\u03b3\u03ae YouTube."

    .line 555
    .line 556
    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    return-void

    .line 563
    :cond_9
    const-string v0, "en_GB"

    .line 564
    .line 565
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    move-result v0

    .line 569
    if-eqz v0, :cond_a

    .line 570
    .line 571
    const-string p1, "An error occurred while initialising the YouTube player."

    .line 572
    .line 573
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    const-string p1, "Get YouTube App"

    .line 577
    .line 578
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    const-string v0, "This app won\'t run without the YouTube App, which is missing from your device"

    .line 582
    .line 583
    invoke-virtual {p0, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    const-string p1, "Enable YouTube App"

    .line 590
    .line 591
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    const-string v0, "This app won\'t work unless you enable the YouTube App."

    .line 595
    .line 596
    invoke-virtual {p0, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    const-string p1, "Update YouTube App"

    .line 603
    .line 604
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    const-string v0, "This app won\'t work unless you update the YouTube App."

    .line 608
    .line 609
    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    return-void

    .line 616
    :cond_a
    const-string v0, "es_US"

    .line 617
    .line 618
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    move-result v0

    .line 622
    const-string v11, "Actualizar YouTube"

    .line 623
    .line 624
    if-eqz v0, :cond_b

    .line 625
    .line 626
    const-string p1, "Se produjo un error al iniciar el reproductor de YouTube."

    .line 627
    .line 628
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    const-string p1, "Obtener YouTube"

    .line 632
    .line 633
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    const-string v0, "Esta aplicaci\u00f3n no se ejecutar\u00e1 sin la aplicaci\u00f3n YouTube, la cual no se instal\u00f3 en tu dispositivo."

    .line 637
    .line 638
    invoke-virtual {p0, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    const-string p1, "Activar YouTube"

    .line 645
    .line 646
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    const-string v0, "Esta aplicaci\u00f3n no funcionar\u00e1 a menos que actives la aplicaci\u00f3n YouTube."

    .line 650
    .line 651
    invoke-virtual {p0, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    invoke-virtual {p0, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    const-string p1, "Esta aplicaci\u00f3n no funcionar\u00e1 a menos que actualices la aplicaci\u00f3n YouTube."

    .line 661
    .line 662
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    invoke-virtual {p0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    return-void

    .line 669
    :cond_b
    const-string v0, "es"

    .line 670
    .line 671
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    move-result v0

    .line 675
    if-eqz v0, :cond_c

    .line 676
    .line 677
    const-string p1, "Se ha producido un error al iniciar el reproductor de YouTube."

    .line 678
    .line 679
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    const-string p1, "Descarga YouTube"

    .line 683
    .line 684
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    const-string p1, "Esta aplicaci\u00f3n no funcionar\u00e1 sin la aplicaci\u00f3n YouTube, que no est\u00e1 instalada en el dispositivo."

    .line 688
    .line 689
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    const-string p1, "Descargar YouTube"

    .line 693
    .line 694
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    const-string p1, "Habilita la aplicaci\u00f3n YouTube"

    .line 698
    .line 699
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    const-string p1, "Esta aplicaci\u00f3n no funcionar\u00e1 si no habilitas la aplicaci\u00f3n YouTube."

    .line 703
    .line 704
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    const-string p1, "Habilitar YouTube"

    .line 708
    .line 709
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    const-string p1, "Actualiza YouTube"

    .line 713
    .line 714
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    const-string p1, "Esta aplicaci\u00f3n no funcionar\u00e1 si no actualizas la aplicaci\u00f3n YouTube."

    .line 718
    .line 719
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    invoke-virtual {p0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    return-void

    .line 726
    :cond_c
    const-string v0, "et"

    .line 727
    .line 728
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 729
    .line 730
    .line 731
    move-result v0

    .line 732
    if-eqz v0, :cond_d

    .line 733
    .line 734
    const-string p1, "YouTube\'i m\u00e4ngija l\u00e4htestamisel tekkis viga."

    .line 735
    .line 736
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    const-string p1, "YouTube\'i rak. hankimine"

    .line 740
    .line 741
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    const-string p1, "Rakendus ei k\u00e4ivitu ilma YouTube\'i rakenduseta ja teie seadmes see praegu puudub"

    .line 745
    .line 746
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    const-string p1, "Hangi YouTube\'i rakendus"

    .line 750
    .line 751
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    const-string p1, "YouTube\'i rakenduse lubamine"

    .line 755
    .line 756
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    .line 758
    .line 759
    const-string p1, "Rakendus ei toimi, kui te ei luba kasutada YouTube\'i rakendust."

    .line 760
    .line 761
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    const-string p1, "Luba YouTube\'i rakendus"

    .line 765
    .line 766
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    const-string p1, "V\u00e4rskenda YouTube"

    .line 770
    .line 771
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    .line 773
    .line 774
    const-string p1, "Rakendus ei toimi enne, kui olete YouTube\'i rakendust v\u00e4rskendanud."

    .line 775
    .line 776
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    .line 778
    .line 779
    const-string p1, "V\u00e4rsk. YouTube\'i rakend."

    .line 780
    .line 781
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    return-void

    .line 785
    :cond_d
    const-string v0, "fa"

    .line 786
    .line 787
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 788
    .line 789
    .line 790
    move-result v0

    .line 791
    if-eqz v0, :cond_e

    .line 792
    .line 793
    const-string p1, "\u0647\u0646\u06af\u0627\u0645 \u0645\u0642\u062f\u0627\u0631\u062f\u0647\u06cc \u0627\u0648\u0644\u06cc\u0647 \u067e\u062e\u0634\u200c\u06a9\u0646\u0646\u062f\u0647 YouTube\u060c \u062e\u0637\u0627\u06cc\u06cc \u0631\u0648\u06cc \u062f\u0627\u062f."

    .line 794
    .line 795
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    const-string p1, "\u062f\u0631\u06cc\u0627\u0641\u062a \u0628\u0631\u0646\u0627\u0645\u0647 YouTube"

    .line 799
    .line 800
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    .line 802
    .line 803
    const-string v0, "\u0627\u06cc\u0646 \u0628\u0631\u0646\u0627\u0645\u0647 \u0628\u062f\u0648\u0646 \u0628\u0631\u0646\u0627\u0645\u0647 YouTube \u06a9\u0647 \u062f\u0631 \u062f\u0633\u062a\u06af\u0627\u0647 \u0634\u0645\u0627 \u0645\u0648\u062c\u0648\u062f \u0646\u06cc\u0633\u062a\u060c \u0627\u062c\u0631\u0627 \u0646\u0645\u06cc\u200c\u0634\u0648\u062f"

    .line 804
    .line 805
    invoke-virtual {p0, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    .line 807
    .line 808
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    const-string p1, "\u0641\u0639\u0627\u0644 \u06a9\u0631\u062f\u0646 \u0628\u0631\u0646\u0627\u0645\u0647 YouTube"

    .line 812
    .line 813
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    const-string v0, "\u0627\u06cc\u0646 \u0628\u0631\u0646\u0627\u0645\u0647 \u062a\u0646\u0647\u0627 \u062f\u0631 \u0635\u0648\u0631\u062a\u06cc \u06a9\u0627\u0631 \u062e\u0648\u0627\u0647\u062f \u06a9\u0631\u062f \u06a9\u0647 \u0628\u0631\u0646\u0627\u0645\u0647 YouTube \u0631\u0627 \u0641\u0639\u0627\u0644 \u06a9\u0646\u06cc\u062f."

    .line 817
    .line 818
    invoke-virtual {p0, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    const-string p1, "\u0628\u0647\u200c\u0631\u0648\u0632\u0631\u0633\u0627\u0646\u06cc \u0628\u0631\u0646\u0627\u0645\u0647 YouTube"

    .line 825
    .line 826
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    const-string v0, "\u0627\u06cc\u0646 \u0628\u0631\u0646\u0627\u0645\u0647 \u06a9\u0627\u0631 \u0646\u062e\u0648\u0627\u0647\u062f \u06a9\u0631\u062f \u0645\u06af\u0631 \u0627\u06cc\u0646\u06a9\u0647 \u0628\u0631\u0646\u0627\u0645\u0647 YouTube \u0631\u0627 \u0628\u0647 \u0631\u0648\u0632 \u06a9\u0646\u06cc\u062f."

    .line 830
    .line 831
    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    return-void

    .line 838
    :cond_e
    const-string v0, "fi"

    .line 839
    .line 840
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 841
    .line 842
    .line 843
    move-result v0

    .line 844
    if-eqz v0, :cond_f

    .line 845
    .line 846
    const-string p1, "Virhe alustettaessa YouTube-soitinta."

    .line 847
    .line 848
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    const-string p1, "Hanki YouTube-sovellus"

    .line 852
    .line 853
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    .line 855
    .line 856
    const-string v0, "T\u00e4m\u00e4 sovellus ei toimi ilman YouTube-sovellusta, joka puuttuu laitteesta."

    .line 857
    .line 858
    invoke-virtual {p0, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    .line 863
    .line 864
    const-string p1, "Ota YouTube-sov. k\u00e4ytt\u00f6\u00f6n"

    .line 865
    .line 866
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    .line 868
    .line 869
    const-string p1, "T\u00e4m\u00e4 sovellus ei toimi, ellet ota YouTube-sovellusta k\u00e4ytt\u00f6\u00f6n."

    .line 870
    .line 871
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    .line 873
    .line 874
    const-string p1, "Ota YouTube-sov. k\u00e4ytt\u00f6\u00f6n"

    .line 875
    .line 876
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    .line 878
    .line 879
    const-string p1, "P\u00e4ivit\u00e4 YouTube-sovellus"

    .line 880
    .line 881
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    .line 883
    .line 884
    const-string p1, "T\u00e4m\u00e4 sovellus ei toimi, ellet p\u00e4ivit\u00e4 YouTube-sovellusta."

    .line 885
    .line 886
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    .line 888
    .line 889
    const-string p1, "P\u00e4ivit\u00e4 YouTube-sovellus"

    .line 890
    .line 891
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    .line 893
    .line 894
    return-void

    .line 895
    :cond_f
    const-string v0, "fr"

    .line 896
    .line 897
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 898
    .line 899
    .line 900
    move-result v0

    .line 901
    if-eqz v0, :cond_10

    .line 902
    .line 903
    const-string p1, "Une erreur s\'est produite lors de l\'initialisation du lecteur YouTube."

    .line 904
    .line 905
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    .line 907
    .line 908
    const-string p1, "T\u00e9l\u00e9charger appli YouTube"

    .line 909
    .line 910
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    .line 912
    .line 913
    const-string p1, "Cette application ne fonctionnera pas sans l\'application YouTube, qui n\'est pas install\u00e9e sur votre appareil."

    .line 914
    .line 915
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    .line 917
    .line 918
    const-string p1, "T\u00e9l\u00e9charger appli YouTube"

    .line 919
    .line 920
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    .line 922
    .line 923
    const-string p1, "Activer l\'appli YouTube"

    .line 924
    .line 925
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    const-string p1, "Cette application ne fonctionnera que si vous activez l\'application YouTube."

    .line 929
    .line 930
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    .line 932
    .line 933
    const-string p1, "Activer l\'appli YouTube"

    .line 934
    .line 935
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    .line 937
    .line 938
    const-string p1, "Mise \u00e0 jour appli YouTube"

    .line 939
    .line 940
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    const-string p1, "Cette application ne fonctionnera que si vous mettez \u00e0 jour l\'application YouTube."

    .line 944
    .line 945
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    const-string p1, "Mise \u00e0 jour appli YouTube"

    .line 949
    .line 950
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    return-void

    .line 954
    :cond_10
    const-string v0, "hi"

    .line 955
    .line 956
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 957
    .line 958
    .line 959
    move-result v0

    .line 960
    if-eqz v0, :cond_11

    .line 961
    .line 962
    const-string p1, "YouTube \u092a\u094d\u0932\u0947\u092f\u0930 \u0915\u094b \u092a\u094d\u0930\u093e\u0930\u0902\u092d \u0915\u0930\u0924\u0947 \u0938\u092e\u092f \u0915\u094b\u0908 \u0924\u094d\u0930\u0941\u091f\u093f \u0906\u0908."

    .line 963
    .line 964
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    .line 966
    .line 967
    const-string p1, "YouTube \u090f\u092a\u094d\u0932\u093f. \u092a\u094d\u0930\u093e\u092a\u094d\u0924 \u0915\u0930\u0947\u0902"

    .line 968
    .line 969
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    .line 971
    .line 972
    const-string p1, "\u092f\u0939 \u090f\u092a\u094d\u0932\u093f\u0915\u0947\u0936\u0928 YouTube \u090f\u092a\u094d\u0932\u093f\u0915\u0947\u0936\u0928 \u0915\u0947 \u092c\u093f\u0928\u093e \u0928\u0939\u0940\u0902 \u091a\u0932\u0947\u0917\u093e, \u091c\u094b \u0906\u092a\u0915\u0947 \u0909\u092a\u0915\u0930\u0923 \u092a\u0930 \u092e\u094c\u091c\u0942\u0926 \u0928\u0939\u0940\u0902 \u0939\u0948"

    .line 973
    .line 974
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    const-string p1, "YouTube \u090f\u092a\u094d\u0932\u093f. \u092a\u094d\u0930\u093e\u092a\u094d\u0924 \u0915\u0930\u0947\u0902"

    .line 978
    .line 979
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    const-string p1, "YouTube \u090f\u092a\u094d\u0932\u093f. \u0938\u0915\u094d\u0937\u092e \u0915\u0930\u0947\u0902"

    .line 983
    .line 984
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    .line 986
    .line 987
    const-string p1, "\u091c\u092c \u0924\u0915 \u0906\u092a YouTube \u090f\u092a\u094d\u0932\u093f\u0915\u0947\u0936\u0928 \u0938\u0915\u094d\u0937\u092e \u0928\u0939\u0940\u0902 \u0915\u0930\u0924\u0947, \u0924\u092c \u0924\u0915 \u092f\u0939 \u090f\u092a\u094d\u0932\u093f\u0915\u0947\u0936\u0928 \u0915\u093e\u0930\u094d\u092f \u0928\u0939\u0940\u0902 \u0915\u0930\u0947\u0917\u093e."

    .line 988
    .line 989
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    .line 991
    .line 992
    const-string p1, "YouTube \u090f\u092a\u094d\u0932\u093f. \u0938\u0915\u094d\u0937\u092e \u0915\u0930\u0947\u0902"

    .line 993
    .line 994
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    .line 996
    .line 997
    const-string p1, "YouTube \u090f\u092a\u094d\u0932\u093f. \u0905\u092a\u0921\u0947\u091f \u0915\u0930\u0947\u0902"

    .line 998
    .line 999
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    .line 1001
    .line 1002
    const-string p1, "\u091c\u092c \u0924\u0915 \u0906\u092a YouTube \u090f\u092a\u094d\u0932\u093f\u0915\u0947\u0936\u0928 \u0905\u092a\u0921\u0947\u091f \u0928\u0939\u0940\u0902 \u0915\u0930\u0924\u0947, \u0924\u092c \u0924\u0915 \u092f\u0939 \u090f\u092a\u094d\u0932\u093f\u0915\u0947\u0936\u0928 \u0915\u093e\u0930\u094d\u092f \u0928\u0939\u0940\u0902 \u0915\u0930\u0947\u0917\u093e."

    .line 1003
    .line 1004
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    .line 1006
    .line 1007
    const-string p1, "YouTube \u090f\u092a\u094d\u0932\u093f. \u0905\u092a\u0921\u0947\u091f \u0915\u0930\u0947\u0902"

    .line 1008
    .line 1009
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    .line 1011
    .line 1012
    return-void

    .line 1013
    :cond_11
    const-string v0, "hr"

    .line 1014
    .line 1015
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1016
    .line 1017
    .line 1018
    move-result v0

    .line 1019
    if-eqz v0, :cond_12

    .line 1020
    .line 1021
    const-string p1, "Dogodila se pogre\u0161ka tijekom pokretanja playera usluge YouTube."

    .line 1022
    .line 1023
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    .line 1025
    .line 1026
    const-string p1, "Preuzimanje apl. YouTube"

    .line 1027
    .line 1028
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    .line 1030
    .line 1031
    const-string p1, "Ova se aplikacija ne mo\u017ee pokrenuti bez aplikacije YouTube, koja nije instalirana na va\u0161 ure\u0111aj"

    .line 1032
    .line 1033
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    .line 1035
    .line 1036
    const-string p1, "Preuzmi apl. YouTube"

    .line 1037
    .line 1038
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    .line 1040
    .line 1041
    const-string p1, "Omogu\u0107avanje apl. YouTube"

    .line 1042
    .line 1043
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    .line 1045
    .line 1046
    const-string p1, "Ova aplikacija ne\u0107e funkcionirati ako ne omogu\u0107ite aplikaciju YouTube."

    .line 1047
    .line 1048
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    .line 1050
    .line 1051
    const-string p1, "Omogu\u0107i apl. YouTube"

    .line 1052
    .line 1053
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    .line 1055
    .line 1056
    const-string p1, "A\u017euriranje apl. YouTube"

    .line 1057
    .line 1058
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    .line 1060
    .line 1061
    const-string p1, "Ova aplikacija ne\u0107e funkcionirati ako ne a\u017eurirate aplikaciju YouTube."

    .line 1062
    .line 1063
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    .line 1065
    .line 1066
    const-string p1, "A\u017euriraj apl. YouTube"

    .line 1067
    .line 1068
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    .line 1070
    .line 1071
    return-void

    .line 1072
    :cond_12
    const-string v0, "hu"

    .line 1073
    .line 1074
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1075
    .line 1076
    .line 1077
    move-result v0

    .line 1078
    if-eqz v0, :cond_13

    .line 1079
    .line 1080
    const-string p1, "Hiba t\u00f6rt\u00e9nt a YouTube lej\u00e1tsz\u00f3 inicializ\u00e1l\u00e1sa sor\u00e1n."

    .line 1081
    .line 1082
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    .line 1084
    .line 1085
    const-string p1, "YouTube alk. let\u00f6lt\u00e9se"

    .line 1086
    .line 1087
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    .line 1089
    .line 1090
    const-string p1, "Ez az alkalmaz\u00e1s nem fut a YouTube alkalmaz\u00e1s n\u00e9lk\u00fcl, amely hi\u00e1nyzik az eszk\u00f6z\u00e9r\u0151l."

    .line 1091
    .line 1092
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    .line 1094
    .line 1095
    const-string p1, "YouTube alk. let\u00f6lt\u00e9se"

    .line 1096
    .line 1097
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    .line 1099
    .line 1100
    const-string p1, "YouTube alkalmaz\u00e1s enged."

    .line 1101
    .line 1102
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    .line 1104
    .line 1105
    const-string p1, "Az alkalmaz\u00e1s csak akkor fog m\u0171k\u00f6dni, ha enged\u00e9lyezi a YouTube alkalmaz\u00e1st."

    .line 1106
    .line 1107
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    .line 1109
    .line 1110
    const-string p1, "YouTube alkalmaz\u00e1s enged."

    .line 1111
    .line 1112
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    .line 1114
    .line 1115
    const-string p1, "YouTube alk. friss\u00edt\u00e9se"

    .line 1116
    .line 1117
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    .line 1119
    .line 1120
    const-string p1, "Az alkalmaz\u00e1s csak akkor fog m\u0171k\u00f6dni, ha friss\u00edti a YouTube alkalmaz\u00e1st."

    .line 1121
    .line 1122
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    .line 1124
    .line 1125
    const-string p1, "YouTube alk. friss\u00edt\u00e9se"

    .line 1126
    .line 1127
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    .line 1129
    .line 1130
    return-void

    .line 1131
    :cond_13
    const-string v0, "in"

    .line 1132
    .line 1133
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1134
    .line 1135
    .line 1136
    move-result v0

    .line 1137
    if-eqz v0, :cond_14

    .line 1138
    .line 1139
    const-string p1, "Terjadi kesalahan saat memulai pemutar YouTube."

    .line 1140
    .line 1141
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    .line 1143
    .line 1144
    const-string p1, "Dapatkan Aplikasi YouTube"

    .line 1145
    .line 1146
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    .line 1148
    .line 1149
    const-string p1, "Aplikasi ini tidak akan berjalan tanpa Aplikasi YouTube, yang hilang dari perangkat Anda"

    .line 1150
    .line 1151
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    .line 1153
    .line 1154
    const-string p1, "Dapatkan Aplikasi YouTube"

    .line 1155
    .line 1156
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    .line 1158
    .line 1159
    const-string p1, "Aktifkan Aplikasi YouTube"

    .line 1160
    .line 1161
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    .line 1163
    .line 1164
    const-string p1, "Aplikasi ini tidak akan bekerja kecuali Anda mengaktifkan Aplikasi YouTube."

    .line 1165
    .line 1166
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    .line 1168
    .line 1169
    const-string p1, "Aktifkan Aplikasi YouTube"

    .line 1170
    .line 1171
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    .line 1173
    .line 1174
    const-string p1, "Perbarui Aplikasi YouTube"

    .line 1175
    .line 1176
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    .line 1178
    .line 1179
    const-string p1, "Aplikasi ini tidak akan bekerja kecuali Anda memperbarui Aplikasi YouTube."

    .line 1180
    .line 1181
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    .line 1183
    .line 1184
    const-string p1, "Perbarui Aplikasi YouTube"

    .line 1185
    .line 1186
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    .line 1188
    .line 1189
    return-void

    .line 1190
    :cond_14
    const-string v0, "it"

    .line 1191
    .line 1192
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1193
    .line 1194
    .line 1195
    move-result v0

    .line 1196
    if-eqz v0, :cond_15

    .line 1197
    .line 1198
    const-string p1, "Si \u00e8 verificato un errore durante l\'inizializzazione del player di YouTube."

    .line 1199
    .line 1200
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    .line 1202
    .line 1203
    const-string p1, "Scarica app YouTube"

    .line 1204
    .line 1205
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    .line 1207
    .line 1208
    const-string p1, "Questa applicazione non funzioner\u00e0 senza l\'applicazione YouTube che non \u00e8 presente sul tuo dispositivo"

    .line 1209
    .line 1210
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    .line 1212
    .line 1213
    const-string p1, "Scarica app YouTube"

    .line 1214
    .line 1215
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    .line 1217
    .line 1218
    const-string p1, "Attiva app YouTube"

    .line 1219
    .line 1220
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    .line 1222
    .line 1223
    const-string p1, "Questa applicazione non funzioner\u00e0 se non attivi l\'applicazione YouTube."

    .line 1224
    .line 1225
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    .line 1227
    .line 1228
    const-string p1, "Attiva app YouTube"

    .line 1229
    .line 1230
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    .line 1232
    .line 1233
    const-string p1, "Aggiorna app YouTube"

    .line 1234
    .line 1235
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    .line 1237
    .line 1238
    const-string p1, "Questa applicazione non funzioner\u00e0 se non aggiorni l\'applicazione YouTube."

    .line 1239
    .line 1240
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    .line 1242
    .line 1243
    const-string p1, "Aggiorna app YouTube"

    .line 1244
    .line 1245
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    .line 1247
    .line 1248
    return-void

    .line 1249
    :cond_15
    const-string v0, "iw"

    .line 1250
    .line 1251
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1252
    .line 1253
    .line 1254
    move-result v0

    .line 1255
    if-eqz v0, :cond_16

    .line 1256
    .line 1257
    const-string p1, "\u05d0\u05d9\u05e8\u05e2\u05d4 \u05e9\u05d2\u05d9\u05d0\u05d4 \u05d1\u05e2\u05ea \u05d0\u05ea\u05d7\u05d5\u05dc \u05e0\u05d2\u05df YouTube."

    .line 1258
    .line 1259
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    .line 1261
    .line 1262
    const-string p1, "\u05e7\u05d1\u05dc \u05d0\u05ea \u05d9\u05d9\u05e9\u05d5\u05dd YouTube"

    .line 1263
    .line 1264
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    .line 1266
    .line 1267
    const-string p1, "\u05d9\u05d9\u05e9\u05d5\u05dd \u05d6\u05d4 \u05dc\u05d0 \u05d9\u05e4\u05e2\u05dc \u05dc\u05dc\u05d0 \u05d9\u05d9\u05e9\u05d5\u05dd YouTube, \u05e9\u05d0\u05d9\u05e0\u05d5 \u05de\u05d5\u05ea\u05e7\u05df \u05d1\u05de\u05db\u05e9\u05d9\u05e8 \u05e9\u05dc\u05da"

    .line 1268
    .line 1269
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    .line 1271
    .line 1272
    const-string p1, "\u05e7\u05d1\u05dc \u05d0\u05ea \u05d9\u05d9\u05e9\u05d5\u05dd YouTube"

    .line 1273
    .line 1274
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    .line 1276
    .line 1277
    const-string p1, "\u05d4\u05e4\u05e2\u05dc \u05d0\u05ea \u05d9\u05d9\u05e9\u05d5\u05dd YouTube"

    .line 1278
    .line 1279
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    .line 1281
    .line 1282
    const-string p1, "\u05d9\u05d9\u05e9\u05d5\u05dd \u05d6\u05d4 \u05dc\u05d0 \u05d9\u05e2\u05d1\u05d5\u05d3 \u05d0\u05dc\u05d0 \u05d0\u05dd \u05ea\u05e4\u05e2\u05d9\u05dc \u05d0\u05ea \u05d9\u05d9\u05e9\u05d5\u05dd YouTube."

    .line 1283
    .line 1284
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    .line 1286
    .line 1287
    const-string p1, "\u05d4\u05e4\u05e2\u05dc \u05d0\u05ea \u05d9\u05d9\u05e9\u05d5\u05dd YouTube"

    .line 1288
    .line 1289
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    .line 1291
    .line 1292
    const-string p1, "\u05e2\u05d3\u05db\u05df \u05d0\u05ea \u05d9\u05d9\u05e9\u05d5\u05dd YouTube"

    .line 1293
    .line 1294
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    .line 1296
    .line 1297
    const-string p1, "\u05d9\u05d9\u05e9\u05d5\u05dd \u05d6\u05d4 \u05dc\u05d0 \u05d9\u05e2\u05d1\u05d5\u05d3 \u05d0\u05dc\u05d0 \u05d0\u05dd \u05ea\u05e2\u05d3\u05db\u05df \u05d0\u05ea \u05d9\u05d9\u05e9\u05d5\u05dd YouTube."

    .line 1298
    .line 1299
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    .line 1301
    .line 1302
    const-string p1, "\u05e2\u05d3\u05db\u05df \u05d0\u05ea \u05d9\u05d9\u05e9\u05d5\u05dd YouTube"

    .line 1303
    .line 1304
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    .line 1306
    .line 1307
    return-void

    .line 1308
    :cond_16
    const-string v0, "ja"

    .line 1309
    .line 1310
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1311
    .line 1312
    .line 1313
    move-result v0

    .line 1314
    if-eqz v0, :cond_17

    .line 1315
    .line 1316
    const-string p1, "YouTube\u30d7\u30ec\u30fc\u30e4\u30fc\u306e\u521d\u671f\u5316\u4e2d\u306b\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002"

    .line 1317
    .line 1318
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    .line 1320
    .line 1321
    const-string p1, "YouTube\u30a2\u30d7\u30ea\u3092\u5165\u624b"

    .line 1322
    .line 1323
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    .line 1325
    .line 1326
    const-string p1, "\u3053\u306e\u30a2\u30d7\u30ea\u306e\u5b9f\u884c\u306b\u5fc5\u8981\u306aYouTube\u30a2\u30d7\u30ea\u304c\u7aef\u672b\u306b\u3042\u308a\u307e\u305b\u3093"

    .line 1327
    .line 1328
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    .line 1330
    .line 1331
    const-string p1, "YouTube\u30a2\u30d7\u30ea\u3092\u5165\u624b"

    .line 1332
    .line 1333
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    .line 1335
    .line 1336
    const-string p1, "YouTube\u30a2\u30d7\u30ea\u3092\u6709\u52b9\u5316"

    .line 1337
    .line 1338
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    .line 1340
    .line 1341
    const-string p1, "\u3053\u306e\u30a2\u30d7\u30ea\u306e\u5b9f\u884c\u306b\u306fYouTube\u30a2\u30d7\u30ea\u306e\u6709\u52b9\u5316\u304c\u5fc5\u8981\u3067\u3059\u3002"

    .line 1342
    .line 1343
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    .line 1345
    .line 1346
    const-string p1, "YouTube\u30a2\u30d7\u30ea\u3092\u6709\u52b9\u5316"

    .line 1347
    .line 1348
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    .line 1350
    .line 1351
    const-string p1, "YouTube\u30a2\u30d7\u30ea\u3092\u66f4\u65b0"

    .line 1352
    .line 1353
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    .line 1355
    .line 1356
    const-string p1, "\u3053\u306e\u30a2\u30d7\u30ea\u306e\u5b9f\u884c\u306b\u306fYouTube\u30a2\u30d7\u30ea\u306e\u66f4\u65b0\u304c\u5fc5\u8981\u3067\u3059\u3002"

    .line 1357
    .line 1358
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    .line 1360
    .line 1361
    const-string p1, "YouTube\u30a2\u30d7\u30ea\u3092\u66f4\u65b0"

    .line 1362
    .line 1363
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    .line 1365
    .line 1366
    return-void

    .line 1367
    :cond_17
    const-string v0, "ko"

    .line 1368
    .line 1369
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1370
    .line 1371
    .line 1372
    move-result v0

    .line 1373
    if-eqz v0, :cond_18

    .line 1374
    .line 1375
    const-string p1, "YouTube \ud50c\ub808\uc774\uc5b4\ub97c \ucd08\uae30\ud654\ud558\ub294 \uc911\uc5d0 \uc624\ub958\uac00 \ubc1c\uc0dd\ud588\uc2b5\ub2c8\ub2e4."

    .line 1376
    .line 1377
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    .line 1379
    .line 1380
    const-string p1, "YouTube \uc571 \ub2e4\uc6b4\ub85c\ub4dc"

    .line 1381
    .line 1382
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    .line 1384
    .line 1385
    const-string p1, "\uc774 \uc571\uc740 \ub0b4 \uae30\uae30\uc5d0 YouTube \uc571\uc774 \uc5c6\uc5b4\uc11c \uc2e4\ud589\ub418\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    .line 1386
    .line 1387
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    .line 1389
    .line 1390
    const-string p1, "YouTube \uc571 \ub2e4\uc6b4\ub85c\ub4dc"

    .line 1391
    .line 1392
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    .line 1394
    .line 1395
    const-string p1, "YouTube \uc571 \uc0ac\uc6a9 \uc124\uc815"

    .line 1396
    .line 1397
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    .line 1399
    .line 1400
    const-string p1, "\uc774 \uc571\uc740 YouTube \uc571\uc744 \uc0ac\uc6a9\ud558\ub3c4\ub85d \uc124\uc815\ud558\uc9c0 \uc54a\uc73c\uba74 \uc791\ub3d9\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    .line 1401
    .line 1402
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    .line 1404
    .line 1405
    const-string p1, "YouTube \uc571 \uc0ac\uc6a9"

    .line 1406
    .line 1407
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    .line 1409
    .line 1410
    const-string p1, "YouTube \uc571 \uc5c5\ub370\uc774\ud2b8"

    .line 1411
    .line 1412
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    .line 1414
    .line 1415
    const-string p1, "\uc774 \uc571\uc740 YouTube \uc571\uc744 \uc5c5\ub370\uc774\ud2b8\ud558\uc9c0 \uc54a\uc73c\uba74 \uc791\ub3d9\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    .line 1416
    .line 1417
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1418
    .line 1419
    .line 1420
    const-string p1, "YouTube \uc571 \uc5c5\ub370\uc774\ud2b8"

    .line 1421
    .line 1422
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    .line 1424
    .line 1425
    return-void

    .line 1426
    :cond_18
    const-string v0, "lt"

    .line 1427
    .line 1428
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1429
    .line 1430
    .line 1431
    move-result v0

    .line 1432
    if-eqz v0, :cond_19

    .line 1433
    .line 1434
    const-string p1, "Inicijuojant \u201eYouTube\u201c grotuv\u0105 \u012fvyko klaida."

    .line 1435
    .line 1436
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    .line 1438
    .line 1439
    const-string p1, "Gauti \u201eYouTube\u201c program\u0105"

    .line 1440
    .line 1441
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    .line 1443
    .line 1444
    const-string p1, "\u0160i programa neveikia be \u201eYouTube\u201c programos, o jos \u012frenginyje n\u0117ra."

    .line 1445
    .line 1446
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    .line 1448
    .line 1449
    const-string p1, "Gauti \u201eYouTube\u201c program\u0105"

    .line 1450
    .line 1451
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    .line 1453
    .line 1454
    const-string p1, "\u012egalinti \u201eYouTube\u201c progr."

    .line 1455
    .line 1456
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    .line 1458
    .line 1459
    const-string p1, "\u0160i programa neveiks, jei ne\u012fgalinsite \u201eYouTube\u201c programos."

    .line 1460
    .line 1461
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    .line 1463
    .line 1464
    const-string p1, "\u012egalinti \u201eYouTube\u201c progr."

    .line 1465
    .line 1466
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    .line 1468
    .line 1469
    const-string p1, "Atnauj. \u201eYouTube\u201c progr."

    .line 1470
    .line 1471
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    .line 1473
    .line 1474
    const-string p1, "\u0160i programa neveiks, jei neatnaujinsite \u201eYouTube\u201c programos."

    .line 1475
    .line 1476
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    .line 1478
    .line 1479
    const-string p1, "Atnauj. \u201eYouTube\u201c progr."

    .line 1480
    .line 1481
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1482
    .line 1483
    .line 1484
    return-void

    .line 1485
    :cond_19
    const-string v0, "lv"

    .line 1486
    .line 1487
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1488
    .line 1489
    .line 1490
    move-result v0

    .line 1491
    if-eqz v0, :cond_1a

    .line 1492
    .line 1493
    const-string p1, "Inicializ\u0113jot YouTube atska\u0146ot\u0101ju, rad\u0101s k\u013c\u016bda."

    .line 1494
    .line 1495
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    .line 1497
    .line 1498
    const-string p1, "YouTube liet. ieg\u016b\u0161ana"

    .line 1499
    .line 1500
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1501
    .line 1502
    .line 1503
    const-string p1, "\u0160\u012b lietotne nedarbosies bez YouTube lietotnes, kuras nav \u0161aj\u0101 ier\u012bc\u0113."

    .line 1504
    .line 1505
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    .line 1507
    .line 1508
    const-string p1, "Ieg\u016bt YouTube lietotni"

    .line 1509
    .line 1510
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    .line 1512
    .line 1513
    const-string p1, "YouTube liet. iesp\u0113jo\u0161ana"

    .line 1514
    .line 1515
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    .line 1517
    .line 1518
    const-string p1, "Lai \u0161\u012b lietotne darbotos, iesp\u0113jojiet YouTube lietotni."

    .line 1519
    .line 1520
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    .line 1522
    .line 1523
    const-string p1, "Iesp\u0113jot YouTube lietotni"

    .line 1524
    .line 1525
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    .line 1527
    .line 1528
    const-string p1, "YouTube liet. atjaunin."

    .line 1529
    .line 1530
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    .line 1532
    .line 1533
    const-string p1, "Lai \u0161\u012b lietotne darbotos, atjauniniet YouTube lietotni."

    .line 1534
    .line 1535
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    .line 1537
    .line 1538
    const-string p1, "Atjaun. YouTube lietotni"

    .line 1539
    .line 1540
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1541
    .line 1542
    .line 1543
    return-void

    .line 1544
    :cond_1a
    const-string v0, "ms"

    .line 1545
    .line 1546
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1547
    .line 1548
    .line 1549
    move-result v0

    .line 1550
    if-eqz v0, :cond_1b

    .line 1551
    .line 1552
    const-string p1, "Ralat berlaku semasa memulakan alat main YouTube."

    .line 1553
    .line 1554
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    .line 1556
    .line 1557
    const-string p1, "Dapatkan Apl YouTube"

    .line 1558
    .line 1559
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    .line 1561
    .line 1562
    const-string p1, "Apl ini tidak akan berjalan tanpa Apl YouTube, yang tidak ada pada peranti anda"

    .line 1563
    .line 1564
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    .line 1566
    .line 1567
    const-string p1, "Dapatkan Apl YouTube"

    .line 1568
    .line 1569
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    .line 1571
    .line 1572
    const-string p1, "Dayakan Apl YouTube"

    .line 1573
    .line 1574
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    .line 1576
    .line 1577
    const-string p1, "Apl ini tidak akan berfungsi kecuali anda mendayakan Apl YouTube."

    .line 1578
    .line 1579
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    .line 1581
    .line 1582
    const-string p1, "Dayakan Apl YouTube"

    .line 1583
    .line 1584
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    .line 1586
    .line 1587
    const-string p1, "Kemas kini Apl YouTube"

    .line 1588
    .line 1589
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    .line 1591
    .line 1592
    const-string p1, "Apl ini tidak akan berfungsi kecuali anda mengemas kini Apl YouTube."

    .line 1593
    .line 1594
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1595
    .line 1596
    .line 1597
    const-string p1, "Kemas kini Apl YouTube"

    .line 1598
    .line 1599
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    .line 1601
    .line 1602
    return-void

    .line 1603
    :cond_1b
    const-string v0, "nb"

    .line 1604
    .line 1605
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1606
    .line 1607
    .line 1608
    move-result v0

    .line 1609
    if-eqz v0, :cond_1c

    .line 1610
    .line 1611
    const-string p1, "Det oppsto en feil da YouTube-avspilleren startet."

    .line 1612
    .line 1613
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    .line 1615
    .line 1616
    const-string p1, "Skaff deg YouTube-appen"

    .line 1617
    .line 1618
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    .line 1620
    .line 1621
    const-string p1, "Denne appen kan ikke kj\u00f8re uten YouTube-appen, som du ikke har p\u00e5 enheten"

    .line 1622
    .line 1623
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    .line 1625
    .line 1626
    const-string p1, "Skaff deg YouTube-appen"

    .line 1627
    .line 1628
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    .line 1630
    .line 1631
    const-string p1, "Aktiver YouTube-appen"

    .line 1632
    .line 1633
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    .line 1635
    .line 1636
    const-string p1, "Denne appen fungerer ikke f\u00f8r du aktiverer YouTube-appen."

    .line 1637
    .line 1638
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    .line 1640
    .line 1641
    const-string p1, "Aktiver YouTube-appen"

    .line 1642
    .line 1643
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    .line 1645
    .line 1646
    const-string p1, "Oppdater YouTube-appen"

    .line 1647
    .line 1648
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    .line 1650
    .line 1651
    const-string p1, "Denne appen fungerer ikke f\u00f8r du oppdaterer YouTube-appen."

    .line 1652
    .line 1653
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    .line 1655
    .line 1656
    const-string p1, "Oppdater YouTube-appen"

    .line 1657
    .line 1658
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1659
    .line 1660
    .line 1661
    return-void

    .line 1662
    :cond_1c
    const-string v0, "nl"

    .line 1663
    .line 1664
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1665
    .line 1666
    .line 1667
    move-result v0

    .line 1668
    if-eqz v0, :cond_1d

    .line 1669
    .line 1670
    const-string p1, "Er is een fout opgetreden bij het initialiseren van de YouTube-speler."

    .line 1671
    .line 1672
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    .line 1674
    .line 1675
    const-string p1, "YouTube-app downloaden"

    .line 1676
    .line 1677
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1678
    .line 1679
    .line 1680
    const-string p1, "Deze app wordt niet uitgevoerd zonder de YouTube-app, die op uw apparaat ontbreekt"

    .line 1681
    .line 1682
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    .line 1684
    .line 1685
    const-string p1, "YouTube-app downloaden"

    .line 1686
    .line 1687
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    .line 1689
    .line 1690
    const-string p1, "YouTube-app inschakelen"

    .line 1691
    .line 1692
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    .line 1694
    .line 1695
    const-string p1, "Deze app werkt niet, tenzij u de YouTube-app inschakelt."

    .line 1696
    .line 1697
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    .line 1699
    .line 1700
    const-string p1, "YouTube-app inschakelen"

    .line 1701
    .line 1702
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    .line 1704
    .line 1705
    const-string p1, "YouTube-app bijwerken"

    .line 1706
    .line 1707
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1708
    .line 1709
    .line 1710
    const-string p1, "Deze app werkt niet, tenzij u de YouTube-app bijwerkt."

    .line 1711
    .line 1712
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    .line 1714
    .line 1715
    const-string p1, "YouTube-app bijwerken"

    .line 1716
    .line 1717
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    .line 1719
    .line 1720
    return-void

    .line 1721
    :cond_1d
    const-string v0, "pl"

    .line 1722
    .line 1723
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1724
    .line 1725
    .line 1726
    move-result v0

    .line 1727
    if-eqz v0, :cond_1e

    .line 1728
    .line 1729
    const-string p1, "Podczas inicjowania odtwarzacza YouTube wyst\u0105pi\u0142 b\u0142\u0105d."

    .line 1730
    .line 1731
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1732
    .line 1733
    .line 1734
    const-string p1, "Pobierz aplikacj\u0119 YouTube"

    .line 1735
    .line 1736
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    .line 1738
    .line 1739
    const-string p1, "Ta aplikacja nie b\u0119dzie dzia\u0142a\u0107 bez aplikacji YouTube, kt\u00f3rej nie ma na tym urz\u0105dzeniu"

    .line 1740
    .line 1741
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1742
    .line 1743
    .line 1744
    const-string p1, "Pobierz aplikacj\u0119 YouTube"

    .line 1745
    .line 1746
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    .line 1748
    .line 1749
    const-string p1, "W\u0142\u0105cz aplikacj\u0119 YouTube"

    .line 1750
    .line 1751
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    .line 1753
    .line 1754
    const-string p1, "Ta aplikacja nie b\u0119dzie dzia\u0142a\u0107, je\u015bli nie w\u0142\u0105czysz aplikacji YouTube."

    .line 1755
    .line 1756
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1757
    .line 1758
    .line 1759
    const-string p1, "W\u0142\u0105cz aplikacj\u0119 YouTube"

    .line 1760
    .line 1761
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    .line 1763
    .line 1764
    const-string p1, "Zaktualizuj aplikacj\u0119 YouTube"

    .line 1765
    .line 1766
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    .line 1768
    .line 1769
    const-string p1, "Ta aplikacja nie b\u0119dzie dzia\u0142a\u0107, je\u015bli nie zaktualizujesz aplikacji YouTube."

    .line 1770
    .line 1771
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    .line 1773
    .line 1774
    const-string p1, "Zaktualizuj aplikacj\u0119 YouTube"

    .line 1775
    .line 1776
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    .line 1778
    .line 1779
    return-void

    .line 1780
    :cond_1e
    const-string v0, "pt_PT"

    .line 1781
    .line 1782
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1783
    .line 1784
    .line 1785
    move-result v0

    .line 1786
    if-eqz v0, :cond_1f

    .line 1787
    .line 1788
    const-string p1, "Ocorreu um erro ao iniciar o leitor do YouTube."

    .line 1789
    .line 1790
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    .line 1792
    .line 1793
    const-string p1, "Obter a Aplica\u00e7\u00e3o YouTube"

    .line 1794
    .line 1795
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1796
    .line 1797
    .line 1798
    const-string p1, "Esta aplica\u00e7\u00e3o n\u00e3o ser\u00e1 executada sem a Aplica\u00e7\u00e3o YouTube, que est\u00e1 em falta no seu dispositivo"

    .line 1799
    .line 1800
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1801
    .line 1802
    .line 1803
    const-string p1, "Obter a Aplica\u00e7\u00e3o YouTube"

    .line 1804
    .line 1805
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    .line 1807
    .line 1808
    const-string p1, "Ativar Aplica\u00e7\u00e3o YouTube"

    .line 1809
    .line 1810
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1811
    .line 1812
    .line 1813
    const-string p1, "Esta aplica\u00e7\u00e3o n\u00e3o ir\u00e1 funcionar enquanto n\u00e3o ativar a Aplica\u00e7\u00e3o YouTube."

    .line 1814
    .line 1815
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1816
    .line 1817
    .line 1818
    const-string p1, "Ativar Aplica\u00e7\u00e3o YouTube"

    .line 1819
    .line 1820
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    .line 1822
    .line 1823
    const-string p1, "Atualizar Aplica. YouTube"

    .line 1824
    .line 1825
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1826
    .line 1827
    .line 1828
    const-string p1, "Esta aplica\u00e7\u00e3o n\u00e3o ir\u00e1 funcionar enquanto n\u00e3o atualizar a Aplica\u00e7\u00e3o YouTube."

    .line 1829
    .line 1830
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1831
    .line 1832
    .line 1833
    const-string p1, "Atualizar Aplica. YouTube"

    .line 1834
    .line 1835
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1836
    .line 1837
    .line 1838
    return-void

    .line 1839
    :cond_1f
    const-string v0, "pt"

    .line 1840
    .line 1841
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1842
    .line 1843
    .line 1844
    move-result v0

    .line 1845
    if-eqz v0, :cond_20

    .line 1846
    .line 1847
    const-string p1, "Ocorreu um erro ao inicializar o player do YouTube."

    .line 1848
    .line 1849
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    .line 1851
    .line 1852
    const-string p1, "Obter aplicativo YouTube"

    .line 1853
    .line 1854
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1855
    .line 1856
    .line 1857
    const-string p1, "Este aplicativo s\u00f3 funciona com o aplicativo YouTube, que est\u00e1 ausente no dispositivo."

    .line 1858
    .line 1859
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1860
    .line 1861
    .line 1862
    const-string p1, "Obter aplicativo YouTube"

    .line 1863
    .line 1864
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1865
    .line 1866
    .line 1867
    const-string p1, "Ativar aplicativo YouTube"

    .line 1868
    .line 1869
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1870
    .line 1871
    .line 1872
    const-string p1, "Este aplicativo s\u00f3 funciona com o aplicativo YouTube ativado."

    .line 1873
    .line 1874
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1875
    .line 1876
    .line 1877
    const-string p1, "Ativar aplicativo YouTube"

    .line 1878
    .line 1879
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1880
    .line 1881
    .line 1882
    const-string p1, "Atualizar aplic. YouTube"

    .line 1883
    .line 1884
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1885
    .line 1886
    .line 1887
    const-string p1, "Este aplicativo s\u00f3 funciona com o aplicativo YouTube atualizado."

    .line 1888
    .line 1889
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1890
    .line 1891
    .line 1892
    const-string p1, "Atualizar aplic. YouTube"

    .line 1893
    .line 1894
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1895
    .line 1896
    .line 1897
    return-void

    .line 1898
    :cond_20
    const-string v0, "ro"

    .line 1899
    .line 1900
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1901
    .line 1902
    .line 1903
    move-result v0

    .line 1904
    if-eqz v0, :cond_21

    .line 1905
    .line 1906
    const-string p1, "A ap\u0103rut o eroare la ini\u0163ializarea playerului YouTube."

    .line 1907
    .line 1908
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1909
    .line 1910
    .line 1911
    const-string p1, "Desc\u0103rca\u0163i YouTube"

    .line 1912
    .line 1913
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1914
    .line 1915
    .line 1916
    const-string p1, "Aceast\u0103 aplica\u0163ie nu va rula f\u0103r\u0103 aplica\u0163ia YouTube, care lipse\u015fte de pe gadget"

    .line 1917
    .line 1918
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1919
    .line 1920
    .line 1921
    const-string p1, "Desc\u0103rca\u0163i YouTube"

    .line 1922
    .line 1923
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1924
    .line 1925
    .line 1926
    const-string p1, "Activa\u0163i YouTube"

    .line 1927
    .line 1928
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1929
    .line 1930
    .line 1931
    const-string p1, "Aceast\u0103 aplica\u0163ie nu va func\u0163iona dec\u00e2t dac\u0103 activa\u0163i aplica\u0163ia YouTube."

    .line 1932
    .line 1933
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    .line 1935
    .line 1936
    const-string p1, "Activa\u0163i YouTube"

    .line 1937
    .line 1938
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    .line 1940
    .line 1941
    const-string p1, "Actualiza\u0163i YouTube"

    .line 1942
    .line 1943
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1944
    .line 1945
    .line 1946
    const-string p1, "Aceast\u0103 aplica\u0163ie nu va func\u0163iona dec\u00e2t dac\u0103 actualiza\u0163i aplica\u0163ia YouTube."

    .line 1947
    .line 1948
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1949
    .line 1950
    .line 1951
    const-string p1, "Actualiza\u0163i YouTube"

    .line 1952
    .line 1953
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1954
    .line 1955
    .line 1956
    return-void

    .line 1957
    :cond_21
    const-string v0, "ru"

    .line 1958
    .line 1959
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1960
    .line 1961
    .line 1962
    move-result v0

    .line 1963
    if-eqz v0, :cond_22

    .line 1964
    .line 1965
    const-string p1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u044c \u043f\u0440\u043e\u0438\u0433\u0440\u044b\u0432\u0430\u0442\u0435\u043b\u044c YouTube."

    .line 1966
    .line 1967
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1968
    .line 1969
    .line 1970
    const-string p1, "\u0417\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u0435 YouTube"

    .line 1971
    .line 1972
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    .line 1974
    .line 1975
    const-string p1, "\u0427\u0442\u043e\u0431\u044b \u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u044c \u044d\u0442\u0443 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u043c\u0443, \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 YouTube."

    .line 1976
    .line 1977
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1978
    .line 1979
    .line 1980
    const-string p1, "\u0417\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u044c YouTube"

    .line 1981
    .line 1982
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    .line 1984
    .line 1985
    const-string p1, "\u0410\u043a\u0442\u0438\u0432\u0430\u0446\u0438\u044f YouTube"

    .line 1986
    .line 1987
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1988
    .line 1989
    .line 1990
    const-string p1, "\u0427\u0442\u043e\u0431\u044b \u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u044c \u044d\u0442\u0443 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u043c\u0443, \u0430\u043a\u0442\u0438\u0432\u0438\u0440\u0443\u0439\u0442\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 YouTube."

    .line 1991
    .line 1992
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1993
    .line 1994
    .line 1995
    const-string p1, "\u0410\u043a\u0442\u0438\u0432\u0438\u0440\u043e\u0432\u0430\u0442\u044c YouTube"

    .line 1996
    .line 1997
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1998
    .line 1999
    .line 2000
    const-string p1, "\u041e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0435 YouTube"

    .line 2001
    .line 2002
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    .line 2004
    .line 2005
    const-string p1, "\u0427\u0442\u043e\u0431\u044b \u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u044c \u044d\u0442\u0443 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u043c\u0443, \u043e\u0431\u043d\u043e\u0432\u0438\u0442\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 YouTube."

    .line 2006
    .line 2007
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2008
    .line 2009
    .line 2010
    const-string p1, "\u041e\u0431\u043d\u043e\u0432\u0438\u0442\u044c YouTube"

    .line 2011
    .line 2012
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2013
    .line 2014
    .line 2015
    return-void

    .line 2016
    :cond_22
    const-string v0, "sk"

    .line 2017
    .line 2018
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2019
    .line 2020
    .line 2021
    move-result v0

    .line 2022
    if-eqz v0, :cond_23

    .line 2023
    .line 2024
    const-string p1, "Pri inicializ\u00e1cii prehr\u00e1va\u010da YouTube sa vyskytla chyba."

    .line 2025
    .line 2026
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2027
    .line 2028
    .line 2029
    const-string p1, "Z\u00edska\u0165 aplik\u00e1ciu YouTube"

    .line 2030
    .line 2031
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2032
    .line 2033
    .line 2034
    const-string p1, "T\u00fato aplik\u00e1ciu nebude mo\u017en\u00e9 spusti\u0165 bez aplik\u00e1cie YouTube, ktor\u00e1 na zariaden\u00ed nie je nain\u0161talovan\u00e1."

    .line 2035
    .line 2036
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2037
    .line 2038
    .line 2039
    const-string p1, "Z\u00edska\u0165 aplik\u00e1ciu YouTube"

    .line 2040
    .line 2041
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    .line 2043
    .line 2044
    const-string p1, "Povoli\u0165 aplik\u00e1ciu YouTube"

    .line 2045
    .line 2046
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2047
    .line 2048
    .line 2049
    const-string p1, "T\u00e1to aplik\u00e1cia bude fungova\u0165 a\u017e po povolen\u00ed aplik\u00e1cie YouTube."

    .line 2050
    .line 2051
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2052
    .line 2053
    .line 2054
    const-string p1, "Povoli\u0165 aplik\u00e1ciu YouTube"

    .line 2055
    .line 2056
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2057
    .line 2058
    .line 2059
    const-string p1, "Aktualizova\u0165 apl. YouTube"

    .line 2060
    .line 2061
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2062
    .line 2063
    .line 2064
    const-string p1, "T\u00e1to aplik\u00e1cia bude fungova\u0165 a\u017e po aktualiz\u00e1cii aplik\u00e1cie YouTube."

    .line 2065
    .line 2066
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2067
    .line 2068
    .line 2069
    const-string p1, "Aktualizova\u0165 apl. YouTube"

    .line 2070
    .line 2071
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2072
    .line 2073
    .line 2074
    return-void

    .line 2075
    :cond_23
    const-string v0, "sl"

    .line 2076
    .line 2077
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2078
    .line 2079
    .line 2080
    move-result v0

    .line 2081
    if-eqz v0, :cond_24

    .line 2082
    .line 2083
    const-string p1, "Napaka med inicializacijo YouTubovega predvajalnika."

    .line 2084
    .line 2085
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2086
    .line 2087
    .line 2088
    const-string p1, "Prenos aplikacije YouTube"

    .line 2089
    .line 2090
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2091
    .line 2092
    .line 2093
    const-string p1, "Ta aplikacija ne bo delovala brez aplikacije YouTube, ki je ni v va\u0161i napravi"

    .line 2094
    .line 2095
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2096
    .line 2097
    .line 2098
    const-string p1, "Prenos aplikacije YouTube"

    .line 2099
    .line 2100
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    .line 2102
    .line 2103
    const-string p1, "Omog. aplikacije YouTube"

    .line 2104
    .line 2105
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2106
    .line 2107
    .line 2108
    const-string p1, "Ta aplikacija ne bo delovala, \u010de ne omogo\u010dite aplikacije YouTube."

    .line 2109
    .line 2110
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2111
    .line 2112
    .line 2113
    const-string p1, "Omog. aplikacijo YouTube"

    .line 2114
    .line 2115
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2116
    .line 2117
    .line 2118
    const-string p1, "Posodob. aplikacije YouTube"

    .line 2119
    .line 2120
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2121
    .line 2122
    .line 2123
    const-string p1, "Ta aplikacija ne bo delovala, \u010de ne posodobite aplikacije YouTube."

    .line 2124
    .line 2125
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2126
    .line 2127
    .line 2128
    const-string p1, "Posod. aplikacijo YouTube"

    .line 2129
    .line 2130
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2131
    .line 2132
    .line 2133
    return-void

    .line 2134
    :cond_24
    const-string v0, "sr"

    .line 2135
    .line 2136
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2137
    .line 2138
    .line 2139
    move-result v0

    .line 2140
    if-eqz v0, :cond_25

    .line 2141
    .line 2142
    const-string p1, "\u0414\u043e\u0448\u043b\u043e \u0458\u0435 \u0434\u043e \u0433\u0440\u0435\u0448\u043a\u0435 \u043f\u0440\u0438 \u043f\u043e\u043a\u0440\u0435\u0442\u0430\u045a\u0443 YouTube \u043f\u043b\u0435\u0458\u0435\u0440\u0430."

    .line 2143
    .line 2144
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2145
    .line 2146
    .line 2147
    const-string p1, "\u041f\u0440\u0435\u0443\u0437\u0438\u043c\u0430\u045a\u0435 \u0430\u043f\u043b\u0438\u043a. YouTube"

    .line 2148
    .line 2149
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2150
    .line 2151
    .line 2152
    const-string p1, "\u041e\u0432\u0430 \u0430\u043f\u043b\u0438\u043a\u0430\u0446\u0438\u0458\u0430 \u043d\u0435\u045b\u0435 \u0444\u0443\u043d\u043a\u0446\u0438\u043e\u043d\u0438\u0441\u0430\u0442\u0438 \u0431\u0435\u0437 \u0430\u043f\u043b\u0438\u043a\u0430\u0446\u0438\u0458\u0435 YouTube, \u043a\u043e\u0458\u0430 \u043d\u0435\u0434\u043e\u0441\u0442\u0430\u0458\u0435 \u043d\u0430 \u0443\u0440\u0435\u0452\u0430\u0458\u0443"

    .line 2153
    .line 2154
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2155
    .line 2156
    .line 2157
    const-string p1, "\u041f\u0440\u0435\u0443\u0437\u043c\u0438 \u0430\u043f\u043b\u0438\u043a\u0430\u0446. YouTube"

    .line 2158
    .line 2159
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2160
    .line 2161
    .line 2162
    const-string p1, "\u041e\u043c\u043e\u0433\u0443\u045b\u0430\u0432\u0430\u045a\u0435 \u0430\u043f\u043b. YouTube"

    .line 2163
    .line 2164
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2165
    .line 2166
    .line 2167
    const-string p1, "\u041e\u0432\u0430 \u0430\u043f\u043b\u0438\u043a\u0430\u0446\u0438\u0458\u0435 \u043d\u0435\u045b\u0435 \u0444\u0443\u043d\u043a\u0446\u0438\u043e\u043d\u0438\u0441\u0430\u0442\u0438 \u0430\u043a\u043e \u043d\u0435 \u043e\u043c\u043e\u0433\u0443\u045b\u0438\u0442\u0435 \u0430\u043f\u043b\u0438\u043a\u0430\u0446\u0438\u0458\u0443 YouTube."

    .line 2168
    .line 2169
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2170
    .line 2171
    .line 2172
    const-string p1, "\u041e\u043c\u043e\u0433\u0443\u045b\u0438 \u0430\u043f\u043b\u0438\u043a\u0430\u0446. YouTube"

    .line 2173
    .line 2174
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2175
    .line 2176
    .line 2177
    const-string p1, "\u0410\u0436\u0443\u0440\u0438\u0440\u0430\u045a\u0435 \u0430\u043f\u043b\u0438\u043a. YouTube"

    .line 2178
    .line 2179
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2180
    .line 2181
    .line 2182
    const-string p1, "\u041e\u0432\u0430 \u0430\u043f\u043b\u0438\u043a\u0430\u0446\u0438\u0458\u0435 \u043d\u0435\u045b\u0435 \u0444\u0443\u043d\u043a\u0446\u0438\u043e\u043d\u0438\u0441\u0430\u0442\u0438 \u0430\u043a\u043e \u043d\u0435 \u0430\u0436\u0443\u0440\u0438\u0440\u0430\u0442\u0435 \u0430\u043f\u043b\u0438\u043a\u0430\u0446\u0438\u0458\u0443 YouTube."

    .line 2183
    .line 2184
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2185
    .line 2186
    .line 2187
    const-string p1, "\u0410\u0436\u0443\u0440\u0438\u0440\u0430\u0458 \u0430\u043f\u043b\u0438\u043a\u0430\u0446. YouTube"

    .line 2188
    .line 2189
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2190
    .line 2191
    .line 2192
    return-void

    .line 2193
    :cond_25
    const-string v0, "sv"

    .line 2194
    .line 2195
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2196
    .line 2197
    .line 2198
    move-result v0

    .line 2199
    if-eqz v0, :cond_26

    .line 2200
    .line 2201
    const-string p1, "Ett fel uppstod n\u00e4r YouTube-spelaren skulle startas."

    .line 2202
    .line 2203
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2204
    .line 2205
    .line 2206
    const-string p1, "H\u00e4mta YouTube-appen"

    .line 2207
    .line 2208
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2209
    .line 2210
    .line 2211
    const-string p1, "YouTube-appen kr\u00e4vs f\u00f6r att den h\u00e4r appen ska kunna k\u00f6ras. Du har inte YouTube-appen p\u00e5 din enhet."

    .line 2212
    .line 2213
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2214
    .line 2215
    .line 2216
    const-string p1, "H\u00e4mta YouTube-appen"

    .line 2217
    .line 2218
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2219
    .line 2220
    .line 2221
    const-string p1, "Aktivera YouTube-appen"

    .line 2222
    .line 2223
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2224
    .line 2225
    .line 2226
    const-string p1, "Du m\u00e5ste aktivera YouTube-appen f\u00f6r att den h\u00e4r appen ska fungera."

    .line 2227
    .line 2228
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2229
    .line 2230
    .line 2231
    const-string p1, "Aktivera YouTube-appen"

    .line 2232
    .line 2233
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2234
    .line 2235
    .line 2236
    const-string p1, "Uppdatera YouTube-appen"

    .line 2237
    .line 2238
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2239
    .line 2240
    .line 2241
    const-string p1, "Du m\u00e5ste uppdatera YouTube-appen f\u00f6r att den h\u00e4r appen ska fungera."

    .line 2242
    .line 2243
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2244
    .line 2245
    .line 2246
    const-string p1, "Uppdatera YouTube-appen"

    .line 2247
    .line 2248
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2249
    .line 2250
    .line 2251
    return-void

    .line 2252
    :cond_26
    const-string v0, "sw"

    .line 2253
    .line 2254
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2255
    .line 2256
    .line 2257
    move-result v0

    .line 2258
    if-eqz v0, :cond_27

    .line 2259
    .line 2260
    const-string p1, "Hitilafu ilitokea wakati wa kuanzisha kichezeshi cha YouTube."

    .line 2261
    .line 2262
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2263
    .line 2264
    .line 2265
    const-string p1, "Pata Programu ya YouTube"

    .line 2266
    .line 2267
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2268
    .line 2269
    .line 2270
    const-string p1, "Programu hii haitaendeshwa bila Programu ya YouTube, ambayo inakosekana kwenye kifaa chako."

    .line 2271
    .line 2272
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2273
    .line 2274
    .line 2275
    const-string p1, "Pata Programu ya YouTube"

    .line 2276
    .line 2277
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2278
    .line 2279
    .line 2280
    const-string p1, "Wezesha Programu ya YouTube"

    .line 2281
    .line 2282
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2283
    .line 2284
    .line 2285
    const-string p1, "Programu hii haitafanya kazi isipokuwa uwezeshe Programu ya YouTube."

    .line 2286
    .line 2287
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2288
    .line 2289
    .line 2290
    const-string p1, "Wezesha Programu ya YouTube"

    .line 2291
    .line 2292
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2293
    .line 2294
    .line 2295
    const-string p1, "Sasisha Programu ya YouTube"

    .line 2296
    .line 2297
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2298
    .line 2299
    .line 2300
    const-string p1, "Programu hii haitafanya kazi mpaka usasishe Programu ya YouTube."

    .line 2301
    .line 2302
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2303
    .line 2304
    .line 2305
    const-string p1, "Sasisha Programu ya YouTube"

    .line 2306
    .line 2307
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2308
    .line 2309
    .line 2310
    return-void

    .line 2311
    :cond_27
    const-string v0, "th"

    .line 2312
    .line 2313
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2314
    .line 2315
    .line 2316
    move-result v0

    .line 2317
    if-eqz v0, :cond_28

    .line 2318
    .line 2319
    const-string p1, "\u0e40\u0e01\u0e34\u0e14\u0e02\u0e49\u0e2d\u0e1c\u0e34\u0e14\u0e1e\u0e25\u0e32\u0e14\u0e43\u0e19\u0e02\u0e13\u0e30\u0e40\u0e23\u0e34\u0e48\u0e21\u0e15\u0e49\u0e19\u0e42\u0e1b\u0e23\u0e41\u0e01\u0e23\u0e21\u0e40\u0e25\u0e48\u0e19 YouTube"

    .line 2320
    .line 2321
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2322
    .line 2323
    .line 2324
    const-string p1, "\u0e23\u0e31\u0e1a\u0e41\u0e2d\u0e1b\u0e1e\u0e25\u0e34\u0e40\u0e04\u0e0a\u0e31\u0e19 YouTube"

    .line 2325
    .line 2326
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2327
    .line 2328
    .line 2329
    const-string p1, "\u0e41\u0e2d\u0e1b\u0e1e\u0e25\u0e34\u0e40\u0e04\u0e0a\u0e31\u0e19\u0e19\u0e35\u0e49\u0e08\u0e30\u0e44\u0e21\u0e48\u0e17\u0e33\u0e07\u0e32\u0e19\u0e2b\u0e32\u0e01\u0e44\u0e21\u0e48\u0e21\u0e35\u0e41\u0e2d\u0e1b\u0e1e\u0e25\u0e34\u0e40\u0e04\u0e0a\u0e31\u0e19 YouTube \u0e0b\u0e36\u0e48\u0e07\u0e44\u0e21\u0e48\u0e21\u0e35\u0e43\u0e19\u0e2d\u0e38\u0e1b\u0e01\u0e23\u0e13\u0e4c\u0e02\u0e2d\u0e07\u0e04\u0e38\u0e13"

    .line 2330
    .line 2331
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2332
    .line 2333
    .line 2334
    const-string p1, "\u0e23\u0e31\u0e1a\u0e41\u0e2d\u0e1b\u0e1e\u0e25\u0e34\u0e40\u0e04\u0e0a\u0e31\u0e19 YouTube"

    .line 2335
    .line 2336
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2337
    .line 2338
    .line 2339
    const-string p1, "\u0e40\u0e1b\u0e34\u0e14\u0e43\u0e0a\u0e49\u0e07\u0e32\u0e19\u0e41\u0e2d\u0e1b YouTube"

    .line 2340
    .line 2341
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2342
    .line 2343
    .line 2344
    const-string p1, "\u0e41\u0e2d\u0e1b\u0e1e\u0e25\u0e34\u0e40\u0e04\u0e0a\u0e31\u0e19\u0e19\u0e35\u0e49\u0e08\u0e30\u0e44\u0e21\u0e48\u0e17\u0e33\u0e07\u0e32\u0e19\u0e08\u0e19\u0e01\u0e27\u0e48\u0e32\u0e04\u0e38\u0e13\u0e08\u0e30\u0e40\u0e1b\u0e34\u0e14\u0e43\u0e0a\u0e49\u0e07\u0e32\u0e19\u0e41\u0e2d\u0e1b\u0e1e\u0e25\u0e34\u0e40\u0e04\u0e0a\u0e31\u0e19 YouTube"

    .line 2345
    .line 2346
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2347
    .line 2348
    .line 2349
    const-string p1, "\u0e40\u0e1b\u0e34\u0e14\u0e43\u0e0a\u0e49\u0e07\u0e32\u0e19\u0e41\u0e2d\u0e1b YouTube"

    .line 2350
    .line 2351
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2352
    .line 2353
    .line 2354
    const-string p1, "\u0e2d\u0e31\u0e1b\u0e40\u0e14\u0e15\u0e41\u0e2d\u0e1b\u0e1e\u0e25\u0e34\u0e40\u0e04\u0e0a\u0e31\u0e19 YouTube"

    .line 2355
    .line 2356
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2357
    .line 2358
    .line 2359
    const-string p1, "\u0e41\u0e2d\u0e1b\u0e1e\u0e25\u0e34\u0e40\u0e04\u0e0a\u0e31\u0e19\u0e19\u0e35\u0e49\u0e08\u0e30\u0e44\u0e21\u0e48\u0e17\u0e33\u0e07\u0e32\u0e19\u0e08\u0e19\u0e01\u0e27\u0e48\u0e32\u0e04\u0e38\u0e13\u0e08\u0e30\u0e2d\u0e31\u0e1b\u0e40\u0e14\u0e15\u0e41\u0e2d\u0e1b\u0e1e\u0e25\u0e34\u0e40\u0e04\u0e0a\u0e31\u0e19 YouTube"

    .line 2360
    .line 2361
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2362
    .line 2363
    .line 2364
    const-string p1, "\u0e2d\u0e31\u0e1b\u0e40\u0e14\u0e15\u0e41\u0e2d\u0e1b\u0e1e\u0e25\u0e34\u0e40\u0e04\u0e0a\u0e31\u0e19 YouTube"

    .line 2365
    .line 2366
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2367
    .line 2368
    .line 2369
    return-void

    .line 2370
    :cond_28
    const-string v0, "tl"

    .line 2371
    .line 2372
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2373
    .line 2374
    .line 2375
    move-result v0

    .line 2376
    if-eqz v0, :cond_29

    .line 2377
    .line 2378
    const-string p1, "May naganap na error habang sinisimulan ang player ng YouTube."

    .line 2379
    .line 2380
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2381
    .line 2382
    .line 2383
    const-string p1, "Kunin ang YouTube App"

    .line 2384
    .line 2385
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2386
    .line 2387
    .line 2388
    const-string p1, "Hindi gagana ang app na ito nang wala ang YouTube App, na nawawala sa iyong device"

    .line 2389
    .line 2390
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2391
    .line 2392
    .line 2393
    const-string p1, "Kunin ang YouTube App"

    .line 2394
    .line 2395
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2396
    .line 2397
    .line 2398
    const-string p1, "Paganahin ang YouTube App"

    .line 2399
    .line 2400
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2401
    .line 2402
    .line 2403
    const-string p1, "Hindi gagana ang app na ito maliban kung paganahin mo ang YouTube App."

    .line 2404
    .line 2405
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2406
    .line 2407
    .line 2408
    const-string p1, "Paganahin ang YouTube App"

    .line 2409
    .line 2410
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2411
    .line 2412
    .line 2413
    const-string p1, "I-update ang YouTube App"

    .line 2414
    .line 2415
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2416
    .line 2417
    .line 2418
    const-string p1, "Hindi gagana ang app na ito maliban kung i-update mo ang YouTube App."

    .line 2419
    .line 2420
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2421
    .line 2422
    .line 2423
    const-string p1, "I-update ang YouTube App"

    .line 2424
    .line 2425
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2426
    .line 2427
    .line 2428
    return-void

    .line 2429
    :cond_29
    const-string v0, "tr"

    .line 2430
    .line 2431
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2432
    .line 2433
    .line 2434
    move-result v0

    .line 2435
    if-eqz v0, :cond_2a

    .line 2436
    .line 2437
    const-string p1, "YouTube oynat\u0131c\u0131s\u0131 ba\u015flat\u0131l\u0131rken bir hata olu\u015ftu."

    .line 2438
    .line 2439
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2440
    .line 2441
    .line 2442
    const-string p1, "YouTube Uygulamas\u0131n\u0131 edinin"

    .line 2443
    .line 2444
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2445
    .line 2446
    .line 2447
    const-string p1, "Cihaz\u0131n\u0131zda bulunmayan YouTube Uygulamas\u0131 olmadan bu uygulama \u00e7al\u0131\u015fmaz"

    .line 2448
    .line 2449
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2450
    .line 2451
    .line 2452
    const-string p1, "YouTube Uygulamas\u0131n\u0131 edinin"

    .line 2453
    .line 2454
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2455
    .line 2456
    .line 2457
    const-string p1, "YouTube Uygulamas\u0131n\u0131 etkinle\u015ftirin"

    .line 2458
    .line 2459
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2460
    .line 2461
    .line 2462
    const-string p1, "YouTube Uygulamas\u0131n\u0131 etkinle\u015ftirmedi\u011finiz s\u00fcrece bu uygulama \u00e7al\u0131\u015fmaz."

    .line 2463
    .line 2464
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2465
    .line 2466
    .line 2467
    const-string p1, "YouTube Uygulamas\u0131n\u0131 etkinle\u015ftirin"

    .line 2468
    .line 2469
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2470
    .line 2471
    .line 2472
    const-string p1, "YouTube Uygulamas\u0131n\u0131 g\u00fcncelleyin"

    .line 2473
    .line 2474
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2475
    .line 2476
    .line 2477
    const-string p1, "YouTube Uygulamas\u0131 g\u00fcncellenmedik\u00e7e bu uygulama \u00e7al\u0131\u015fmaz."

    .line 2478
    .line 2479
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2480
    .line 2481
    .line 2482
    const-string p1, "YouTube Uygulamas\u0131n\u0131 g\u00fcncelle"

    .line 2483
    .line 2484
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2485
    .line 2486
    .line 2487
    return-void

    .line 2488
    :cond_2a
    const-string v0, "uk"

    .line 2489
    .line 2490
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2491
    .line 2492
    .line 2493
    move-result v0

    .line 2494
    if-eqz v0, :cond_2b

    .line 2495
    .line 2496
    const-string p1, "\u041f\u0456\u0434 \u0447\u0430\u0441 \u0456\u043d\u0456\u0446\u0456\u0430\u043b\u0456\u0437\u0430\u0446\u0456\u0457 \u043f\u0440\u043e\u0433\u0440\u0430\u0432\u0430\u0447\u0430 YouTube \u0441\u0442\u0430\u043b\u0430\u0441\u044f \u043f\u043e\u043c\u0438\u043b\u043a\u0430."

    .line 2497
    .line 2498
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2499
    .line 2500
    .line 2501
    const-string p1, "\u041e\u0442\u0440\u0438\u043c\u0430\u0442\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0443 YouTube"

    .line 2502
    .line 2503
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2504
    .line 2505
    .line 2506
    const-string p1, "\u0426\u044f \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u043d\u0435 \u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u044c\u0441\u044f \u0431\u0435\u0437 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438 YouTube, \u044f\u043a\u0443 \u043d\u0435 \u0432\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043e \u043d\u0430 \u0432\u0430\u0448\u043e\u043c\u0443 \u043f\u0440\u0438\u0441\u0442\u0440\u043e\u0457"

    .line 2507
    .line 2508
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2509
    .line 2510
    .line 2511
    const-string p1, "\u041e\u0442\u0440\u0438\u043c\u0430\u0442\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0443 YouTube"

    .line 2512
    .line 2513
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2514
    .line 2515
    .line 2516
    const-string p1, "\u0423\u0432\u0456\u043c\u043a. \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0443 YouTube"

    .line 2517
    .line 2518
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2519
    .line 2520
    .line 2521
    const-string p1, "\u0426\u044f \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u043d\u0435 \u043f\u0440\u0430\u0446\u044e\u0432\u0430\u0442\u0438\u043c\u0435, \u043f\u043e\u043a\u0438 \u0432\u0438 \u043d\u0435 \u0432\u0432\u0456\u043c\u043a\u043d\u0435\u0442\u0435 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0443 YouTube."

    .line 2522
    .line 2523
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2524
    .line 2525
    .line 2526
    const-string p1, "\u0423\u0432\u0456\u043c\u043a. \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0443 YouTube"

    .line 2527
    .line 2528
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2529
    .line 2530
    .line 2531
    const-string p1, "\u041e\u043d\u043e\u0432\u0438\u0442\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0443 YouTube"

    .line 2532
    .line 2533
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2534
    .line 2535
    .line 2536
    const-string p1, "\u0426\u044f \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u043d\u0435 \u043f\u0440\u0430\u0446\u044e\u0432\u0430\u0442\u0438\u043c\u0435, \u043f\u043e\u043a\u0438 \u0432\u0438 \u043d\u0435 \u043e\u043d\u043e\u0432\u0438\u0442\u0435 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0443 YouTube."

    .line 2537
    .line 2538
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2539
    .line 2540
    .line 2541
    const-string p1, "\u041e\u043d\u043e\u0432\u0438\u0442\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0443 YouTube"

    .line 2542
    .line 2543
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2544
    .line 2545
    .line 2546
    return-void

    .line 2547
    :cond_2b
    const-string v0, "vi"

    .line 2548
    .line 2549
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2550
    .line 2551
    .line 2552
    move-result v0

    .line 2553
    if-eqz v0, :cond_2c

    .line 2554
    .line 2555
    const-string p1, "\u0110\u00e3 x\u1ea3y ra l\u1ed7i trong khi kh\u1edfi ch\u1ea1y tr\u00ecnh ph\u00e1t YouTube."

    .line 2556
    .line 2557
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2558
    .line 2559
    .line 2560
    const-string p1, "T\u1ea3i \u1ee9ng d\u1ee5ng YouTube"

    .line 2561
    .line 2562
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2563
    .line 2564
    .line 2565
    const-string p1, "\u1ee8ng d\u1ee5ng n\u00e0y s\u1ebd kh\u00f4ng ch\u1ea1y n\u1ebfu kh\u00f4ng c\u00f3 \u1ee9ng d\u1ee5ng YouTube, \u1ee9ng d\u1ee5ng n\u00e0y b\u1ecb thi\u1ebfu trong thi\u1ebft b\u1ecb c\u1ee7a b\u1ea1n"

    .line 2566
    .line 2567
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2568
    .line 2569
    .line 2570
    const-string p1, "T\u1ea3i \u1ee9ng d\u1ee5ng YouTube"

    .line 2571
    .line 2572
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2573
    .line 2574
    .line 2575
    const-string p1, "B\u1eadt \u1ee9ng d\u1ee5ng YouTube"

    .line 2576
    .line 2577
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2578
    .line 2579
    .line 2580
    const-string p1, "\u1ee8ng d\u1ee5ng n\u00e0y s\u1ebd kh\u00f4ng ho\u1ea1t \u0111\u1ed9ng tr\u1eeb khi b\u1ea1n b\u1eadt \u1ee9ng d\u1ee5ng YouTube."

    .line 2581
    .line 2582
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2583
    .line 2584
    .line 2585
    const-string p1, "B\u1eadt \u1ee9ng d\u1ee5ng YouTube"

    .line 2586
    .line 2587
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2588
    .line 2589
    .line 2590
    const-string p1, "C\u1eadp nh\u1eadt \u1ee9ng d\u1ee5ng YouTube"

    .line 2591
    .line 2592
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2593
    .line 2594
    .line 2595
    const-string p1, "\u1ee8ng d\u1ee5ng n\u00e0y s\u1ebd kh\u00f4ng ho\u1ea1t \u0111\u1ed9ng tr\u1eeb khi b\u1ea1n c\u1eadp nh\u1eadt \u1ee9ng d\u1ee5ng YouTube."

    .line 2596
    .line 2597
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2598
    .line 2599
    .line 2600
    const-string p1, "C\u1eadp nh\u1eadt \u1ee9ng d\u1ee5ng YouTube"

    .line 2601
    .line 2602
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2603
    .line 2604
    .line 2605
    return-void

    .line 2606
    :cond_2c
    const-string v0, "zh_CN"

    .line 2607
    .line 2608
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2609
    .line 2610
    .line 2611
    move-result v0

    .line 2612
    if-eqz v0, :cond_2d

    .line 2613
    .line 2614
    const-string p1, "\u521d\u59cb\u5316 YouTube \u64ad\u653e\u5668\u65f6\u51fa\u73b0\u9519\u8bef\u3002"

    .line 2615
    .line 2616
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2617
    .line 2618
    .line 2619
    const-string p1, "\u83b7\u53d6 YouTube \u5e94\u7528"

    .line 2620
    .line 2621
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2622
    .line 2623
    .line 2624
    const-string p1, "\u60a8\u7684\u8bbe\u5907\u4e2d\u6ca1\u6709 YouTube \u5e94\u7528\uff0c\u60a8\u5fc5\u987b\u5148\u5b89\u88c5 YouTube \u5e94\u7528\u624d\u80fd\u8fd0\u884c\u6b64\u5e94\u7528\u3002"

    .line 2625
    .line 2626
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2627
    .line 2628
    .line 2629
    const-string p1, "\u83b7\u53d6 YouTube \u5e94\u7528"

    .line 2630
    .line 2631
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2632
    .line 2633
    .line 2634
    const-string p1, "\u542f\u7528 YouTube \u5e94\u7528"

    .line 2635
    .line 2636
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2637
    .line 2638
    .line 2639
    const-string p1, "\u60a8\u9700\u8981\u542f\u7528 YouTube \u5e94\u7528\u624d\u80fd\u8fd0\u884c\u8be5\u5e94\u7528\u3002"

    .line 2640
    .line 2641
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2642
    .line 2643
    .line 2644
    const-string p1, "\u542f\u7528 YouTube \u5e94\u7528"

    .line 2645
    .line 2646
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2647
    .line 2648
    .line 2649
    const-string p1, "\u66f4\u65b0 YouTube \u5e94\u7528"

    .line 2650
    .line 2651
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2652
    .line 2653
    .line 2654
    const-string p1, "\u60a8\u5fc5\u987b\u66f4\u65b0 YouTube \u5e94\u7528\u624d\u80fd\u8fd0\u884c\u6b64\u5e94\u7528\u3002"

    .line 2655
    .line 2656
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2657
    .line 2658
    .line 2659
    const-string p1, "\u66f4\u65b0 YouTube \u5e94\u7528"

    .line 2660
    .line 2661
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2662
    .line 2663
    .line 2664
    return-void

    .line 2665
    :cond_2d
    const-string v0, "zh_TW"

    .line 2666
    .line 2667
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2668
    .line 2669
    .line 2670
    move-result v0

    .line 2671
    if-eqz v0, :cond_2e

    .line 2672
    .line 2673
    const-string p1, "\u521d\u59cb\u5316 YouTube \u64ad\u653e\u5668\u6642\u767c\u751f\u932f\u8aa4\u3002"

    .line 2674
    .line 2675
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2676
    .line 2677
    .line 2678
    const-string p1, "\u53d6\u5f97 YouTube \u61c9\u7528\u7a0b\u5f0f"

    .line 2679
    .line 2680
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2681
    .line 2682
    .line 2683
    const-string p1, "\u60a8\u5fc5\u9808\u555f\u7528 YouTube \u61c9\u7528\u7a0b\u5f0f\uff0c\u9019\u500b\u61c9\u7528\u7a0b\u5f0f\u624d\u80fd\u904b\u4f5c\uff0c\u4f46\u7cfb\u7d71\u5728\u88dd\u7f6e\u4e2d\u627e\u4e0d\u5230 YouTube \u61c9\u7528\u7a0b\u5f0f\u3002"

    .line 2684
    .line 2685
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2686
    .line 2687
    .line 2688
    const-string p1, "\u53d6\u5f97 YouTube \u61c9\u7528\u7a0b\u5f0f"

    .line 2689
    .line 2690
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2691
    .line 2692
    .line 2693
    const-string p1, "\u555f\u7528 YouTube \u61c9\u7528\u7a0b\u5f0f"

    .line 2694
    .line 2695
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2696
    .line 2697
    .line 2698
    const-string p1, "\u60a8\u5fc5\u9808\u555f\u7528 YouTube \u61c9\u7528\u7a0b\u5f0f\uff0c\u9019\u500b\u61c9\u7528\u7a0b\u5f0f\u624d\u80fd\u904b\u4f5c\u3002"

    .line 2699
    .line 2700
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2701
    .line 2702
    .line 2703
    const-string p1, "\u555f\u7528 YouTube \u61c9\u7528\u7a0b\u5f0f"

    .line 2704
    .line 2705
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2706
    .line 2707
    .line 2708
    const-string p1, "\u66f4\u65b0 YouTube \u61c9\u7528\u7a0b\u5f0f"

    .line 2709
    .line 2710
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2711
    .line 2712
    .line 2713
    const-string p1, "\u60a8\u5fc5\u9808\u66f4\u65b0 YouTube \u61c9\u7528\u7a0b\u5f0f\uff0c\u9019\u500b\u61c9\u7528\u7a0b\u5f0f\u624d\u80fd\u904b\u4f5c\u3002"

    .line 2714
    .line 2715
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2716
    .line 2717
    .line 2718
    const-string p1, "\u66f4\u65b0 YouTube \u61c9\u7528\u7a0b\u5f0f"

    .line 2719
    .line 2720
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2721
    .line 2722
    .line 2723
    return-void

    .line 2724
    :cond_2e
    const-string v0, "zu"

    .line 2725
    .line 2726
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2727
    .line 2728
    .line 2729
    move-result p1

    .line 2730
    if-eqz p1, :cond_2f

    .line 2731
    .line 2732
    const-string p1, "Kuvele iphutha ngenkathi kuqaliswa isidlali se-YouTube"

    .line 2733
    .line 2734
    invoke-virtual {p0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2735
    .line 2736
    .line 2737
    const-string p1, "Thola uhlelo lokusebenza lwe-YouTube"

    .line 2738
    .line 2739
    invoke-virtual {p0, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2740
    .line 2741
    .line 2742
    const-string p1, "Lolu hlelo kusebenza angeke lusebenze ngaphandle kohlelo lokusebenza lwe-YouTube, olungekho kudivayisi yakho"

    .line 2743
    .line 2744
    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2745
    .line 2746
    .line 2747
    const-string p1, "Thola uhelo lokusebenza lwe-YouTube"

    .line 2748
    .line 2749
    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2750
    .line 2751
    .line 2752
    const-string p1, "Nika amandla uhlelo lokusebenza lwe-YouTube"

    .line 2753
    .line 2754
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2755
    .line 2756
    .line 2757
    const-string p1, "Lolu hlelo lokusebenza angeke lusebenze uma unganikanga amandla uhlelo lokusebenza lwe-YouTube."

    .line 2758
    .line 2759
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2760
    .line 2761
    .line 2762
    const-string p1, "Nika amandla uhlelo lokusebenza lwe-YouTube"

    .line 2763
    .line 2764
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2765
    .line 2766
    .line 2767
    const-string p1, "Buyekeza uhlelo lokusebenza lwe-YouTube"

    .line 2768
    .line 2769
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2770
    .line 2771
    .line 2772
    const-string p1, "Lolu hlelo lokusebenza angeke lusebenze uma ungabuyekezanga uhlelo lokusebenza lwe-YouTube."

    .line 2773
    .line 2774
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2775
    .line 2776
    .line 2777
    const-string p1, "Buyekeza uhlelo lokusebenza lwe-YouTube"

    .line 2778
    .line 2779
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2780
    .line 2781
    .line 2782
    :cond_2f
    return-void
.end method
