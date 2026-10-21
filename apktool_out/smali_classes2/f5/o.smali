.class public final synthetic Lf5/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/tv/MyImportActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/tv/MyImportActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lf5/o;->b:I

    iput-object p1, p0, Lf5/o;->e:Lflix/com/vision/tv/MyImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Lf5/o;->e:Lflix/com/vision/tv/MyImportActivity;

    .line 3
    .line 4
    iget v1, p0, Lf5/o;->b:I

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget p1, Lflix/com/vision/tv/MyImportActivity;->n:I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance p1, Landroid/content/Intent;

    .line 15
    .line 16
    const-class v1, Lflix/com/vision/tv/M3UImportActivity;

    .line 17
    .line 18
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    sget p1, Lflix/com/vision/tv/MyImportActivity;->n:I

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 31
    .line 32
    :try_start_0
    invoke-static {v0, p1}, LA/h;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, -0x1

    .line 37
    if-ne v1, v2, :cond_0

    .line 38
    .line 39
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 40
    .line 41
    filled-new-array {v1, p1}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/16 v1, 0x3e8

    .line 46
    .line 47
    invoke-static {v0, p1, v1}, Lz/d;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 56
    .line 57
    const-class v1, Lflix/com/vision/activities/ModernFilePickerActivity;

    .line 58
    .line 59
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .line 61
    .line 62
    const/16 v1, 0x3039

    .line 63
    .line 64
    invoke-virtual {v0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void

    .line 68
    :pswitch_1
    sget v1, Lflix/com/vision/tv/MyImportActivity;->n:I

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v0, p1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const-string v3, "M3U Import"

    .line 79
    .line 80
    invoke-virtual {v2, v3}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v3, "How do you want to import your M3U Playlist?"

    .line 84
    .line 85
    invoke-virtual {v2, v3}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance v3, Lf5/o;

    .line 89
    .line 90
    invoke-direct {v3, v0, p1}, Lf5/o;-><init>(Lflix/com/vision/tv/MyImportActivity;I)V

    .line 91
    .line 92
    .line 93
    const-string p1, "From File"

    .line 94
    .line 95
    invoke-virtual {v2, p1, v3}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    new-instance p1, Lf5/o;

    .line 99
    .line 100
    const/4 v3, 0x2

    .line 101
    invoke-direct {p1, v0, v3}, Lf5/o;-><init>(Lflix/com/vision/tv/MyImportActivity;I)V

    .line 102
    .line 103
    .line 104
    const-string v0, "From URL"

    .line 105
    .line 106
    invoke-virtual {v2, v0, p1}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    :try_start_1
    const-string p1, ""

    .line 110
    .line 111
    invoke-virtual {v2, v1, p1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :catch_1
    move-exception p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    .line 118
    .line 119
    :goto_1
    return-void

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
