.class public final Ly4/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lflix/com/vision/materialsearchview/MaterialSearchView$OnQueryTextListener;


# instance fields
.field public final synthetic a:Lflix/com/vision/activities/AnimesListActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/AnimesListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly4/q;->a:Lflix/com/vision/activities/AnimesListActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-le v0, v1, :cond_0

    .line 8
    .line 9
    sget v0, Lflix/com/vision/activities/AnimesListActivity;->E:I

    .line 10
    .line 11
    iget-object v0, p0, Ly4/q;->a:Lflix/com/vision/activities/AnimesListActivity;

    .line 12
    .line 13
    new-instance v3, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v4, "http://suggestqueries.google.com/complete/search?client=youtube&ds=yt&q="

    .line 19
    .line 20
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    :try_start_0
    const-string v5, "UTF-8"

    .line 25
    .line 26
    invoke-static {p1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    new-instance p1, Lh2/t;

    .line 30
    .line 31
    new-instance v5, Ly4/A;

    .line 32
    .line 33
    invoke-direct {v5, v0, v3, v1}, Ly4/A;-><init>(Lflix/com/vision/activities/base/a;Ljava/util/ArrayList;I)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Landroidx/media3/exoplayer/source/chunk/a;

    .line 37
    .line 38
    const/16 v1, 0x18

    .line 39
    .line 40
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/chunk/a;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, v2, v4, v5, v0}, Lh2/t;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "MOVIES_App_Update_version"

    .line 51
    .line 52
    invoke-virtual {v0, p1, v1}, Lflix/com/vision/App;->addToRequestQueue(Lcom/android/volley/Request;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :catch_0
    :cond_0
    return v2
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-lt v0, v1, :cond_1

    .line 9
    .line 10
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lflix/com/vision/App;->isTVDevice()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const-string v1, "query"

    .line 19
    .line 20
    iget-object v2, p0, Ly4/q;->a:Lflix/com/vision/activities/AnimesListActivity;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Landroid/content/Intent;

    .line 25
    .line 26
    const-class v3, Lflix/com/vision/activities/AnimeSearchResultActivty;

    .line 27
    .line 28
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 39
    .line 40
    const-class v3, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;

    .line 41
    .line 42
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 52
    return p1
.end method
