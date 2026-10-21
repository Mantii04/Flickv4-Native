.class public final LN3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


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
    iput-object p1, p0, LN3/i;->a:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, LN3/i;->a:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->m:LO3/z;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-object p1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->m:LO3/z;

    .line 22
    .line 23
    invoke-virtual {p1}, LO3/z;->g()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
