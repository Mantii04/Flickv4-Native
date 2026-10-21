.class public final synthetic Ly4/T0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lflix/com/vision/activities/SettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/SettingsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/T0;->a:I

    iput-object p1, p0, Ly4/T0;->b:Lflix/com/vision/activities/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Ly4/T0;->b:Lflix/com/vision/activities/SettingsActivity;

    .line 4
    .line 5
    iget v2, p0, Ly4/T0;->a:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v2, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "pref_show_adult_zone"

    .line 26
    .line 27
    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iget-object p2, p2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 39
    .line 40
    const-string v2, "pref_tv_layout"

    .line 41
    .line 42
    invoke-interface {p2, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_0

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const-string v0, "Please restart App to see the change"

    .line 53
    .line 54
    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void

    .line 62
    :pswitch_0
    sget v2, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 72
    .line 73
    const-string v3, "pref_show_hindi_dubbed"

    .line 74
    .line 75
    invoke-static {v2, v3, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 76
    .line 77
    .line 78
    if-nez p2, :cond_1

    .line 79
    .line 80
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    iget-object p2, p2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 85
    .line 86
    const-string v0, "hindi_include_english"

    .line 87
    .line 88
    invoke-static {p2, v0, p1}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {v1, v0}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    const-string v0, "Include English Links"

    .line 101
    .line 102
    invoke-virtual {p2, v0}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v0, "Do you want to get English links too or only Hindi links? This is only for Movies"

    .line 106
    .line 107
    invoke-virtual {p2, v0}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    new-instance v0, LA4/q;

    .line 111
    .line 112
    const/16 v1, 0x9

    .line 113
    .line 114
    invoke-direct {v0, v1}, LA4/q;-><init>(I)V

    .line 115
    .line 116
    .line 117
    const-string v1, "INCLUDE ENGLISH"

    .line 118
    .line 119
    invoke-virtual {p2, v1, v0}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 120
    .line 121
    .line 122
    new-instance v0, LA4/q;

    .line 123
    .line 124
    const/16 v1, 0xa

    .line 125
    .line 126
    invoke-direct {v0, v1}, LA4/q;-><init>(I)V

    .line 127
    .line 128
    .line 129
    const-string v1, "ONLY HINDI"

    .line 130
    .line 131
    invoke-virtual {p2, v1, v0}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 132
    .line 133
    .line 134
    :try_start_0
    const-string v0, ""

    .line 135
    .line 136
    invoke-virtual {p2, p1, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :catch_0
    move-exception p1

    .line 141
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    .line 143
    .line 144
    :goto_0
    return-void

    .line 145
    :pswitch_1
    sget v0, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 155
    .line 156
    const-string v2, "pref_hide_continue"

    .line 157
    .line 158
    invoke-static {v0, v2, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 159
    .line 160
    .line 161
    iput-boolean p1, v1, Lflix/com/vision/activities/SettingsActivity;->v:Z

    .line 162
    .line 163
    return-void

    .line 164
    :pswitch_2
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 174
    .line 175
    const-string v2, "pref_hd_posters"

    .line 176
    .line 177
    invoke-static {p1, v2, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 178
    .line 179
    .line 180
    sput-boolean p2, Lflix/com/vision/App;->G:Z

    .line 181
    .line 182
    const-string p1, "Please Restart to see the Change"

    .line 183
    .line 184
    invoke-static {v1, p1, v0}, Lh5/i;->makeToastLong(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :pswitch_3
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 198
    .line 199
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    const-string v0, "pref_proxy_consent"

    .line 204
    .line 205
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 210
    .line 211
    .line 212
    invoke-static {v1}, Lio/hopmonsdk/Hopmn;->getInstance(Landroid/content/Context;)Lio/hopmonsdk/Hopmn;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    if-nez p1, :cond_2

    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_2
    invoke-virtual {p1, p2}, Lio/hopmonsdk/Hopmn;->setConsent(Z)V

    .line 220
    .line 221
    .line 222
    :goto_1
    return-void

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
