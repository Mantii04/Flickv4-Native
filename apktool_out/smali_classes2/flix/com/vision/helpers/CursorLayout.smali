.class public Lflix/com/vision/helpers/CursorLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static w:I = 0x0

.field public static x:F = 0.0f

.field public static y:F = 0.0f

.field public static z:I = 0x64


# instance fields
.field public b:LU4/m;

.field public final e:Landroid/graphics/Point;

.field public final f:LT4/g;

.field public final j:Landroid/graphics/PointF;

.field public final m:Landroid/graphics/PointF;

.field public final n:LT4/h;

.field public p:Z

.field public q:J

.field public final r:Landroid/graphics/Paint;

.field public final s:Landroid/graphics/PointF;

.field public t:I

.field public u:I

.field public v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/Point;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lflix/com/vision/helpers/CursorLayout;->e:Landroid/graphics/Point;

    .line 11
    .line 12
    new-instance p1, LT4/g;

    .line 13
    .line 14
    invoke-direct {p1, p0}, LT4/g;-><init>(Lflix/com/vision/helpers/CursorLayout;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lflix/com/vision/helpers/CursorLayout;->f:LT4/g;

    .line 18
    .line 19
    new-instance p1, Landroid/graphics/PointF;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lflix/com/vision/helpers/CursorLayout;->j:Landroid/graphics/PointF;

    .line 26
    .line 27
    new-instance p1, Landroid/graphics/PointF;

    .line 28
    .line 29
    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lflix/com/vision/helpers/CursorLayout;->m:Landroid/graphics/PointF;

    .line 33
    .line 34
    new-instance p1, LT4/h;

    .line 35
    .line 36
    invoke-direct {p1, p0}, LT4/h;-><init>(Lflix/com/vision/helpers/CursorLayout;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lflix/com/vision/helpers/CursorLayout;->n:LT4/h;

    .line 40
    .line 41
    iput-boolean p2, p0, Lflix/com/vision/helpers/CursorLayout;->p:Z

    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    iput-wide v0, p0, Lflix/com/vision/helpers/CursorLayout;->q:J

    .line 48
    .line 49
    new-instance p1, Landroid/graphics/Paint;

    .line 50
    .line 51
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lflix/com/vision/helpers/CursorLayout;->r:Landroid/graphics/Paint;

    .line 55
    .line 56
    new-instance v0, Landroid/graphics/PointF;

    .line 57
    .line 58
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lflix/com/vision/helpers/CursorLayout;->s:Landroid/graphics/PointF;

    .line 62
    .line 63
    const/16 v0, 0xff

    .line 64
    .line 65
    iput v0, p0, Lflix/com/vision/helpers/CursorLayout;->t:I

    .line 66
    .line 67
    iput v0, p0, Lflix/com/vision/helpers/CursorLayout;->u:I

    .line 68
    .line 69
    iput v0, p0, Lflix/com/vision/helpers/CursorLayout;->v:I

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_0

    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    const-string p2, "window"

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Landroid/view/WindowManager;

    .line 98
    .line 99
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    new-instance p2, Landroid/graphics/Point;

    .line 104
    .line 105
    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 109
    .line 110
    .line 111
    iget p1, p2, Landroid/graphics/Point;->x:I

    .line 112
    .line 113
    div-int/lit16 p2, p1, 0x190

    .line 114
    .line 115
    int-to-float p2, p2

    .line 116
    sput p2, Lflix/com/vision/helpers/CursorLayout;->x:F

    .line 117
    .line 118
    div-int/lit8 p2, p1, 0x50

    .line 119
    .line 120
    sput p2, Lflix/com/vision/helpers/CursorLayout;->w:I

    .line 121
    .line 122
    div-int/lit8 p2, p1, 0x19

    .line 123
    .line 124
    int-to-float p2, p2

    .line 125
    sput p2, Lflix/com/vision/helpers/CursorLayout;->y:F

    .line 126
    .line 127
    div-int/lit8 p1, p1, 0xf

    .line 128
    .line 129
    sput p1, Lflix/com/vision/helpers/CursorLayout;->z:I

    .line 130
    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/KeyEvent;IIZ)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lflix/com/vision/helpers/CursorLayout;->q:J

    .line 6
    .line 7
    if-nez p4, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    invoke-virtual {p4, p1}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lflix/com/vision/helpers/CursorLayout;->m:Landroid/graphics/PointF;

    .line 17
    .line 18
    const/4 p4, 0x0

    .line 19
    invoke-virtual {p1, p4, p4}, Landroid/graphics/PointF;->set(FF)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 24
    .line 25
    .line 26
    move-result-object p4

    .line 27
    invoke-virtual {p4, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    .line 28
    .line 29
    .line 30
    move-result p4

    .line 31
    if-nez p4, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 34
    .line 35
    .line 36
    move-result-object p4

    .line 37
    iget-object v0, p0, Lflix/com/vision/helpers/CursorLayout;->n:LT4/h;

    .line 38
    .line 39
    invoke-virtual {p4, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    invoke-virtual {p4, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    iget-object p1, p0, Lflix/com/vision/helpers/CursorLayout;->e:Landroid/graphics/Point;

    .line 53
    .line 54
    const/16 p4, -0x64

    .line 55
    .line 56
    if-ne p2, p4, :cond_1

    .line 57
    .line 58
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 59
    .line 60
    :cond_1
    if-ne p3, p4, :cond_2

    .line 61
    .line 62
    iget p3, p1, Landroid/graphics/Point;->y:I

    .line 63
    .line 64
    :cond_2
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Point;->set(II)V

    .line 65
    .line 66
    .line 67
    :cond_3
    return-void
.end method

.method public bound(FF)F
    .locals 1

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    return p2

    :cond_0
    neg-float p2, p2

    cmpg-float v0, p1, p2

    if-gez v0, :cond_1

    return p2

    :cond_1
    return p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-wide v2, p0, Lflix/com/vision/helpers/CursorLayout;->q:J

    .line 15
    .line 16
    sub-long/2addr v0, v2

    .line 17
    const-wide/16 v2, 0x1388

    .line 18
    .line 19
    cmp-long v0, v0, v2

    .line 20
    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lflix/com/vision/helpers/CursorLayout;->j:Landroid/graphics/PointF;

    .line 25
    .line 26
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 27
    .line 28
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 29
    .line 30
    iget-object v2, p0, Lflix/com/vision/helpers/CursorLayout;->r:Landroid/graphics/Paint;

    .line 31
    .line 32
    iget v3, p0, Lflix/com/vision/helpers/CursorLayout;->t:I

    .line 33
    .line 34
    iget v4, p0, Lflix/com/vision/helpers/CursorLayout;->u:I

    .line 35
    .line 36
    iget v5, p0, Lflix/com/vision/helpers/CursorLayout;->v:I

    .line 37
    .line 38
    const/16 v6, 0x80

    .line 39
    .line 40
    invoke-static {v6, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    .line 46
    .line 47
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    .line 51
    .line 52
    sget v3, Lflix/com/vision/helpers/CursorLayout;->w:I

    .line 53
    .line 54
    int-to-float v3, v3

    .line 55
    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 56
    .line 57
    .line 58
    const v3, -0x777778

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    .line 63
    .line 64
    sget v3, Lflix/com/vision/helpers/CursorLayout;->x:F

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    .line 68
    .line 69
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    .line 73
    .line 74
    sget v3, Lflix/com/vision/helpers/CursorLayout;->w:I

    .line 75
    .line 76
    int-to-float v3, v3

    .line 77
    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lflix/com/vision/helpers/CursorLayout;->b:LU4/m;

    .line 81
    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    const/4 v0, 0x1

    .line 85
    :try_start_0
    invoke-interface {p1, v0}, LU4/m;->infoToggle(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    :catch_0
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lflix/com/vision/helpers/CursorLayout;->j:Landroid/graphics/PointF;

    .line 6
    .line 7
    const/16 v2, 0x42

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eq v0, v2, :cond_d

    .line 12
    .line 13
    const/16 v2, 0xa0

    .line 14
    .line 15
    if-eq v0, v2, :cond_d

    .line 16
    .line 17
    const/4 v2, 0x4

    .line 18
    if-eq v0, v2, :cond_c

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v5, -0x1

    .line 22
    const/16 v6, -0x64

    .line 23
    .line 24
    packed-switch v0, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    packed-switch v0, :pswitch_data_1

    .line 28
    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0, p1, v4, v4, v4}, Lflix/com/vision/helpers/CursorLayout;->a(Landroid/view/KeyEvent;IIZ)V

    .line 39
    .line 40
    .line 41
    return v4

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-ne v0, v4, :cond_10

    .line 47
    .line 48
    invoke-virtual {p0, p1, v3, v3, v3}, Lflix/com/vision/helpers/CursorLayout;->a(Landroid/view/KeyEvent;IIZ)V

    .line 49
    .line 50
    .line 51
    return v4

    .line 52
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0, p1, v4, v5, v4}, Lflix/com/vision/helpers/CursorLayout;->a(Landroid/view/KeyEvent;IIZ)V

    .line 59
    .line 60
    .line 61
    return v4

    .line 62
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-ne v0, v4, :cond_10

    .line 67
    .line 68
    invoke-virtual {p0, p1, v3, v3, v3}, Lflix/com/vision/helpers/CursorLayout;->a(Landroid/view/KeyEvent;IIZ)V

    .line 69
    .line 70
    .line 71
    return v4

    .line 72
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_2

    .line 77
    .line 78
    invoke-virtual {p0, p1, v5, v4, v4}, Lflix/com/vision/helpers/CursorLayout;->a(Landroid/view/KeyEvent;IIZ)V

    .line 79
    .line 80
    .line 81
    return v4

    .line 82
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-ne v0, v4, :cond_10

    .line 87
    .line 88
    invoke-virtual {p0, p1, v3, v3, v3}, Lflix/com/vision/helpers/CursorLayout;->a(Landroid/view/KeyEvent;IIZ)V

    .line 89
    .line 90
    .line 91
    return v4

    .line 92
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_3

    .line 97
    .line 98
    invoke-virtual {p0, p1, v5, v5, v4}, Lflix/com/vision/helpers/CursorLayout;->a(Landroid/view/KeyEvent;IIZ)V

    .line 99
    .line 100
    .line 101
    return v4

    .line 102
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-ne v0, v4, :cond_10

    .line 107
    .line 108
    invoke-virtual {p0, p1, v3, v3, v3}, Lflix/com/vision/helpers/CursorLayout;->a(Landroid/view/KeyEvent;IIZ)V

    .line 109
    .line 110
    .line 111
    return v4

    .line 112
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_5

    .line 117
    .line 118
    iget v0, v1, Landroid/graphics/PointF;->x:F

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    int-to-float v1, v1

    .line 125
    cmpl-float v0, v0, v1

    .line 126
    .line 127
    if-ltz v0, :cond_4

    .line 128
    .line 129
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    return p1

    .line 134
    :cond_4
    invoke-virtual {p0, p1, v4, v6, v4}, Lflix/com/vision/helpers/CursorLayout;->a(Landroid/view/KeyEvent;IIZ)V

    .line 135
    .line 136
    .line 137
    return v4

    .line 138
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-ne v0, v4, :cond_10

    .line 143
    .line 144
    invoke-virtual {p0, p1, v3, v6, v3}, Lflix/com/vision/helpers/CursorLayout;->a(Landroid/view/KeyEvent;IIZ)V

    .line 145
    .line 146
    .line 147
    return v4

    .line 148
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_7

    .line 153
    .line 154
    iget v0, v1, Landroid/graphics/PointF;->x:F

    .line 155
    .line 156
    cmpg-float v0, v0, v2

    .line 157
    .line 158
    if-gtz v0, :cond_6

    .line 159
    .line 160
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    return p1

    .line 165
    :cond_6
    invoke-virtual {p0, p1, v5, v6, v4}, Lflix/com/vision/helpers/CursorLayout;->a(Landroid/view/KeyEvent;IIZ)V

    .line 166
    .line 167
    .line 168
    return v4

    .line 169
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-ne v0, v4, :cond_10

    .line 174
    .line 175
    invoke-virtual {p0, p1, v3, v6, v3}, Lflix/com/vision/helpers/CursorLayout;->a(Landroid/view/KeyEvent;IIZ)V

    .line 176
    .line 177
    .line 178
    return v4

    .line 179
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-nez v0, :cond_9

    .line 184
    .line 185
    iget v0, v1, Landroid/graphics/PointF;->y:F

    .line 186
    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    int-to-float v1, v1

    .line 192
    cmpl-float v0, v0, v1

    .line 193
    .line 194
    if-ltz v0, :cond_8

    .line 195
    .line 196
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    return p1

    .line 201
    :cond_8
    invoke-virtual {p0, p1, v6, v4, v4}, Lflix/com/vision/helpers/CursorLayout;->a(Landroid/view/KeyEvent;IIZ)V

    .line 202
    .line 203
    .line 204
    return v4

    .line 205
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-ne v0, v4, :cond_10

    .line 210
    .line 211
    invoke-virtual {p0, p1, v6, v3, v3}, Lflix/com/vision/helpers/CursorLayout;->a(Landroid/view/KeyEvent;IIZ)V

    .line 212
    .line 213
    .line 214
    return v4

    .line 215
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-nez v0, :cond_b

    .line 220
    .line 221
    iget v0, v1, Landroid/graphics/PointF;->y:F

    .line 222
    .line 223
    cmpg-float v0, v0, v2

    .line 224
    .line 225
    if-gtz v0, :cond_a

    .line 226
    .line 227
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    return p1

    .line 232
    :cond_a
    invoke-virtual {p0, p1, v6, v5, v4}, Lflix/com/vision/helpers/CursorLayout;->a(Landroid/view/KeyEvent;IIZ)V

    .line 233
    .line 234
    .line 235
    return v4

    .line 236
    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-ne v0, v4, :cond_10

    .line 241
    .line 242
    invoke-virtual {p0, p1, v6, v3, v3}, Lflix/com/vision/helpers/CursorLayout;->a(Landroid/view/KeyEvent;IIZ)V

    .line 243
    .line 244
    .line 245
    return v4

    .line 246
    :cond_c
    :try_start_0
    iget-object p1, p0, Lflix/com/vision/helpers/CursorLayout;->b:LU4/m;

    .line 247
    .line 248
    if-eqz p1, :cond_10

    .line 249
    .line 250
    invoke-interface {p1}, LU4/m;->showDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .line 252
    .line 253
    return v4

    .line 254
    :cond_d
    :goto_0
    :pswitch_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 255
    .line 256
    .line 257
    move-result-wide v5

    .line 258
    iget-wide v7, p0, Lflix/com/vision/helpers/CursorLayout;->q:J

    .line 259
    .line 260
    sub-long/2addr v5, v7

    .line 261
    const-wide/16 v7, 0x1388

    .line 262
    .line 263
    cmp-long v0, v5, v7

    .line 264
    .line 265
    if-lez v0, :cond_e

    .line 266
    .line 267
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    return p1

    .line 272
    :cond_e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-nez v0, :cond_f

    .line 277
    .line 278
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-nez v0, :cond_f

    .line 287
    .line 288
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    iput-boolean v4, p0, Lflix/com/vision/helpers/CursorLayout;->p:Z

    .line 296
    .line 297
    iget p1, v1, Landroid/graphics/PointF;->x:F

    .line 298
    .line 299
    iget v0, v1, Landroid/graphics/PointF;->y:F

    .line 300
    .line 301
    invoke-virtual {p0, p1, v0, v3}, Lflix/com/vision/helpers/CursorLayout;->dispatchMotionEvent(FFI)V

    .line 302
    .line 303
    .line 304
    return v4

    .line 305
    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-ne v0, v4, :cond_10

    .line 310
    .line 311
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 316
    .line 317
    .line 318
    iget p1, v1, Landroid/graphics/PointF;->x:F

    .line 319
    .line 320
    iget v0, v1, Landroid/graphics/PointF;->y:F

    .line 321
    .line 322
    invoke-virtual {p0, p1, v0, v4}, Lflix/com/vision/helpers/CursorLayout;->dispatchMotionEvent(FFI)V

    .line 323
    .line 324
    .line 325
    iput-boolean v3, p0, Lflix/com/vision/helpers/CursorLayout;->p:Z

    .line 326
    .line 327
    :catch_0
    :cond_10
    return v4

    .line 328
    nop

    .line 329
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_8
    .end packed-switch

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    :pswitch_data_1
    .packed-switch 0x10c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchMotionEvent(FFI)V
    .locals 17

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v1

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    new-instance v0, Landroid/view/MotionEvent$PointerProperties;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    iput v5, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 19
    .line 20
    new-array v7, v6, [Landroid/view/MotionEvent$PointerProperties;

    .line 21
    .line 22
    aput-object v0, v7, v5

    .line 23
    .line 24
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 27
    .line 28
    .line 29
    move/from16 v8, p1

    .line 30
    .line 31
    iput v8, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 32
    .line 33
    move/from16 v8, p2

    .line 34
    .line 35
    iput v8, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 36
    .line 37
    const/high16 v8, 0x3f800000    # 1.0f

    .line 38
    .line 39
    iput v8, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 40
    .line 41
    iput v8, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 42
    .line 43
    new-array v8, v6, [Landroid/view/MotionEvent$PointerCoords;

    .line 44
    .line 45
    aput-object v0, v8, v5

    .line 46
    .line 47
    const/4 v15, 0x0

    .line 48
    const/16 v16, 0x0

    .line 49
    .line 50
    const/4 v9, 0x0

    .line 51
    const/4 v10, 0x0

    .line 52
    const/high16 v11, 0x3f800000    # 1.0f

    .line 53
    .line 54
    const/high16 v12, 0x3f800000    # 1.0f

    .line 55
    .line 56
    const/4 v13, 0x0

    .line 57
    const/4 v14, 0x0

    .line 58
    move/from16 v5, p3

    .line 59
    .line 60
    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    move-object/from16 v1, p0

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 5
    .line 6
    .line 7
    move-result p3

    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    iget-object p3, p0, Lflix/com/vision/helpers/CursorLayout;->j:Landroid/graphics/PointF;

    .line 11
    .line 12
    int-to-float p1, p1

    .line 13
    const/high16 p4, 0x40000000    # 2.0f

    .line 14
    .line 15
    div-float/2addr p1, p4

    .line 16
    int-to-float p2, p2

    .line 17
    div-float/2addr p2, p4

    .line 18
    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p2, p0, Lflix/com/vision/helpers/CursorLayout;->f:LT4/g;

    .line 32
    .line 33
    const-wide/16 p3, 0x1388

    .line 34
    .line 35
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public setActivity(LU4/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/helpers/CursorLayout;->b:LU4/m;

    .line 2
    .line 3
    return-void
.end method

.method public setCallback(LT4/i;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setCursorColor(III)V
    .locals 0

    .line 1
    iput p1, p0, Lflix/com/vision/helpers/CursorLayout;->t:I

    .line 2
    .line 3
    iput p2, p0, Lflix/com/vision/helpers/CursorLayout;->u:I

    .line 4
    .line 5
    iput p3, p0, Lflix/com/vision/helpers/CursorLayout;->v:I

    .line 6
    .line 7
    return-void
.end method
