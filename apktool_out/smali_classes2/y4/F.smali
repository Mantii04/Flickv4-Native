.class public final Ly4/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lflix/com/vision/materialsearchview/MaterialSearchView$OnQueryTextListener;


# instance fields
.field public final synthetic a:Lflix/com/vision/activities/DramaSearchActivityMobile;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/DramaSearchActivityMobile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly4/F;->a:Lflix/com/vision/activities/DramaSearchActivityMobile;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Ly4/F;->a:Lflix/com/vision/activities/DramaSearchActivityMobile;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v1, v0}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iput-object v3, v1, Lflix/com/vision/activities/DramaSearchActivityMobile;->s:LQ4/d;

    .line 22
    .line 23
    invoke-virtual {v3}, LQ4/d;->setloading()V

    .line 24
    .line 25
    .line 26
    :try_start_0
    iget-object v3, v1, Lflix/com/vision/activities/DramaSearchActivityMobile;->s:LQ4/d;

    .line 27
    .line 28
    const-string v4, ""

    .line 29
    .line 30
    invoke-virtual {v3, v2, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v2

    .line 35
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {v1}, Le/v;->getSupportActionBar()Le/b;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v4, "Results for \""

    .line 45
    .line 46
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v4, "\""

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v2, v3}, Le/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, v1, Lflix/com/vision/activities/DramaSearchActivityMobile;->j:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 67
    .line 68
    .line 69
    iget-object v2, v1, Lflix/com/vision/activities/DramaSearchActivityMobile;->n:LC4/z;

    .line 70
    .line 71
    invoke-virtual {v2}, Lm1/V;->notifyDataSetChanged()V

    .line 72
    .line 73
    .line 74
    new-instance v2, Ly4/E;

    .line 75
    .line 76
    invoke-direct {v2, v1, p1}, Ly4/E;-><init>(Lflix/com/vision/activities/DramaSearchActivityMobile;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 80
    .line 81
    new-array v1, v0, [Ljava/lang/Void;

    .line 82
    .line 83
    invoke-virtual {v2, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    .line 85
    .line 86
    :cond_0
    return v0
.end method
