.class public final synthetic LK4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:LK4/f;


# direct methods
.method public synthetic constructor <init>(LK4/f;I)V
    .locals 0

    .line 1
    iput p2, p0, LK4/e;->b:I

    iput-object p1, p0, LK4/e;->e:LK4/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, LK4/e;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LK4/e;->e:LK4/f;

    .line 7
    .line 8
    iget-object v0, v0, LK4/f;->b:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 9
    .line 10
    iget-object v1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->j:Landroid/widget/TextView;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Lflix/com/vision/bvp/BetterVideoPlayer;->d(Landroid/view/View;I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iget-object v0, p0, LK4/e;->e:LK4/f;

    .line 18
    .line 19
    iget-object v0, v0, LK4/f;->b:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 20
    .line 21
    iget-object v1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->f:Landroid/widget/TextView;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v1, v2}, Lflix/com/vision/bvp/BetterVideoPlayer;->d(Landroid/view/View;I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
