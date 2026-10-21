.class public final synthetic LA4/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/leanback/MainActivityLeanback;

.field public final synthetic f:LQ4/d;

.field public final synthetic j:Lflix/com/vision/models/Movie;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;LQ4/d;Lflix/com/vision/models/Movie;I)V
    .locals 0

    .line 1
    iput p4, p0, LA4/l;->b:I

    iput-object p1, p0, LA4/l;->e:Lflix/com/vision/activities/leanback/MainActivityLeanback;

    iput-object p2, p0, LA4/l;->f:LQ4/d;

    iput-object p3, p0, LA4/l;->j:Lflix/com/vision/models/Movie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, LA4/l;->j:Lflix/com/vision/models/Movie;

    .line 3
    .line 4
    iget-object v1, p0, LA4/l;->f:LQ4/d;

    .line 5
    .line 6
    iget-object v2, p0, LA4/l;->e:Lflix/com/vision/activities/leanback/MainActivityLeanback;

    .line 7
    .line 8
    iget v3, p0, LA4/l;->b:I

    .line 9
    .line 10
    packed-switch v3, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    sget p1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->I:I

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
    invoke-virtual {v2, v0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->i(Lflix/com/vision/models/Movie;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :pswitch_0
    sget v3, Lflix/com/vision/activities/leanback/MainActivityLeanback;->I:I

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    .line 30
    .line 31
    .line 32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/16 v3, 0x1d

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    if-ge v1, v3, :cond_1

    .line 38
    .line 39
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 40
    .line 41
    invoke-static {v2, v3}, LA/h;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const/4 v6, -0x1

    .line 46
    if-ne v5, v6, :cond_1

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    sget v0, Lflix/com/vision/R$string;->please_grant_permissions_label:I

    .line 53
    .line 54
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 63
    .line 64
    .line 65
    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 66
    .line 67
    filled-new-array {p1, v3}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const/16 v0, 0x3e8

    .line 72
    .line 73
    invoke-static {v2, p1, v0}, Lz/d;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :cond_1
    const/16 v3, 0x1a

    .line 79
    .line 80
    const-string v5, ""

    .line 81
    .line 82
    if-lt v1, v3, :cond_2

    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v1}, Lb4/h;->A(Landroid/content/pm/PackageManager;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_2

    .line 93
    .line 94
    invoke-static {v2, v4}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const-string v1, "Grant install Permission"

    .line 99
    .line 100
    invoke-virtual {v0, v1}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v1, "Please grant the Permission to install the Update"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance v1, LA4/o;

    .line 109
    .line 110
    invoke-direct {v1, v0, p1}, LA4/o;-><init>(LQ4/d;I)V

    .line 111
    .line 112
    .line 113
    const-string p1, "Cancel"

    .line 114
    .line 115
    invoke-virtual {v0, p1, v1}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    .line 118
    new-instance p1, LA4/j;

    .line 119
    .line 120
    const/4 v1, 0x5

    .line 121
    invoke-direct {p1, v2, v1}, LA4/j;-><init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;I)V

    .line 122
    .line 123
    .line 124
    const-string v1, "OK"

    .line 125
    .line 126
    invoke-virtual {v0, v1, p1}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {v0, p1, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_2
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 142
    .line 143
    sget-object v3, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 144
    .line 145
    const-string v3, "update_url"

    .line 146
    .line 147
    const/4 v6, 0x0

    .line 148
    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    if-eqz v1, :cond_4

    .line 153
    .line 154
    sget-boolean v3, Lflix/com/vision/App;->I:Z

    .line 155
    .line 156
    if-eqz v3, :cond_3

    .line 157
    .line 158
    const-string v3, ", Or use the Downloader Code: 108545"

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_3
    move-object v3, v5

    .line 162
    :goto_0
    invoke-static {v2, v4}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    const-string v6, "Please use the official version from https://linktr.ee/flixvision"

    .line 167
    .line 168
    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v4, v3}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const-string v3, "Update Ready"

    .line 176
    .line 177
    invoke-virtual {v4, v3}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    new-instance v3, LA4/l;

    .line 181
    .line 182
    const/4 v6, 0x2

    .line 183
    invoke-direct {v3, v2, v4, v0, v6}, LA4/l;-><init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;LQ4/d;Lflix/com/vision/models/Movie;I)V

    .line 184
    .line 185
    .line 186
    const-string v0, "CANCEL"

    .line 187
    .line 188
    invoke-virtual {v4, v0, v3}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 189
    .line 190
    .line 191
    new-instance v0, LA4/p;

    .line 192
    .line 193
    invoke-direct {v0, v2, v4, v1, p1}, LA4/p;-><init>(Landroidx/fragment/app/H;LQ4/d;Ljava/lang/Object;I)V

    .line 194
    .line 195
    .line 196
    const-string p1, "DOWNLOAD UPDATE"

    .line 197
    .line 198
    invoke-virtual {v4, p1, v0}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {v4, p1, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    :cond_4
    :goto_1
    return-void

    .line 209
    :pswitch_1
    sget p1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->I:I

    .line 210
    .line 211
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    .line 215
    .line 216
    .line 217
    if-eqz v0, :cond_5

    .line 218
    .line 219
    invoke-virtual {v2, v0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->i(Lflix/com/vision/models/Movie;)V

    .line 220
    .line 221
    .line 222
    :cond_5
    return-void

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
