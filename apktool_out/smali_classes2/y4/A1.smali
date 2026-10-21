.class public final synthetic Ly4/A1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/WatchedAcvivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/WatchedAcvivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/A1;->b:I

    iput-object p1, p0, Ly4/A1;->e:Lflix/com/vision/activities/WatchedAcvivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Ly4/A1;->e:Lflix/com/vision/activities/WatchedAcvivity;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget v1, p0, Ly4/A1;->b:I

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget v1, Lflix/com/vision/activities/WatchedAcvivity;->n:I

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 19
    .line 20
    invoke-virtual {v1}, LP4/e;->clearHistory()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "History cleared"

    .line 31
    .line 32
    invoke-static {v1, v2, v0}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v1, "An error occurred"

    .line 44
    .line 45
    invoke-static {p1, v1, v0}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v1, p1, Lflix/com/vision/activities/WatchedAcvivity;->j:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    const-string v0, "Your History is Empty"

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-static {p1, v0, v1}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {p1, v0}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const-string v3, "Clear Watched History"

    .line 73
    .line 74
    invoke-virtual {v2, v3}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v3, "Do you really want to Clear your Watched History ?"

    .line 78
    .line 79
    invoke-virtual {v2, v3}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v3, LA4/q;

    .line 83
    .line 84
    const/16 v4, 0xb

    .line 85
    .line 86
    invoke-direct {v3, v4}, LA4/q;-><init>(I)V

    .line 87
    .line 88
    .line 89
    const-string v4, "CANCEL"

    .line 90
    .line 91
    invoke-virtual {v2, v4, v3}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 92
    .line 93
    .line 94
    new-instance v3, Ly4/A1;

    .line 95
    .line 96
    invoke-direct {v3, p1, v0}, Ly4/A1;-><init>(Lflix/com/vision/activities/WatchedAcvivity;I)V

    .line 97
    .line 98
    .line 99
    const-string p1, "YES"

    .line 100
    .line 101
    invoke-virtual {v2, p1, v3}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    :try_start_0
    const-string p1, ""

    .line 105
    .line 106
    invoke-virtual {v2, v1, p1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    .line 113
    .line 114
    :goto_1
    return-void

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
