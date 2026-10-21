.class public final Ly4/B1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN3/d;


# instance fields
.field public final synthetic a:Lflix/com/vision/activities/YouTubePlayerActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/YouTubePlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly4/B1;->a:Lflix/com/vision/activities/YouTubePlayerActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onInitializationFailure(LN3/e;Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    const-class p2, Lflix/com/vision/activities/player/YouTubeWebviewActivity;

    .line 4
    .line 5
    iget-object v0, p0, Ly4/B1;->a:Lflix/com/vision/activities/YouTubePlayerActivity;

    .line 6
    .line 7
    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "https://www.youtube.com/watch?v="

    .line 13
    .line 14
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lflix/com/vision/activities/YouTubePlayerActivity;->n:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-string v1, "url"

    .line 27
    .line 28
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public onInitializationSuccess(LN3/e;LN3/f;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Ly4/B1;->a:Lflix/com/vision/activities/YouTubePlayerActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lflix/com/vision/activities/YouTubePlayerActivity;->n:Ljava/lang/String;

    .line 4
    .line 5
    check-cast p2, LO3/z;

    .line 6
    .line 7
    invoke-virtual {p2, p1}, LO3/z;->loadVideo(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p2, p1}, LO3/z;->setFullscreen(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
