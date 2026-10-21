.class public final Lf1/t0;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lf1/p0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lf1/t0;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/t0;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lf1/t0;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lf1/p0;

    .line 8
    .line 9
    if-eqz v0, :cond_8

    .line 10
    .line 11
    iget v1, p1, Landroid/os/Message;->what:I

    .line 12
    .line 13
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 14
    .line 15
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 16
    .line 17
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v5, 0x1

    .line 24
    packed-switch v1, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :pswitch_0
    invoke-virtual {v0, v3}, Lf1/p0;->onControllerReleasedByProvider(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :pswitch_1
    if-eqz v4, :cond_0

    .line 33
    .line 34
    instance-of p1, v4, Landroid/os/Bundle;

    .line 35
    .line 36
    if-eqz p1, :cond_6

    .line 37
    .line 38
    :cond_0
    check-cast v4, Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-virtual {v0, v3, v4}, Lf1/p0;->onDynamicRouteDescriptorsChanged(ILandroid/os/Bundle;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    goto :goto_3

    .line 45
    :pswitch_2
    instance-of p1, v4, Landroid/os/Bundle;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    check-cast v4, Landroid/os/Bundle;

    .line 50
    .line 51
    invoke-virtual {v0, v2, v4}, Lf1/p0;->onDynamicGroupRouteControllerCreated(ILandroid/os/Bundle;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const-string p1, "MediaRouteProviderProxy"

    .line 56
    .line 57
    const-string v0, "No further information on the dynamic group controller"

    .line 58
    .line 59
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :pswitch_3
    if-eqz v4, :cond_2

    .line 64
    .line 65
    instance-of p1, v4, Landroid/os/Bundle;

    .line 66
    .line 67
    if-eqz p1, :cond_6

    .line 68
    .line 69
    :cond_2
    check-cast v4, Landroid/os/Bundle;

    .line 70
    .line 71
    invoke-virtual {v0, v4}, Lf1/p0;->onDescriptorChanged(Landroid/os/Bundle;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    goto :goto_3

    .line 76
    :pswitch_4
    if-eqz v4, :cond_3

    .line 77
    .line 78
    instance-of v1, v4, Landroid/os/Bundle;

    .line 79
    .line 80
    if-eqz v1, :cond_6

    .line 81
    .line 82
    :cond_3
    if-nez p1, :cond_4

    .line 83
    .line 84
    const/4 p1, 0x0

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    const-string v1, "error"

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :goto_0
    check-cast v4, Landroid/os/Bundle;

    .line 93
    .line 94
    invoke-virtual {v0, v2, p1, v4}, Lf1/p0;->onControlRequestFailed(ILjava/lang/String;Landroid/os/Bundle;)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    goto :goto_3

    .line 99
    :pswitch_5
    if-eqz v4, :cond_5

    .line 100
    .line 101
    instance-of p1, v4, Landroid/os/Bundle;

    .line 102
    .line 103
    if-eqz p1, :cond_6

    .line 104
    .line 105
    :cond_5
    check-cast v4, Landroid/os/Bundle;

    .line 106
    .line 107
    invoke-virtual {v0, v2, v4}, Lf1/p0;->onControlRequestSucceeded(ILandroid/os/Bundle;)Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    goto :goto_3

    .line 112
    :pswitch_6
    if-eqz v4, :cond_7

    .line 113
    .line 114
    instance-of p1, v4, Landroid/os/Bundle;

    .line 115
    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_6
    :goto_1
    const/4 v5, 0x0

    .line 120
    goto :goto_3

    .line 121
    :cond_7
    :goto_2
    check-cast v4, Landroid/os/Bundle;

    .line 122
    .line 123
    invoke-virtual {v0, v2, v3, v4}, Lf1/p0;->onRegistered(IILandroid/os/Bundle;)Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    goto :goto_3

    .line 128
    :pswitch_7
    invoke-virtual {v0, v2}, Lf1/p0;->onGenericFailure(I)V

    .line 129
    .line 130
    .line 131
    :goto_3
    :pswitch_8
    if-nez v5, :cond_8

    .line 132
    .line 133
    sget p1, Lf1/x0;->q:I

    .line 134
    .line 135
    :cond_8
    return-void

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
