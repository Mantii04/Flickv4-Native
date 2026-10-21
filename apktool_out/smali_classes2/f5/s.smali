.class public final Lf5/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lflix/com/vision/bvp/BetterVideoPlayer;


# direct methods
.method public constructor <init>(Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf5/s;->b:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf5/s;->b:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->start()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
