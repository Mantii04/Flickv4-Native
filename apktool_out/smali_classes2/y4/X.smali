.class public final synthetic Ly4/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/MainActivity;

.field public final synthetic f:LQ4/d;

.field public final synthetic j:Lflix/com/vision/models/Movie;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/MainActivity;LQ4/d;Lflix/com/vision/models/Movie;I)V
    .locals 0

    .line 1
    iput p4, p0, Ly4/X;->b:I

    iput-object p1, p0, Ly4/X;->e:Lflix/com/vision/activities/MainActivity;

    iput-object p2, p0, Ly4/X;->f:LQ4/d;

    iput-object p3, p0, Ly4/X;->j:Lflix/com/vision/models/Movie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Ly4/X;->j:Lflix/com/vision/models/Movie;

    .line 3
    .line 4
    iget-object v1, p0, Ly4/X;->f:LQ4/d;

    .line 5
    .line 6
    iget-object v2, p0, Ly4/X;->e:Lflix/com/vision/activities/MainActivity;

    .line 7
    .line 8
    iget v3, p0, Ly4/X;->b:I

    .line 9
    .line 10
    packed-switch v3, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    sget p1, Lflix/com/vision/activities/MainActivity;->T:I

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    .line 19
    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Lflix/com/vision/activities/MainActivity;->openMovieintent(Lflix/com/vision/models/Movie;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :pswitch_0
    sget p1, Lflix/com/vision/activities/MainActivity;->T:I

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    .line 33
    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Lflix/com/vision/activities/MainActivity;->openMovieintent(Lflix/com/vision/models/Movie;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void

    .line 41
    :pswitch_1
    sget v3, Lflix/com/vision/activities/MainActivity;->T:I

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    .line 47
    .line 48
    .line 49
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 50
    .line 51
    const/16 v3, 0x1d

    .line 52
    .line 53
    if-ge v1, v3, :cond_2

    .line 54
    .line 55
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 56
    .line 57
    invoke-static {v2, v3}, LA/h;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    const/4 v5, -0x1

    .line 62
    if-ne v4, v5, :cond_2

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sget v1, Lflix/com/vision/R$string;->please_grant_permissions_label:I

    .line 69
    .line 70
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 79
    .line 80
    .line 81
    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 82
    .line 83
    filled-new-array {p1, v3}, [Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const/16 v0, 0x3e8

    .line 88
    .line 89
    invoke-static {v2, p1, v0}, Lz/d;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :cond_2
    const/16 v3, 0x1a

    .line 95
    .line 96
    const-string v4, ""

    .line 97
    .line 98
    if-lt v1, v3, :cond_3

    .line 99
    .line 100
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v1}, Lb4/h;->A(Landroid/content/pm/PackageManager;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_3

    .line 109
    .line 110
    invoke-static {v2, p1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const-string v0, "Grant install Permission"

    .line 115
    .line 116
    invoke-virtual {p1, v0}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v0, "Please grant the Permission to install the Update"

    .line 120
    .line 121
    invoke-virtual {p1, v0}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, LA4/o;

    .line 125
    .line 126
    const/16 v1, 0xb

    .line 127
    .line 128
    invoke-direct {v0, p1, v1}, LA4/o;-><init>(LQ4/d;I)V

    .line 129
    .line 130
    .line 131
    const-string v1, "Cancel"

    .line 132
    .line 133
    invoke-virtual {p1, v1, v0}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    new-instance v0, Ly4/d0;

    .line 137
    .line 138
    const/4 v1, 0x4

    .line 139
    invoke-direct {v0, v2, v1}, Ly4/d0;-><init>(Lflix/com/vision/activities/MainActivity;I)V

    .line 140
    .line 141
    .line 142
    const-string v1, "OK"

    .line 143
    .line 144
    invoke-virtual {p1, v1, v0}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {p1, v0, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_3
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 160
    .line 161
    sget-object v3, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 162
    .line 163
    const-string v3, "update_url"

    .line 164
    .line 165
    const/4 v5, 0x0

    .line 166
    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    if-eqz v1, :cond_5

    .line 171
    .line 172
    sget-boolean v3, Lflix/com/vision/App;->I:Z

    .line 173
    .line 174
    if-eqz v3, :cond_4

    .line 175
    .line 176
    const-string v3, ", Or use the Downloader Code: 108545"

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_4
    move-object v3, v4

    .line 180
    :goto_0
    invoke-static {v2, p1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    const-string v6, "Please use the official version from https://linktr.ee/flixvision"

    .line 185
    .line 186
    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v5, v3}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    const-string v3, "Update Ready"

    .line 194
    .line 195
    invoke-virtual {v5, v3}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    new-instance v3, Ly4/X;

    .line 199
    .line 200
    invoke-direct {v3, v2, v5, v0, p1}, Ly4/X;-><init>(Lflix/com/vision/activities/MainActivity;LQ4/d;Lflix/com/vision/models/Movie;I)V

    .line 201
    .line 202
    .line 203
    const-string p1, "CANCEL"

    .line 204
    .line 205
    invoke-virtual {v5, p1, v3}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 206
    .line 207
    .line 208
    new-instance p1, LA4/p;

    .line 209
    .line 210
    const/4 v0, 0x2

    .line 211
    invoke-direct {p1, v2, v5, v1, v0}, LA4/p;-><init>(Landroidx/fragment/app/H;LQ4/d;Ljava/lang/Object;I)V

    .line 212
    .line 213
    .line 214
    const-string v0, "DOWNLOAD UPDATE"

    .line 215
    .line 216
    invoke-virtual {v5, v0, p1}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {v5, p1, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :cond_5
    :goto_1
    return-void

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
