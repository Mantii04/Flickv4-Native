.class public final synthetic LW4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:LW4/b;

.field public final synthetic f:Lflix/com/vision/models/Movie;


# direct methods
.method public synthetic constructor <init>(LW4/b;Lflix/com/vision/models/Movie;I)V
    .locals 0

    .line 1
    iput p3, p0, LW4/a;->b:I

    iput-object p1, p0, LW4/a;->e:LW4/b;

    iput-object p2, p0, LW4/a;->f:Lflix/com/vision/models/Movie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, LW4/a;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LW4/a;->e:LW4/b;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lflix/com/vision/App;->r:LP4/e;

    .line 16
    .line 17
    iget-object v1, p0, LW4/a;->f:Lflix/com/vision/models/Movie;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, LP4/e;->removeFromWaching(Lflix/com/vision/models/Movie;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p1, LW4/b;->c:Landroid/app/Activity;

    .line 23
    .line 24
    const-string v2, "Removed"

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-static {v0, v2, v3}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p1, LW4/b;->d:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->markAsWatched(Lflix/com/vision/models/Movie;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_0
    iget-object p1, p0, LW4/a;->e:LW4/b;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v0, v0, Lflix/com/vision/App;->r:LP4/e;

    .line 46
    .line 47
    iget-object v1, p0, LW4/a;->f:Lflix/com/vision/models/Movie;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, LP4/e;->addMovieFavorites(Lflix/com/vision/models/Movie;)Z

    .line 50
    .line 51
    .line 52
    iget-object p1, p1, LW4/b;->c:Landroid/app/Activity;

    .line 53
    .line 54
    const-string v0, "Added to Favorites"

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    invoke-static {p1, v0, v1}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_1
    iget-object p1, p0, LW4/a;->e:LW4/b;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v0, v0, Lflix/com/vision/App;->r:LP4/e;

    .line 71
    .line 72
    iget-object v1, p0, LW4/a;->f:Lflix/com/vision/models/Movie;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, LP4/e;->markAsWatched(Lflix/com/vision/models/Movie;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p1, LW4/b;->c:Landroid/app/Activity;

    .line 78
    .line 79
    const-string v2, "Marked as watched"

    .line 80
    .line 81
    const/4 v3, 0x1

    .line 82
    invoke-static {v0, v2, v3}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p1, LW4/b;->d:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->markAsWatched(Lflix/com/vision/models/Movie;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
