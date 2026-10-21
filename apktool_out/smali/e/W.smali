.class public final Le/W;
.super Le/V;
.source "SourceFile"


# instance fields
.field public final c:Le/s0;

.field public final synthetic d:Le/a0;


# direct methods
.method public constructor <init>(Le/a0;Le/s0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/W;->d:Le/a0;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Le/V;-><init>(Le/a0;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Le/W;->c:Le/s0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()Landroid/content/IntentFilter;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.intent.action.TIME_SET"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "android.intent.action.TIME_TICK"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public getApplyableNightMode()I
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Le/W;->c:Le/s0;

    .line 4
    .line 5
    iget-object v2, v0, Le/s0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Le/r0;

    .line 8
    .line 9
    iget-wide v3, v2, Le/r0;->b:J

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v5

    .line 15
    cmp-long v3, v3, v5

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    if-lez v3, :cond_0

    .line 19
    .line 20
    iget-boolean v0, v2, Le/r0;->a:Z

    .line 21
    .line 22
    goto/16 :goto_8

    .line 23
    .line 24
    :cond_0
    iget-object v3, v0, Le/s0;->a:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Landroid/content/Context;

    .line 27
    .line 28
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    .line 29
    .line 30
    invoke-static {v3, v5}, LA/n;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    const-string v6, "Failed to get last known location"

    .line 35
    .line 36
    const-string v7, "TwilightManager"

    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    iget-object v0, v0, Le/s0;->b:Ljava/lang/Object;

    .line 40
    .line 41
    move-object v9, v0

    .line 42
    check-cast v9, Landroid/location/LocationManager;

    .line 43
    .line 44
    if-nez v5, :cond_2

    .line 45
    .line 46
    const-string v0, "network"

    .line 47
    .line 48
    :try_start_0
    invoke-virtual {v9, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_1

    .line 53
    .line 54
    invoke-virtual {v9, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 55
    .line 56
    .line 57
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-static {v7, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .line 62
    .line 63
    :cond_1
    move-object v0, v8

    .line 64
    :goto_0
    move-object v5, v0

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move-object v5, v8

    .line 67
    :goto_1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 68
    .line 69
    invoke-static {v3, v0}, LA/n;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    const-string v0, "gps"

    .line 76
    .line 77
    :try_start_1
    invoke-virtual {v9, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    invoke-virtual {v9, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 84
    .line 85
    .line 86
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    goto :goto_2

    .line 88
    :catch_1
    move-exception v0

    .line 89
    invoke-static {v7, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_2
    if-eqz v8, :cond_4

    .line 93
    .line 94
    if-eqz v5, :cond_4

    .line 95
    .line 96
    invoke-virtual {v8}, Landroid/location/Location;->getTime()J

    .line 97
    .line 98
    .line 99
    move-result-wide v9

    .line 100
    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    .line 101
    .line 102
    .line 103
    move-result-wide v11

    .line 104
    cmp-long v0, v9, v11

    .line 105
    .line 106
    if-lez v0, :cond_5

    .line 107
    .line 108
    :goto_3
    move-object v5, v8

    .line 109
    goto :goto_4

    .line 110
    :cond_4
    if-eqz v8, :cond_5

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_5
    :goto_4
    const/4 v0, 0x0

    .line 114
    if-eqz v5, :cond_c

    .line 115
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 117
    .line 118
    .line 119
    move-result-wide v9

    .line 120
    sget-object v3, Le/q0;->d:Le/q0;

    .line 121
    .line 122
    if-nez v3, :cond_6

    .line 123
    .line 124
    new-instance v3, Le/q0;

    .line 125
    .line 126
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 127
    .line 128
    .line 129
    sput-object v3, Le/q0;->d:Le/q0;

    .line 130
    .line 131
    :cond_6
    sget-object v11, Le/q0;->d:Le/q0;

    .line 132
    .line 133
    const-wide/32 v6, 0x5265c00

    .line 134
    .line 135
    .line 136
    sub-long v12, v9, v6

    .line 137
    .line 138
    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    .line 139
    .line 140
    .line 141
    move-result-wide v14

    .line 142
    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    .line 143
    .line 144
    .line 145
    move-result-wide v16

    .line 146
    invoke-virtual/range {v11 .. v17}, Le/q0;->calculateTwilight(JDD)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    .line 150
    .line 151
    .line 152
    move-result-wide v12

    .line 153
    move-object v8, v11

    .line 154
    move-wide v11, v12

    .line 155
    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    .line 156
    .line 157
    .line 158
    move-result-wide v13

    .line 159
    invoke-virtual/range {v8 .. v14}, Le/q0;->calculateTwilight(JDD)V

    .line 160
    .line 161
    .line 162
    move-object v11, v8

    .line 163
    iget v3, v11, Le/q0;->c:I

    .line 164
    .line 165
    if-ne v3, v4, :cond_7

    .line 166
    .line 167
    move v0, v4

    .line 168
    :cond_7
    iget-wide v12, v11, Le/q0;->b:J

    .line 169
    .line 170
    iget-wide v14, v11, Le/q0;->a:J

    .line 171
    .line 172
    add-long/2addr v6, v9

    .line 173
    move-wide/from16 v16, v14

    .line 174
    .line 175
    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    .line 176
    .line 177
    .line 178
    move-result-wide v14

    .line 179
    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    .line 180
    .line 181
    .line 182
    move-result-wide v18

    .line 183
    move-wide/from16 v20, v12

    .line 184
    .line 185
    move-wide v12, v6

    .line 186
    move-wide/from16 v5, v20

    .line 187
    .line 188
    move-wide/from16 v7, v16

    .line 189
    .line 190
    move-wide/from16 v16, v18

    .line 191
    .line 192
    invoke-virtual/range {v11 .. v17}, Le/q0;->calculateTwilight(JDD)V

    .line 193
    .line 194
    .line 195
    iget-wide v12, v11, Le/q0;->b:J

    .line 196
    .line 197
    const-wide/16 v14, -0x1

    .line 198
    .line 199
    cmp-long v3, v5, v14

    .line 200
    .line 201
    if-eqz v3, :cond_b

    .line 202
    .line 203
    cmp-long v3, v7, v14

    .line 204
    .line 205
    if-nez v3, :cond_8

    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_8
    cmp-long v3, v9, v7

    .line 209
    .line 210
    if-lez v3, :cond_9

    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_9
    cmp-long v3, v9, v5

    .line 214
    .line 215
    if-lez v3, :cond_a

    .line 216
    .line 217
    move-wide v12, v7

    .line 218
    goto :goto_5

    .line 219
    :cond_a
    move-wide v12, v5

    .line 220
    :goto_5
    const-wide/32 v5, 0xea60

    .line 221
    .line 222
    .line 223
    add-long/2addr v12, v5

    .line 224
    goto :goto_7

    .line 225
    :cond_b
    :goto_6
    const-wide/32 v5, 0x2932e00

    .line 226
    .line 227
    .line 228
    add-long v12, v9, v5

    .line 229
    .line 230
    :goto_7
    iput-boolean v0, v2, Le/r0;->a:Z

    .line 231
    .line 232
    iput-wide v12, v2, Le/r0;->b:J

    .line 233
    .line 234
    goto :goto_8

    .line 235
    :cond_c
    const-string v2, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    .line 236
    .line 237
    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    const/16 v3, 0xb

    .line 245
    .line 246
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    const/4 v3, 0x6

    .line 251
    if-lt v2, v3, :cond_d

    .line 252
    .line 253
    const/16 v3, 0x16

    .line 254
    .line 255
    if-lt v2, v3, :cond_e

    .line 256
    .line 257
    :cond_d
    move v0, v4

    .line 258
    :cond_e
    :goto_8
    if-eqz v0, :cond_f

    .line 259
    .line 260
    const/4 v0, 0x2

    .line 261
    return v0

    .line 262
    :cond_f
    return v4
.end method

.method public onChange()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/W;->d:Le/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Le/a0;->applyDayNight()Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
