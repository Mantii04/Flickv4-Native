.class public abstract LN3/c;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field public b:LN3/b;

.field public e:Lcom/google/android/youtube/player/YouTubePlayerView;

.field public f:I

.field public j:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, LN3/b;

    .line 5
    .line 6
    invoke-direct {v0, p0}, LN3/b;-><init>(LN3/c;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LN3/c;->b:LN3/b;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string v0, "YouTubeBaseActivity.KEY_PLAYER_VIEW_STATE"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-object p1, p0, LN3/c;->j:Landroid/os/Bundle;

    .line 22
    .line 23
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, LN3/c;->e:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->m:LO3/z;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2, v1}, LO3/z;->b(Z)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    iput-boolean v2, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->t:Z

    .line 18
    .line 19
    iget-object v0, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->m:LO3/z;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, v1}, LO3/z;->a(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, LN3/c;->f:I

    .line 3
    .line 4
    iget-object v0, p0, LN3/c;->e:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->m:LO3/z;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, LO3/z;->d()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, LN3/c;->f:I

    .line 6
    .line 7
    iget-object v0, p0, LN3/c;->e:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->m:LO3/z;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, LO3/z;->c()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LN3/c;->e:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->m:LO3/z;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->r:Landroid/os/Bundle;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, LO3/z;->h()Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, LN3/c;->j:Landroid/os/Bundle;

    .line 21
    .line 22
    :goto_0
    const-string v1, "YouTubeBaseActivity.KEY_PLAYER_VIEW_STATE"

    .line 23
    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, LN3/c;->f:I

    .line 6
    .line 7
    iget-object v0, p0, LN3/c;->e:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->b()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LN3/c;->f:I

    .line 3
    .line 4
    iget-object v0, p0, LN3/c;->e:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->m:LO3/z;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, LO3/z;->e()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
