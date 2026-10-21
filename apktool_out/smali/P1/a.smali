.class public final LP1/a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/ax/altpop/sdk_actions/AltSdkEngine;


# direct methods
.method public constructor <init>(Lcom/ax/altpop/sdk_actions/AltSdkEngine;LQ1/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, LP1/a;->b:Lcom/ax/altpop/sdk_actions/AltSdkEngine;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, LP1/a;->b:Lcom/ax/altpop/sdk_actions/AltSdkEngine;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->a:Lcom/ax/altpop/sdk_actions/AltSrvc;

    .line 4
    .line 5
    invoke-static {v0}, LQ1/b;->a(Landroid/content/Context;)LQ1/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    const-wide/16 v3, -0x1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object v0, LQ1/c;->l:Ljava/lang/String;

    .line 16
    .line 17
    sget-object v5, LQ1/b;->a:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    invoke-interface {v5, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-wide v5, v1

    .line 25
    :goto_0
    iget-object v0, p0, LP1/a;->b:Lcom/ax/altpop/sdk_actions/AltSdkEngine;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->a()J

    .line 28
    .line 29
    .line 30
    move-result-wide v7

    .line 31
    sget-object v0, LQ1/c;->k:Ljava/lang/String;

    .line 32
    .line 33
    sget-object v9, LQ1/b;->a:Landroid/content/SharedPreferences;

    .line 34
    .line 35
    const/4 v10, -0x1

    .line 36
    invoke-interface {v9, v0, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    sget-object v9, LQ1/c;->l:Ljava/lang/String;

    .line 41
    .line 42
    add-long/2addr v5, v7

    .line 43
    invoke-static {v9, v5, v6}, LQ1/b;->a(Ljava/lang/String;J)V

    .line 44
    .line 45
    .line 46
    if-lez v0, :cond_2

    .line 47
    .line 48
    iget-object v5, p0, LP1/a;->b:Lcom/ax/altpop/sdk_actions/AltSdkEngine;

    .line 49
    .line 50
    iget-object v5, v5, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->a:Lcom/ax/altpop/sdk_actions/AltSrvc;

    .line 51
    .line 52
    invoke-static {v5}, LQ1/b;->a(Landroid/content/Context;)LQ1/b;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    if-eqz v5, :cond_1

    .line 57
    .line 58
    sget-object v1, LQ1/b;->a:Landroid/content/SharedPreferences;

    .line 59
    .line 60
    invoke-interface {v1, v9, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    :cond_1
    int-to-long v3, v0

    .line 65
    const-wide/16 v5, 0x3e8

    .line 66
    .line 67
    mul-long/2addr v3, v5

    .line 68
    cmp-long v0, v1, v3

    .line 69
    .line 70
    if-lez v0, :cond_2

    .line 71
    .line 72
    iget-object v0, p0, LP1/a;->b:Lcom/ax/altpop/sdk_actions/AltSdkEngine;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->stopSDK()V

    .line 75
    .line 76
    .line 77
    sget-object v0, LQ1/c;->m:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    .line 81
    .line 82
    move-result-wide v1

    .line 83
    invoke-static {v0, v1, v2}, LQ1/b;->a(Ljava/lang/String;J)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, LP1/a;->b:Lcom/ax/altpop/sdk_actions/AltSdkEngine;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->b:Ljava/util/Timer;

    .line 89
    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 93
    .line 94
    .line 95
    :cond_2
    return-void
.end method
