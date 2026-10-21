.class public final synthetic LB4/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:LB4/S;


# direct methods
.method public synthetic constructor <init>(LB4/S;I)V
    .locals 0

    .line 1
    iput p2, p0, LB4/Q;->b:I

    iput-object p1, p0, LB4/Q;->e:LB4/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, LB4/Q;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LB4/Q;->e:LB4/S;

    .line 7
    .line 8
    iget-object v0, v0, LB4/S;->a:Lflix/com/vision/activities/player/WebPlayerActivity;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v9

    .line 21
    const-wide/16 v3, 0x12c

    .line 22
    .line 23
    add-long/2addr v3, v9

    .line 24
    invoke-virtual {v0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 33
    .line 34
    div-int/lit8 v5, v5, 0x3

    .line 35
    .line 36
    int-to-float v6, v5

    .line 37
    invoke-virtual {v0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 46
    .line 47
    div-int/lit8 v5, v5, 0x3

    .line 48
    .line 49
    int-to-float v7, v5

    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v8, 0x0

    .line 52
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 53
    .line 54
    .line 55
    move-result-object v11

    .line 56
    const-wide/16 v3, 0x1f4

    .line 57
    .line 58
    add-long/2addr v3, v9

    .line 59
    const/4 v5, 0x1

    .line 60
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v2, v0, Lflix/com/vision/activities/player/WebPlayerActivity;->I:Landroid/webkit/WebView;

    .line 65
    .line 66
    invoke-virtual {v2, v11}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 67
    .line 68
    .line 69
    iget-object v0, v0, Lflix/com/vision/activities/player/WebPlayerActivity;->I:Landroid/webkit/WebView;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p0, LB4/Q;->e:LB4/S;

    .line 76
    .line 77
    iget-object v0, v0, LB4/S;->a:Lflix/com/vision/activities/player/WebPlayerActivity;

    .line 78
    .line 79
    iget-object v0, v0, Lflix/com/vision/activities/player/WebPlayerActivity;->j:Landroid/view/View;

    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
