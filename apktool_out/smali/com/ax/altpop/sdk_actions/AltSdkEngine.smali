.class public Lcom/ax/altpop/sdk_actions/AltSdkEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/Object;

.field public static volatile d:Lcom/ax/altpop/sdk_actions/AltSdkEngine;


# instance fields
.field public final a:Lcom/ax/altpop/sdk_actions/AltSrvc;

.field public b:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->c:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/ax/altpop/sdk_actions/AltSrvc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->a:Lcom/ax/altpop/sdk_actions/AltSrvc;

    .line 5
    .line 6
    :try_start_0
    sget-object p1, LQ1/c;->r:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method

.method private native getParamBool(Ljava/lang/String;)Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native getParamLong(Ljava/lang/String;)J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native setParam(Ljava/lang/String;D)Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native setParam(Ljava/lang/String;J)Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native setParam(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native setParam(Ljava/lang/String;Z)Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    invoke-static {v0}, Lv4/a;->a(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->getParamLong(Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    const/16 v0, 0x24

    .line 2
    .line 3
    invoke-static {v0}, Lv4/a;->a(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->getParamBool(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final c()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->a:Lcom/ax/altpop/sdk_actions/AltSrvc;

    .line 2
    .line 3
    invoke-static {v0}, LQ1/b;->a(Landroid/content/Context;)LQ1/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, LQ1/c;->k:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v2, LQ1/b;->a:Landroid/content/SharedPreferences;

    .line 13
    .line 14
    const/4 v3, -0x1

    .line 15
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-gtz v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v1, Ljava/util/Timer;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->b:Ljava/util/Timer;

    .line 28
    .line 29
    new-instance v3, LP1/a;

    .line 30
    .line 31
    invoke-direct {v3, p0, v0}, LP1/a;-><init>(Lcom/ax/altpop/sdk_actions/AltSdkEngine;LQ1/b;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->b:Ljava/util/Timer;

    .line 35
    .line 36
    const-wide/32 v4, 0xea60

    .line 37
    .line 38
    .line 39
    const-wide/32 v6, 0xea60

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->a:Lcom/ax/altpop/sdk_actions/AltSrvc;

    .line 2
    .line 3
    invoke-static {v0}, LQ1/b;->a(Landroid/content/Context;)LQ1/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x1d

    .line 8
    .line 9
    invoke-static {v1}, Lv4/a;->a(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, LQ1/c;->d:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object v0, LQ1/b;->a:Landroid/content/SharedPreferences;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-direct {p0, v1, v0}, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->setParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    const/16 v0, 0x1e

    .line 29
    .line 30
    invoke-static {v0}, Lv4/a;->a(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->a:Lcom/ax/altpop/sdk_actions/AltSrvc;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {p0, v0, v1}, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->setParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    const/16 v0, 0x1f

    .line 48
    .line 49
    invoke-static {v0}, Lv4/a;->a(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sget-object v1, LQ1/c;->c:Ljava/lang/String;

    .line 54
    .line 55
    sget-object v2, LQ1/b;->a:Landroid/content/SharedPreferences;

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-direct {p0, v0, v1}, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->setParam(Ljava/lang/String;Z)Z

    .line 63
    .line 64
    .line 65
    const/16 v0, 0x20

    .line 66
    .line 67
    invoke-static {v0}, Lv4/a;->a(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sget-object v1, LQ1/c;->e:Ljava/lang/String;

    .line 72
    .line 73
    sget-object v2, LQ1/b;->a:Landroid/content/SharedPreferences;

    .line 74
    .line 75
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-direct {p0, v0, v1}, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->setParam(Ljava/lang/String;Z)Z

    .line 80
    .line 81
    .line 82
    const/16 v0, 0x1c

    .line 83
    .line 84
    invoke-static {v0}, Lv4/a;->a(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const/4 v1, 0x1

    .line 89
    invoke-direct {p0, v0, v1}, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->setParam(Ljava/lang/String;Z)Z

    .line 90
    .line 91
    .line 92
    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    iget-object v1, p0, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->a:Lcom/ax/altpop/sdk_actions/AltSrvc;

    .line 94
    .line 95
    const-string v2, "com.ax.altpop.sdk_actions.AltSdkEngine"

    .line 96
    .line 97
    if-nez v0, :cond_0

    .line 98
    .line 99
    :try_start_1
    const-string v0, "param not valid"

    .line 100
    .line 101
    invoke-static {v1}, LQ1/a;->a(Landroid/content/Context;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_1

    .line 106
    .line 107
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    const-string v0, "start"

    .line 112
    .line 113
    invoke-static {v1}, LQ1/a;->a(Landroid/content/Context;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_1

    .line 118
    .line 119
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    :cond_1
    :goto_0
    sget-object v0, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->d:Lcom/ax/altpop/sdk_actions/AltSdkEngine;

    .line 123
    .line 124
    if-eqz v0, :cond_2

    .line 125
    .line 126
    sget-object v0, LQ1/c;->k:Ljava/lang/String;

    .line 127
    .line 128
    sget-object v1, LQ1/b;->a:Landroid/content/SharedPreferences;

    .line 129
    .line 130
    const/4 v2, -0x1

    .line 131
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-lez v0, :cond_2

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->c()V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    .line 139
    .line 140
    :catch_0
    :cond_2
    return-void
.end method

.method public stopSDK()V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    const/16 v0, 0x1c

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Lv4/a;->a(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->setParam(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->b:Ljava/util/Timer;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :catch_0
    :cond_0
    return-void
.end method
