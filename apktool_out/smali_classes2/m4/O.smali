.class public final Lm4/O;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final a:Lm4/P;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lm4/P;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lm4/O;->a:Lm4/P;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    iget-object v3, p0, Lm4/O;->a:Lm4/P;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    if-eq v0, v4, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    sget-object v0, Lm4/D;->k:Lm4/y;

    .line 22
    .line 23
    new-instance v1, Lm4/N;

    .line 24
    .line 25
    invoke-direct {v1, p1}, Lm4/N;-><init>(Landroid/os/Message;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Ljava/lang/Long;

    .line 35
    .line 36
    iget v0, v3, Lm4/P;->k:I

    .line 37
    .line 38
    add-int/2addr v0, v4

    .line 39
    iput v0, v3, Lm4/P;->k:I

    .line 40
    .line 41
    iget-wide v0, v3, Lm4/P;->e:J

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    add-long/2addr v4, v0

    .line 48
    iput-wide v4, v3, Lm4/P;->e:J

    .line 49
    .line 50
    iget p1, v3, Lm4/P;->k:I

    .line 51
    .line 52
    int-to-long v0, p1

    .line 53
    div-long/2addr v4, v0

    .line 54
    iput-wide v4, v3, Lm4/P;->h:J

    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 58
    .line 59
    int-to-long v0, p1

    .line 60
    iget p1, v3, Lm4/P;->m:I

    .line 61
    .line 62
    add-int/2addr p1, v4

    .line 63
    iput p1, v3, Lm4/P;->m:I

    .line 64
    .line 65
    iget-wide v4, v3, Lm4/P;->g:J

    .line 66
    .line 67
    add-long/2addr v4, v0

    .line 68
    iput-wide v4, v3, Lm4/P;->g:J

    .line 69
    .line 70
    iget p1, v3, Lm4/P;->l:I

    .line 71
    .line 72
    int-to-long v0, p1

    .line 73
    div-long/2addr v4, v0

    .line 74
    iput-wide v4, v3, Lm4/P;->j:J

    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 78
    .line 79
    int-to-long v0, p1

    .line 80
    iget p1, v3, Lm4/P;->l:I

    .line 81
    .line 82
    add-int/2addr p1, v4

    .line 83
    iput p1, v3, Lm4/P;->l:I

    .line 84
    .line 85
    iget-wide v4, v3, Lm4/P;->f:J

    .line 86
    .line 87
    add-long/2addr v4, v0

    .line 88
    iput-wide v4, v3, Lm4/P;->f:J

    .line 89
    .line 90
    int-to-long v0, p1

    .line 91
    div-long/2addr v4, v0

    .line 92
    iput-wide v4, v3, Lm4/P;->i:J

    .line 93
    .line 94
    return-void

    .line 95
    :cond_3
    iget-wide v4, v3, Lm4/P;->d:J

    .line 96
    .line 97
    add-long/2addr v4, v1

    .line 98
    iput-wide v4, v3, Lm4/P;->d:J

    .line 99
    .line 100
    return-void

    .line 101
    :cond_4
    iget-wide v4, v3, Lm4/P;->c:J

    .line 102
    .line 103
    add-long/2addr v4, v1

    .line 104
    iput-wide v4, v3, Lm4/P;->c:J

    .line 105
    .line 106
    return-void
.end method
