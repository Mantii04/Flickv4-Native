.class public final LN3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:LN3/c;


# direct methods
.method public constructor <init>(LN3/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LN3/b;->a:LN3/c;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/player/YouTubePlayerView;)V
    .locals 3

    .line 1
    iget-object v0, p0, LN3/b;->a:LN3/c;

    iget-object v1, v0, LN3/c;->e:Lcom/google/android/youtube/player/YouTubePlayerView;

    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_0

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, v1, Lcom/google/android/youtube/player/YouTubePlayerView;->t:Z

    iget-object v1, v1, Lcom/google/android/youtube/player/YouTubePlayerView;->m:LO3/z;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, LO3/z;->a(Z)V

    .line 3
    :cond_0
    iput-object p1, v0, LN3/c;->e:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 4
    iget v1, v0, LN3/c;->f:I

    if-lez v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->b()V

    .line 6
    :cond_1
    iget v0, v0, LN3/c;->f:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 7
    iget-object p1, p1, Lcom/google/android/youtube/player/YouTubePlayerView;->m:LO3/z;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, LO3/z;->c()V

    :cond_2
    return-void
.end method

.method public final a(Lcom/google/android/youtube/player/YouTubePlayerView;Ljava/lang/String;LN3/d;)V
    .locals 4

    .line 9
    iget-object v0, p0, LN3/b;->a:LN3/c;

    iget-object v1, v0, LN3/c;->j:Landroid/os/Bundle;

    .line 10
    iget-object v2, p1, Lcom/google/android/youtube/player/YouTubePlayerView;->m:LO3/z;

    if-nez v2, :cond_1

    .line 11
    iget-object v2, p1, Lcom/google/android/youtube/player/YouTubePlayerView;->s:LN3/d;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "activity cannot be null"

    invoke-static {v0, v2}, LO3/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "provider cannot be null"

    invoke-static {p1, v2}, LO3/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN3/e;

    iput-object v2, p1, Lcom/google/android/youtube/player/YouTubePlayerView;->q:LN3/e;

    const-string v2, "listener cannot be null"

    invoke-static {p3, v2}, LO3/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LN3/d;

    iput-object p3, p1, Lcom/google/android/youtube/player/YouTubePlayerView;->s:LN3/d;

    iput-object v1, p1, Lcom/google/android/youtube/player/YouTubePlayerView;->r:Landroid/os/Bundle;

    iget-object p3, p1, Lcom/google/android/youtube/player/YouTubePlayerView;->p:LO3/q;

    invoke-virtual {p3}, LO3/q;->b()V

    invoke-static {}, LO3/a;->a()LO3/a;

    move-result-object p3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, LN3/g;

    invoke-direct {v2, p1, v0}, LN3/g;-><init>(Lcom/google/android/youtube/player/YouTubePlayerView;Landroid/app/Activity;)V

    new-instance v3, LN3/h;

    invoke-direct {v3, p1}, LN3/h;-><init>(Lcom/google/android/youtube/player/YouTubePlayerView;)V

    invoke-virtual {p3, v1, p2, v2, v3}, LO3/a;->a(Landroid/content/Context;Ljava/lang/String;LO3/A;LO3/B;)LO3/d;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/youtube/player/YouTubePlayerView;->j:LO3/d;

    check-cast p2, LO3/y;

    invoke-virtual {p2}, LO3/y;->e()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 12
    iput-object p1, v0, LN3/c;->j:Landroid/os/Bundle;

    return-void
.end method
