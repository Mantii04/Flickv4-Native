.class public final Lm4/P;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm4/v;

.field public final b:Lm4/O;

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(Lm4/v;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm4/P;->a:Lm4/v;

    .line 5
    .line 6
    new-instance p1, Landroid/os/HandlerThread;

    .line 7
    .line 8
    const-string v0, "Picasso-Stats"

    .line 9
    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lm4/W;->a:Ljava/lang/StringBuilder;

    .line 23
    .line 24
    new-instance v1, Lm4/T;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-wide/16 v2, 0x3e8

    .line 34
    .line 35
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 36
    .line 37
    .line 38
    new-instance v0, Lm4/O;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v0, p1, p0}, Lm4/O;-><init>(Landroid/os/Looper;Lm4/P;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lm4/P;->b:Lm4/O;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final a()Lm4/Q;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lm4/Q;

    .line 4
    .line 5
    iget-object v2, v0, Lm4/P;->a:Lm4/v;

    .line 6
    .line 7
    move-object v3, v2

    .line 8
    invoke-virtual {v3}, Lm4/v;->maxSize()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v3}, Lm4/v;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    iget-wide v4, v0, Lm4/P;->c:J

    .line 17
    .line 18
    iget-wide v6, v0, Lm4/P;->d:J

    .line 19
    .line 20
    iget-wide v8, v0, Lm4/P;->e:J

    .line 21
    .line 22
    iget-wide v10, v0, Lm4/P;->f:J

    .line 23
    .line 24
    iget-wide v12, v0, Lm4/P;->g:J

    .line 25
    .line 26
    iget-wide v14, v0, Lm4/P;->h:J

    .line 27
    .line 28
    move-object/from16 v16, v1

    .line 29
    .line 30
    move/from16 v17, v2

    .line 31
    .line 32
    iget-wide v1, v0, Lm4/P;->i:J

    .line 33
    .line 34
    move-wide/from16 v18, v1

    .line 35
    .line 36
    iget-wide v1, v0, Lm4/P;->j:J

    .line 37
    .line 38
    move-wide/from16 v20, v1

    .line 39
    .line 40
    iget v1, v0, Lm4/P;->k:I

    .line 41
    .line 42
    iget v2, v0, Lm4/P;->l:I

    .line 43
    .line 44
    move/from16 v22, v1

    .line 45
    .line 46
    iget v1, v0, Lm4/P;->m:I

    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v23

    .line 52
    move/from16 v25, v22

    .line 53
    .line 54
    move/from16 v22, v1

    .line 55
    .line 56
    move-object/from16 v1, v16

    .line 57
    .line 58
    move-wide/from16 v26, v20

    .line 59
    .line 60
    move/from16 v21, v2

    .line 61
    .line 62
    move/from16 v2, v17

    .line 63
    .line 64
    move-wide/from16 v16, v18

    .line 65
    .line 66
    move-wide/from16 v18, v26

    .line 67
    .line 68
    move/from16 v20, v25

    .line 69
    .line 70
    invoke-direct/range {v1 .. v24}, Lm4/Q;-><init>(IIJJJJJJJJIIIJ)V

    .line 71
    .line 72
    .line 73
    move-object/from16 v16, v1

    .line 74
    .line 75
    return-object v16
.end method
