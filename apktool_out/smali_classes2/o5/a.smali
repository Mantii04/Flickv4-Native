.class public final synthetic Lo5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lo5/e;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Z

.field public final synthetic j:Lo5/d;


# direct methods
.method public synthetic constructor <init>(Lo5/e;Ljava/lang/String;ZLo5/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo5/a;->b:Lo5/e;

    iput-object p2, p0, Lo5/a;->e:Ljava/lang/String;

    iput-boolean p3, p0, Lo5/a;->f:Z

    iput-object p4, p0, Lo5/a;->j:Lo5/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lo5/a;->b:Lo5/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo5/e;->isCacheFresh()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lo5/e;->getCachedApiIps()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lo5/e;->d()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object v3, v0, Lo5/e;->d:Landroid/os/Handler;

    .line 23
    .line 24
    iget-object v4, p0, Lo5/a;->e:Ljava/lang/String;

    .line 25
    .line 26
    iget-boolean v5, p0, Lo5/a;->f:Z

    .line 27
    .line 28
    iget-object v6, p0, Lo5/a;->j:Lo5/d;

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, v4, v1, v5}, Lo5/e;->f(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    new-instance v0, Lo5/b;

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-direct {v0, v6, v1, v2}, Lo5/b;-><init>(Lo5/d;Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    const/4 v1, 0x0

    .line 49
    new-array v1, v1, [Ljava/lang/Object;

    .line 50
    .line 51
    const-string v2, "SeedDiscovery"

    .line 52
    .line 53
    const-string v7, "All API IPs failed, forcing cache refresh..."

    .line 54
    .line 55
    invoke-static {v2, v7, v1}, Ls5/b;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lo5/e;->d()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    new-instance v0, Lo5/b;

    .line 69
    .line 70
    const-string v1, "All API IPs failed and seed refresh returned no IPs"

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-direct {v0, v6, v1, v2}, Lo5/b;-><init>(Lo5/d;Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    invoke-virtual {v0, v4, v1, v5}, Lo5/e;->f(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    new-instance v1, Lo5/b;

    .line 87
    .line 88
    const/4 v2, 0x1

    .line 89
    invoke-direct {v1, v6, v0, v2}, Lo5/b;-><init>(Lo5/d;Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_3
    new-instance v0, Lo5/b;

    .line 97
    .line 98
    const-string v1, "All API IPs failed after seed refresh"

    .line 99
    .line 100
    const/4 v2, 0x0

    .line 101
    invoke-direct {v0, v6, v1, v2}, Lo5/b;-><init>(Lo5/d;Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    .line 106
    .line 107
    return-void
.end method
