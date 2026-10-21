.class public final LN3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO3/A;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lcom/google/android/youtube/player/YouTubePlayerView;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/player/YouTubePlayerView;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LN3/g;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 5
    .line 6
    iput-object p2, p0, LN3/g;->a:Landroid/app/Activity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, LN3/g;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->j:LO3/d;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, LN3/g;->a:Landroid/app/Activity;

    .line 9
    .line 10
    :try_start_0
    invoke-static {}, LO3/a;->a()LO3/a;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    iget-object v4, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->j:LO3/d;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-virtual {v3, v1, v4, v5}, LO3/a;->a(Landroid/app/Activity;LO3/d;Z)LO3/i;

    .line 18
    .line 19
    .line 20
    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/youtube/player/internal/w$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    new-instance v3, LO3/z;

    .line 22
    .line 23
    iget-object v4, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->j:LO3/d;

    .line 24
    .line 25
    invoke-direct {v3, v4, v1}, LO3/z;-><init>(LO3/d;LO3/i;)V

    .line 26
    .line 27
    .line 28
    iput-object v3, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->m:LO3/z;

    .line 29
    .line 30
    invoke-virtual {v3}, LO3/z;->a()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->n:Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayerView;->addView(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->p:LO3/q;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->f:LN3/b;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, LN3/b;->a(Lcom/google/android/youtube/player/YouTubePlayerView;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->s:LN3/d;

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    iget-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->r:Landroid/os/Bundle;

    .line 54
    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    iget-object v3, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->m:LO3/z;

    .line 58
    .line 59
    invoke-virtual {v3, v1}, LO3/z;->a(Landroid/os/Bundle;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    iput-object v2, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->r:Landroid/os/Bundle;

    .line 64
    .line 65
    :cond_0
    iget-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->s:LN3/d;

    .line 66
    .line 67
    iget-object v3, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->q:LN3/e;

    .line 68
    .line 69
    iget-object v4, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->m:LO3/z;

    .line 70
    .line 71
    check-cast v1, Ly4/B1;

    .line 72
    .line 73
    invoke-virtual {v1, v3, v4, v5}, Ly4/B1;->onInitializationSuccess(LN3/e;LN3/f;Z)V

    .line 74
    .line 75
    .line 76
    iput-object v2, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->s:LN3/d;

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    const-string v3, "Error creating YouTubePlayerView"

    .line 81
    .line 82
    invoke-static {v3, v1}, LO3/I;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    sget-object v1, Lcom/google/android/youtube/player/YouTubeInitializationResult;->e:Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .line 86
    .line 87
    iput-object v2, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->m:LO3/z;

    .line 88
    .line 89
    iget-object v3, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->p:LO3/q;

    .line 90
    .line 91
    invoke-virtual {v3}, LO3/q;->c()V

    .line 92
    .line 93
    .line 94
    iget-object v3, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->s:LN3/d;

    .line 95
    .line 96
    if-eqz v3, :cond_1

    .line 97
    .line 98
    iget-object v4, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->q:LN3/e;

    .line 99
    .line 100
    check-cast v3, Ly4/B1;

    .line 101
    .line 102
    invoke-virtual {v3, v4, v1}, Ly4/B1;->onInitializationFailure(LN3/e;Lcom/google/android/youtube/player/YouTubeInitializationResult;)V

    .line 103
    .line 104
    .line 105
    iput-object v2, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->s:LN3/d;

    .line 106
    .line 107
    :cond_1
    :goto_0
    iput-object v2, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->j:LO3/d;

    .line 108
    .line 109
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, LN3/g;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->t:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->m:LO3/z;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, LO3/z;->f()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->p:LO3/q;

    .line 15
    .line 16
    invoke-virtual {v1}, LO3/q;->a()V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->p:LO3/q;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-gez v1, :cond_1

    .line 26
    .line 27
    iget-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->p:LO3/q;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayerView;->addView(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->n:Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    iput-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->n:Landroid/view/View;

    .line 39
    .line 40
    iput-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->m:LO3/z;

    .line 41
    .line 42
    iput-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->j:LO3/d;

    .line 43
    .line 44
    return-void
.end method
