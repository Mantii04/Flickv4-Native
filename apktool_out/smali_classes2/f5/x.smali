.class public final Lf5/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lf5/z;


# direct methods
.method public constructor <init>(Lf5/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf5/x;->b:Lf5/z;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lf5/x;->b:Lf5/z;

    .line 2
    .line 3
    iget-object p2, p2, Lf5/z;->b:Lflix/com/vision/tv/PlayerActivityLiveExternal;

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :try_start_1
    iget-object p1, p2, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 9
    .line 10
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->stop()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p2, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 14
    .line 15
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_1
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-static {p2}, Lflix/com/vision/tv/PlayerActivityLiveExternal;->e(Lflix/com/vision/tv/PlayerActivityLiveExternal;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
