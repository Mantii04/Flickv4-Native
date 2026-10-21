.class public final synthetic Ly4/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Le/v;


# direct methods
.method public synthetic constructor <init>(Le/v;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/K;->b:I

    iput-object p1, p0, Ly4/K;->e:Le/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Ly4/K;->e:Le/v;

    .line 2
    .line 3
    iget v1, p0, Ly4/K;->b:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p2, Lflix/com/vision/activities/TraktTvConfigActivity;->z:I

    .line 9
    .line 10
    check-cast v0, Lflix/com/vision/activities/TraktTvConfigActivity;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iget-object p2, p2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const-string v1, "trakt_user_logged_in"

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 36
    .line 37
    .line 38
    new-instance p1, Landroid/os/Handler;

    .line 39
    .line 40
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance p2, LB4/g;

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    invoke-direct {p2, v1}, LB4/g;-><init>(I)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v1, 0x1f4

    .line 50
    .line 51
    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    sget p2, Lflix/com/vision/R$string;->you_successfully_signed_out_mess:I

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_0
    sget v1, Lflix/com/vision/activities/FavoritesAcvivity;->u:I

    .line 73
    .line 74
    check-cast v0, Lflix/com/vision/activities/FavoritesAcvivity;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 80
    .line 81
    .line 82
    :try_start_0
    iget-object p1, v0, Lflix/com/vision/activities/FavoritesAcvivity;->m:Landroid/widget/TextView;

    .line 83
    .line 84
    iget-object v1, v0, Lflix/com/vision/activities/FavoritesAcvivity;->f:[Ljava/lang/String;

    .line 85
    .line 86
    aget-object v1, v1, p2

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    iput p2, v0, Lflix/com/vision/activities/FavoritesAcvivity;->b:I

    .line 92
    .line 93
    invoke-virtual {v0}, Lflix/com/vision/activities/FavoritesAcvivity;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    :catch_0
    return-void

    .line 97
    :pswitch_1
    sget v1, Lflix/com/vision/activities/FavoritesAcvivity;->u:I

    .line 98
    .line 99
    check-cast v0, Lflix/com/vision/activities/FavoritesAcvivity;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 105
    .line 106
    .line 107
    :try_start_1
    iget-object p1, v0, Lflix/com/vision/activities/FavoritesAcvivity;->n:Landroid/widget/TextView;

    .line 108
    .line 109
    iget-object v1, v0, Lflix/com/vision/activities/FavoritesAcvivity;->j:[Ljava/lang/String;

    .line 110
    .line 111
    aget-object v1, v1, p2

    .line 112
    .line 113
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    iput p2, v0, Lflix/com/vision/activities/FavoritesAcvivity;->e:I

    .line 117
    .line 118
    invoke-virtual {v0}, Lflix/com/vision/activities/FavoritesAcvivity;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    .line 120
    .line 121
    :catch_1
    return-void

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
