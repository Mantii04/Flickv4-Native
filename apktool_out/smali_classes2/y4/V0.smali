.class public final synthetic Ly4/V0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ly4/V0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget p1, p0, Ly4/V0;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget p1, Lflix/com/vision/activities/TraktTvConfigActivity;->z:I

    .line 7
    .line 8
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 13
    .line 14
    const-string v0, "sync_watched_list_on"

    .line 15
    .line 16
    invoke-static {p1, v0, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    sget p1, Lflix/com/vision/activities/TraktTvConfigActivity;->z:I

    .line 21
    .line 22
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 27
    .line 28
    const-string v0, "add_favorites_on_shows"

    .line 29
    .line 30
    invoke-static {p1, v0, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    sget p1, Lflix/com/vision/activities/TraktTvConfigActivity;->z:I

    .line 35
    .line 36
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 41
    .line 42
    const-string v0, "add_favorites_on"

    .line 43
    .line 44
    invoke-static {p1, v0, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_2
    sget p1, Lflix/com/vision/activities/TraktTvConfigActivity;->z:I

    .line 49
    .line 50
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 55
    .line 56
    const-string v0, "tumblr_on"

    .line 57
    .line 58
    invoke-static {p1, v0, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_3
    sget p1, Lflix/com/vision/activities/TraktTvConfigActivity;->z:I

    .line 63
    .line 64
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 69
    .line 70
    const-string v0, "facebook_on"

    .line 71
    .line 72
    invoke-static {p1, v0, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_4
    sget p1, Lflix/com/vision/activities/TraktTvConfigActivity;->z:I

    .line 77
    .line 78
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 83
    .line 84
    const-string v0, "twitter_on"

    .line 85
    .line 86
    invoke-static {p1, v0, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :pswitch_5
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 91
    .line 92
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 97
    .line 98
    const-string v0, "pref_auto_play_next_ep"

    .line 99
    .line 100
    invoke-static {p1, v0, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :pswitch_6
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 105
    .line 106
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 111
    .line 112
    const-string v0, "pref_show_debrid_links_only"

    .line 113
    .line 114
    invoke-static {p1, v0, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :pswitch_7
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 119
    .line 120
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 125
    .line 126
    const-string v0, "pref_classic_search"

    .line 127
    .line 128
    invoke-static {p1, v0, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :pswitch_8
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 133
    .line 134
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 139
    .line 140
    const-string v0, "pref_show_hindi_dubbed_direct"

    .line 141
    .line 142
    invoke-static {p1, v0, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :pswitch_9
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 147
    .line 148
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 153
    .line 154
    const-string v0, "pref_hide_unreleased"

    .line 155
    .line 156
    invoke-static {p1, v0, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :pswitch_a
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 161
    .line 162
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 167
    .line 168
    const-string v0, "pref_show_time"

    .line 169
    .line 170
    invoke-static {p1, v0, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :pswitch_b
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 175
    .line 176
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 181
    .line 182
    const-string v0, "pref_adult_zone_always_play_best"

    .line 183
    .line 184
    invoke-static {p1, v0, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :pswitch_c
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 189
    .line 190
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 195
    .line 196
    const-string v0, "pref_adult_zone_animate"

    .line 197
    .line 198
    invoke-static {p1, v0, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :pswitch_d
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 203
    .line 204
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 209
    .line 210
    const-string v0, "pref_show_adult_zone_hide_related"

    .line 211
    .line 212
    invoke-static {p1, v0, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :pswitch_e
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 217
    .line 218
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 223
    .line 224
    const-string v0, "pref_play_intro_sound"

    .line 225
    .line 226
    invoke-static {p1, v0, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :pswitch_f
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 231
    .line 232
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 237
    .line 238
    const-string v0, "pref_adult_zone_keep_history"

    .line 239
    .line 240
    invoke-static {p1, v0, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :pswitch_10
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 245
    .line 246
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 251
    .line 252
    const-string v0, "pref_sub_auto_dl"

    .line 253
    .line 254
    invoke-static {p1, v0, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :pswitch_11
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 259
    .line 260
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 265
    .line 266
    const-string v0, "pref_logo_as_loading_players"

    .line 267
    .line 268
    invoke-static {p1, v0, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 269
    .line 270
    .line 271
    return-void

    .line 272
    :pswitch_12
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 273
    .line 274
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 279
    .line 280
    const-string v0, "pref_adult_show_big_pictures"

    .line 281
    .line 282
    invoke-static {p1, v0, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 283
    .line 284
    .line 285
    return-void

    .line 286
    :pswitch_13
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 287
    .line 288
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 293
    .line 294
    const-string v0, "pref_hide_episodes"

    .line 295
    .line 296
    invoke-static {p1, v0, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    nop

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
