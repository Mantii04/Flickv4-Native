.class public final synthetic LA4/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:LQ4/d;

.field public final synthetic f:Landroidx/fragment/app/H;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/H;LQ4/d;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, LA4/p;->b:I

    iput-object p1, p0, LA4/p;->f:Landroidx/fragment/app/H;

    iput-object p2, p0, LA4/p;->e:LQ4/d;

    iput-object p3, p0, LA4/p;->j:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, LA4/p;->j:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v0, p0, LA4/p;->e:LQ4/d;

    .line 4
    .line 5
    iget-object v1, p0, LA4/p;->f:Landroidx/fragment/app/H;

    .line 6
    .line 7
    iget v2, p0, LA4/p;->b:I

    .line 8
    .line 9
    packed-switch v2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget v2, Lflix/com/vision/activities/SearchActivityTV;->I:I

    .line 13
    .line 14
    check-cast v1, Lflix/com/vision/activities/SearchActivityTV;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 20
    .line 21
    .line 22
    check-cast p1, Lflix/com/vision/models/Movie;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lflix/com/vision/activities/SearchActivityTV;->openMovieintent(Lflix/com/vision/models/Movie;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :pswitch_0
    sget v2, Lflix/com/vision/activities/MainActivity;->T:I

    .line 31
    .line 32
    check-cast v1, Lflix/com/vision/activities/MainActivity;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 38
    .line 39
    .line 40
    new-instance v0, LT4/r;

    .line 41
    .line 42
    invoke-direct {v0, v1}, LT4/r;-><init>(Landroid/app/Activity;)V

    .line 43
    .line 44
    .line 45
    check-cast p1, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, LT4/r;->startDownload(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_1
    check-cast p1, Landroid/app/FragmentManager;

    .line 52
    .line 53
    sget v2, Lflix/com/vision/activities/MainActivity;->T:I

    .line 54
    .line 55
    check-cast v1, Lflix/com/vision/activities/MainActivity;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 61
    .line 62
    .line 63
    new-instance v2, Landroid/content/Intent;

    .line 64
    .line 65
    const-string v3, "android.intent.action.SENDTO"

    .line 66
    .line 67
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v3, "mailto:"

    .line 71
    .line 72
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    const-string v3, "android.intent.extra.EMAIL"

    .line 80
    .line 81
    const-string v4, "info@flixvision.tv"

    .line 82
    .line 83
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    const-string v3, "android.intent.extra.SUBJECT"

    .line 87
    .line 88
    const-string v4, "Flix Vision App"

    .line 89
    .line 90
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-eqz v3, :cond_1

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    :try_start_0
    const-string v1, ""

    .line 107
    .line 108
    invoke-virtual {v0, p1, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :catch_0
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    .line 115
    .line 116
    :goto_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 121
    .line 122
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    sget-object v0, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 127
    .line 128
    const-string v0, "discord_check"

    .line 129
    .line 130
    const/4 v1, 0x1

    .line 131
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :pswitch_2
    sget v2, Lflix/com/vision/activities/leanback/MainActivityLeanback;->I:I

    .line 140
    .line 141
    check-cast v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;

    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 147
    .line 148
    .line 149
    new-instance v0, LT4/r;

    .line 150
    .line 151
    invoke-direct {v0, v1}, LT4/r;-><init>(Landroid/app/Activity;)V

    .line 152
    .line 153
    .line 154
    check-cast p1, Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v0, p1}, LT4/r;->startDownload(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    nop

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
