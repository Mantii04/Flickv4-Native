.class public final synthetic Ly4/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/TraktTvConfigActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/TraktTvConfigActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/s1;->b:I

    iput-object p1, p0, Ly4/s1;->e:Lflix/com/vision/activities/TraktTvConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    const/4 p1, 0x1

    .line 2
    const-string v0, "check_me_in"

    .line 3
    .line 4
    iget-object v1, p0, Ly4/s1;->e:Lflix/com/vision/activities/TraktTvConfigActivity;

    .line 5
    .line 6
    iget v2, p0, Ly4/s1;->b:I

    .line 7
    .line 8
    packed-switch v2, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget v2, Lflix/com/vision/activities/TraktTvConfigActivity;->z:I

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 21
    .line 22
    invoke-interface {v2, v0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, v1, Lflix/com/vision/activities/TraktTvConfigActivity;->t:Landroid/widget/CheckBox;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :pswitch_0
    sget v2, Lflix/com/vision/activities/TraktTvConfigActivity;->z:I

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 45
    .line 46
    invoke-interface {v2, v0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iget-object p1, v1, Lflix/com/vision/activities/TraktTvConfigActivity;->s:Landroid/widget/CheckBox;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 56
    .line 57
    .line 58
    :goto_1
    return-void

    .line 59
    :pswitch_1
    iget-object p1, v1, Lflix/com/vision/activities/TraktTvConfigActivity;->r:Landroid/widget/CheckBox;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_2
    iget-object p1, v1, Lflix/com/vision/activities/TraktTvConfigActivity;->w:Landroid/widget/CheckBox;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_3
    iget-object p1, v1, Lflix/com/vision/activities/TraktTvConfigActivity;->q:Landroid/widget/CheckBox;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_4
    iget-object p1, v1, Lflix/com/vision/activities/TraktTvConfigActivity;->v:Landroid/widget/CheckBox;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_5
    sget v2, Lflix/com/vision/activities/TraktTvConfigActivity;->z:I

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 93
    .line 94
    invoke-interface {v2, v0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_2

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    iget-object p1, v1, Lflix/com/vision/activities/TraktTvConfigActivity;->u:Landroid/widget/CheckBox;

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 104
    .line 105
    .line 106
    :goto_2
    return-void

    .line 107
    :pswitch_6
    sget p1, Lflix/com/vision/activities/TraktTvConfigActivity;->z:I

    .line 108
    .line 109
    new-instance p1, Le/r;

    .line 110
    .line 111
    invoke-direct {p1, v1}, Le/r;-><init>(Landroid/content/Context;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Le/r;->create()Le/s;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    sget v0, Lflix/com/vision/R$string;->trakt_tv_label:I

    .line 119
    .line 120
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p1, v0}, Le/s;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    sget v0, Lflix/com/vision/R$drawable;->trakt_logo_3:I

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Le/s;->setIcon(I)V

    .line 130
    .line 131
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    sget v2, Lflix/com/vision/R$string;->currently_signed_as_label:I

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v2, " "

    .line 147
    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 156
    .line 157
    const-string v3, "trakt_user_name"

    .line 158
    .line 159
    const-string v4, ""

    .line 160
    .line 161
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    sget v2, Lflix/com/vision/R$string;->do_you_want_sign_out_mess:I

    .line 169
    .line 170
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {p1, v0}, Le/s;->setMessage(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    sget v0, Lflix/com/vision/R$string;->yes_sign_out_label:I

    .line 185
    .line 186
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    new-instance v2, Ly4/K;

    .line 191
    .line 192
    const/4 v3, 0x2

    .line 193
    invoke-direct {v2, v1, v3}, Ly4/K;-><init>(Le/v;I)V

    .line 194
    .line 195
    .line 196
    const/4 v3, -0x1

    .line 197
    invoke-virtual {p1, v3, v0, v2}, Le/s;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 198
    .line 199
    .line 200
    sget v0, Lflix/com/vision/R$string;->cancel_label:I

    .line 201
    .line 202
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    new-instance v1, Ly4/Z;

    .line 207
    .line 208
    const/4 v2, 0x4

    .line 209
    invoke-direct {v1, v2}, Ly4/Z;-><init>(I)V

    .line 210
    .line 211
    .line 212
    const/4 v2, -0x2

    .line 213
    invoke-virtual {p1, v2, v0, v1}, Le/s;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 214
    .line 215
    .line 216
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :catch_0
    move-exception p1

    .line 221
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 222
    .line 223
    .line 224
    :goto_3
    return-void

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
