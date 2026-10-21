.class public final Ly4/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lflix/com/vision/materialsearchview/MaterialSearchView$OnQueryTextListener;


# instance fields
.field public final synthetic a:Lflix/com/vision/activities/MainActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly4/h0;->a:Lflix/com/vision/activities/MainActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-le v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Ly4/h0;->a:Lflix/com/vision/activities/MainActivity;

    .line 9
    .line 10
    iget-object v2, v0, Lflix/com/vision/activities/MainActivity;->O:Lio/reactivex/disposables/Disposable;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2, p1}, LD4/a;->getSuggest(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v2, Ly4/e0;

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    invoke-direct {v2, v0, v3}, Ly4/e0;-><init>(Lflix/com/vision/activities/MainActivity;I)V

    .line 45
    .line 46
    .line 47
    new-instance v3, Lx4/d;

    .line 48
    .line 49
    const/16 v4, 0xb

    .line 50
    .line 51
    invoke-direct {v3, v4}, Lx4/d;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, v0, Lflix/com/vision/activities/MainActivity;->O:Lio/reactivex/disposables/Disposable;

    .line 59
    .line 60
    :cond_1
    return v1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Ly4/h0;->a:Lflix/com/vision/activities/MainActivity;

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-lt v2, v0, :cond_1

    .line 11
    .line 12
    new-instance v2, Landroid/content/Intent;

    .line 13
    .line 14
    const-class v3, Lflix/com/vision/activities/SearchResultsActivity;

    .line 15
    .line 16
    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    const-string v3, "query"

    .line 20
    .line 21
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iget-object v3, v3, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 29
    .line 30
    const-string v4, "content_type"

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-ne v3, v0, :cond_0

    .line 38
    .line 39
    move v5, v0

    .line 40
    :cond_0
    const-string v3, "tv_shows_only"

    .line 41
    .line 42
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v1, Lflix/com/vision/activities/MainActivity;->z:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 49
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    invoke-virtual {v1, p1, v2, v3}, Lflix/com/vision/materialsearchview/MaterialSearchView;->saveQueryToDb(Ljava/lang/String;J)V

    .line 55
    .line 56
    .line 57
    return v0

    .line 58
    :cond_1
    iget-object p1, v1, Lflix/com/vision/activities/MainActivity;->z:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 59
    .line 60
    invoke-virtual {p1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->activityResumed()V

    .line 61
    .line 62
    .line 63
    iget-object p1, v1, Lflix/com/vision/activities/MainActivity;->z:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 64
    .line 65
    invoke-virtual {p1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->closeSearch()V

    .line 66
    .line 67
    .line 68
    iget-object p1, v1, Lflix/com/vision/activities/MainActivity;->z:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 69
    .line 70
    invoke-virtual {p1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->clearFocus()V

    .line 71
    .line 72
    .line 73
    return v0
.end method
