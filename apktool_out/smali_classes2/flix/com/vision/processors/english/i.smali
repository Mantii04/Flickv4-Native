.class public final synthetic Lflix/com/vision/processors/english/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(LZ2/m;LS2/E;ILjava/lang/Runnable;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lflix/com/vision/processors/english/i;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lflix/com/vision/processors/english/i;->e:Ljava/lang/Object;

    iput-object p2, p0, Lflix/com/vision/processors/english/i;->f:Ljava/lang/Object;

    iput p3, p0, Lflix/com/vision/processors/english/i;->m:I

    iput-object p4, p0, Lflix/com/vision/processors/english/i;->j:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lflix/com/vision/processors/english/m;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 2
    iput p5, p0, Lflix/com/vision/processors/english/i;->b:I

    iput-object p1, p0, Lflix/com/vision/processors/english/i;->e:Ljava/lang/Object;

    iput-object p2, p0, Lflix/com/vision/processors/english/i;->f:Ljava/lang/Object;

    iput-object p3, p0, Lflix/com/vision/processors/english/i;->j:Ljava/lang/Object;

    iput p4, p0, Lflix/com/vision/processors/english/i;->m:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lflix/com/vision/processors/english/i;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lflix/com/vision/processors/english/i;->f:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, LS2/E;

    .line 9
    .line 10
    iget v1, p0, Lflix/com/vision/processors/english/i;->m:I

    .line 11
    .line 12
    iget-object v2, p0, Lflix/com/vision/processors/english/i;->j:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Ljava/lang/Runnable;

    .line 15
    .line 16
    iget-object v3, p0, Lflix/com/vision/processors/english/i;->e:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v3, LZ2/m;

    .line 19
    .line 20
    iget-object v4, v3, LZ2/m;->f:Lb3/b;

    .line 21
    .line 22
    :try_start_0
    iget-object v5, v3, LZ2/m;->c:La3/d;

    .line 23
    .line 24
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    new-instance v6, LA0/a;

    .line 28
    .line 29
    const/16 v7, 0xf

    .line 30
    .line 31
    invoke-direct {v6, v5, v7}, LA0/a;-><init>(Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    move-object v5, v4

    .line 35
    check-cast v5, La3/r;

    .line 36
    .line 37
    invoke-virtual {v5, v6}, La3/r;->runCriticalSection(Lb3/a;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    iget-object v5, v3, LZ2/m;->a:Landroid/content/Context;

    .line 41
    .line 42
    const-string v6, "connectivity"

    .line 43
    .line 44
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    check-cast v5, Landroid/net/ConnectivityManager;

    .line 49
    .line 50
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    if-eqz v5, :cond_0

    .line 55
    .line 56
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_0

    .line 61
    .line 62
    invoke-virtual {v3, v0, v1}, LZ2/m;->logAndUpdateState(LS2/E;I)LT2/i;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    goto :goto_2

    .line 68
    :cond_0
    new-instance v5, LZ2/j;

    .line 69
    .line 70
    const/4 v6, 0x0

    .line 71
    invoke-direct {v5, v3, v0, v1, v6}, LZ2/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 72
    .line 73
    .line 74
    check-cast v4, La3/r;

    .line 75
    .line 76
    invoke-virtual {v4, v5}, La3/r;->runCriticalSection(Lb3/a;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    :goto_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catch_0
    :try_start_1
    iget-object v3, v3, LZ2/m;->d:LZ2/q;

    .line 84
    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    check-cast v3, LZ2/d;

    .line 88
    .line 89
    invoke-virtual {v3, v0, v1}, LZ2/d;->schedule(LS2/E;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :goto_1
    return-void

    .line 94
    :goto_2
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 95
    .line 96
    .line 97
    throw v0

    .line 98
    :pswitch_0
    iget v0, p0, Lflix/com/vision/processors/english/i;->m:I

    .line 99
    .line 100
    add-int/lit8 v0, v0, 0x1

    .line 101
    .line 102
    iget-object v1, p0, Lflix/com/vision/processors/english/i;->e:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v1, Lflix/com/vision/processors/english/m;

    .line 105
    .line 106
    iget-object v2, p0, Lflix/com/vision/processors/english/i;->f:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v2, Ljava/lang/String;

    .line 109
    .line 110
    iget-object v3, p0, Lflix/com/vision/processors/english/i;->j:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v3, Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v1, v0, v2, v3}, Lflix/com/vision/processors/english/m;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :pswitch_1
    iget v0, p0, Lflix/com/vision/processors/english/i;->m:I

    .line 119
    .line 120
    add-int/lit8 v0, v0, 0x1

    .line 121
    .line 122
    iget-object v1, p0, Lflix/com/vision/processors/english/i;->e:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v1, Lflix/com/vision/processors/english/m;

    .line 125
    .line 126
    iget-object v2, p0, Lflix/com/vision/processors/english/i;->f:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v2, Ljava/lang/String;

    .line 129
    .line 130
    iget-object v3, p0, Lflix/com/vision/processors/english/i;->j:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v3, Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v1, v0, v2, v3}, Lflix/com/vision/processors/english/m;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
