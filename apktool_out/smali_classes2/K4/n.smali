.class public final LK4/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LK4/p;


# direct methods
.method public constructor <init>(LK4/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LK4/n;->b:LK4/p;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, LK4/n;->b:LK4/p;

    .line 2
    .line 3
    iget-object v0, v0, LK4/p;->b:LK4/q;

    .line 4
    .line 5
    iget-object v0, v0, LK4/q;->j:Lflix/com/vision/bvp/BetterVideoPlayer2;

    .line 6
    .line 7
    iget-object v1, v0, Lflix/com/vision/bvp/BetterVideoPlayer2;->f:Landroid/widget/TextView;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Lflix/com/vision/bvp/BetterVideoPlayer2;->b(Lflix/com/vision/bvp/BetterVideoPlayer2;Landroid/view/View;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
