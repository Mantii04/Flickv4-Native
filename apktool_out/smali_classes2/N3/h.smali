.class public final LN3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO3/B;


# instance fields
.field public final synthetic a:Lcom/google/android/youtube/player/YouTubePlayerView;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/player/YouTubePlayerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LN3/h;->a:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
    .locals 4

    .line 1
    sget v0, Lcom/google/android/youtube/player/YouTubePlayerView;->u:I

    .line 2
    .line 3
    iget-object v0, p0, LN3/h;->a:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->m:LO3/z;

    .line 7
    .line 8
    iget-object v2, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->p:LO3/q;

    .line 9
    .line 10
    invoke-virtual {v2}, LO3/q;->c()V

    .line 11
    .line 12
    .line 13
    iget-object v2, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->s:LN3/d;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object v3, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->q:LN3/e;

    .line 18
    .line 19
    check-cast v2, Ly4/B1;

    .line 20
    .line 21
    invoke-virtual {v2, v3, p1}, Ly4/B1;->onInitializationFailure(LN3/e;Lcom/google/android/youtube/player/YouTubeInitializationResult;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->s:LN3/d;

    .line 25
    .line 26
    :cond_0
    iput-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->j:LO3/d;

    .line 27
    .line 28
    return-void
.end method
