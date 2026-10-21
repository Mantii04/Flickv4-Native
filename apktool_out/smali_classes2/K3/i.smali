.class public final synthetic LK3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, LK3/i;->b:I

    iput-object p1, p0, LK3/i;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget p1, p0, LK3/i;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LK3/i;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 9
    .line 10
    iget-object p1, p1, Lflix/com/vision/bvp/BetterVideoPlayer;->i0:Landroid/view/GestureDetector;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :pswitch_0
    iget-object p1, p0, LK3/i;->e:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, LK3/l;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    const/4 v0, 0x0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-ne p2, v1, :cond_3

    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    iget-wide v4, p1, LK3/l;->o:J

    .line 37
    .line 38
    sub-long/2addr v2, v4

    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    cmp-long p2, v2, v4

    .line 42
    .line 43
    if-ltz p2, :cond_1

    .line 44
    .line 45
    const-wide/16 v4, 0x12c

    .line 46
    .line 47
    cmp-long p2, v2, v4

    .line 48
    .line 49
    if-lez p2, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move p2, v0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    move p2, v1

    .line 55
    :goto_1
    if-eqz p2, :cond_2

    .line 56
    .line 57
    iput-boolean v0, p1, LK3/l;->m:Z

    .line 58
    .line 59
    :cond_2
    invoke-virtual {p1}, LK3/l;->p()V

    .line 60
    .line 61
    .line 62
    iput-boolean v1, p1, LK3/l;->m:Z

    .line 63
    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide v1

    .line 68
    iput-wide v1, p1, LK3/l;->o:J

    .line 69
    .line 70
    :cond_3
    return v0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
