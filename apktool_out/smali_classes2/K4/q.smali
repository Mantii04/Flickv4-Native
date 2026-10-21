.class public final LK4/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final b:I

.field public final e:Landroid/view/GestureDetector;

.field public final synthetic f:I

.field public final synthetic j:Lflix/com/vision/bvp/BetterVideoPlayer2;


# direct methods
.method public constructor <init>(Lflix/com/vision/bvp/BetterVideoPlayer2;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LK4/q;->j:Lflix/com/vision/bvp/BetterVideoPlayer2;

    .line 5
    .line 6
    iput p2, p0, LK4/q;->f:I

    .line 7
    .line 8
    iget-object p2, p1, Lflix/com/vision/bvp/BetterVideoPlayer2;->t:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p2}, LM4/c;->getScreenWidth(Landroid/content/Context;)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    div-int/lit8 p2, p2, 0x2

    .line 15
    .line 16
    iput p2, p0, LK4/q;->b:I

    .line 17
    .line 18
    new-instance p2, Landroid/view/GestureDetector;

    .line 19
    .line 20
    iget-object p1, p1, Lflix/com/vision/bvp/BetterVideoPlayer2;->t:Landroid/content/Context;

    .line 21
    .line 22
    new-instance v0, LK4/p;

    .line 23
    .line 24
    invoke-direct {v0, p0}, LK4/p;-><init>(LK4/q;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, LK4/q;->e:Landroid/view/GestureDetector;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, LK4/q;->e:Landroid/view/GestureDetector;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method
