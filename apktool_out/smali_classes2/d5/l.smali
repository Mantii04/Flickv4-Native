.class public final Ld5/l;
.super Lflix/com/vision/processors/english/m;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public final f:Z

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;LU4/f;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lflix/com/vision/processors/english/m;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Ld5/l;->f:Z

    .line 6
    .line 7
    const-string v1, "https://allmovieland.you/"

    .line 8
    .line 9
    iput-object v1, p0, Ld5/l;->g:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p1, p0, Ld5/l;->a:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    .line 14
    .line 15
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p3, p0, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 27
    .line 28
    const-string p2, "pref_show_hindi_dubbed_direct"

    .line 29
    .line 30
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput-boolean p1, p0, Ld5/l;->f:Z

    .line 35
    .line 36
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 41
    .line 42
    sget-object p2, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 43
    .line 44
    const-string p2, "pref_allmvland_hst"

    .line 45
    .line 46
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Ld5/l;->g:Ljava/lang/String;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public GetStreamLinkHindi(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ld5/i;

    .line 2
    .line 3
    new-instance v1, Ld5/g;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, Ld5/g;-><init>(Ld5/l;I)V

    .line 7
    .line 8
    .line 9
    new-instance v2, LJ0/g;

    .line 10
    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    invoke-direct {v2, v3}, LJ0/g;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0, p1, v1, v2}, Ld5/i;-><init>(Ld5/l;Ljava/lang/String;Ld5/g;LJ0/g;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lflix/com/vision/App;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public GetStreamLinkHindi2(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ld5/j;

    .line 2
    .line 3
    new-instance v1, Ld5/g;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, v2}, Ld5/g;-><init>(Ld5/l;I)V

    .line 7
    .line 8
    .line 9
    new-instance v2, LJ0/g;

    .line 10
    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    invoke-direct {v2, v3}, LJ0/g;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0, p1, v1, v2}, Ld5/j;-><init>(Ld5/l;Ljava/lang/String;Ld5/g;LJ0/g;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lflix/com/vision/App;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public GetStreamLinkHindi3(Lflix/com/vision/models/hindi/PlaylistItem;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Ld5/l;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p1, Lflix/com/vision/models/hindi/PlaylistItem;->language:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "English"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "/playlist/"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v1, p1, Lflix/com/vision/models/hindi/PlaylistItem;->file:Ljava/lang/String;

    .line 34
    .line 35
    const-string v2, ".txt"

    .line 36
    .line 37
    invoke-static {v0, v1, v2}, LA/i;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Ld5/k;

    .line 42
    .line 43
    new-instance v2, LX4/a;

    .line 44
    .line 45
    const/16 v3, 0x1a

    .line 46
    .line 47
    invoke-direct {v2, v3, p0, p1}, LX4/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance p1, LJ0/g;

    .line 51
    .line 52
    const/16 v3, 0x8

    .line 53
    .line 54
    invoke-direct {p1, v3}, LJ0/g;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, p0, v0, v2, p1}, Ld5/k;-><init>(Ld5/l;Ljava/lang/String;LX4/a;LJ0/g;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lflix/com/vision/App;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public process(Ljava/lang/String;II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "/play/"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Ld5/l;->b:Ljava/lang/String;

    .line 24
    .line 25
    iput p2, p0, Ld5/l;->d:I

    .line 26
    .line 27
    iput p3, p0, Ld5/l;->e:I

    .line 28
    .line 29
    new-instance p2, Ld5/h;

    .line 30
    .line 31
    invoke-direct {p2, p0, p1}, Ld5/h;-><init>(Ld5/l;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 35
    .line 36
    const/4 p3, 0x0

    .line 37
    new-array p3, p3, [Ljava/lang/Void;

    .line 38
    .line 39
    invoke-virtual {p2, p1, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 40
    .line 41
    .line 42
    return-void
.end method
