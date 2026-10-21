.class public final Lp5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo5/d;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lio/hopmonsdk/Hopmn;

.field public final synthetic c:I

.field public final synthetic d:Lio/hopmonsdk/service/MoneytiserService;


# direct methods
.method public constructor <init>(Lio/hopmonsdk/service/MoneytiserService;Ljava/lang/String;Lio/hopmonsdk/Hopmn;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp5/c;->d:Lio/hopmonsdk/service/MoneytiserService;

    .line 5
    .line 6
    iput-object p2, p0, Lp5/c;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lp5/c;->b:Lio/hopmonsdk/Hopmn;

    .line 9
    .line 10
    iput p4, p0, Lp5/c;->c:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget v0, Lio/hopmonsdk/service/MoneytiserService;->m:I

    .line 2
    .line 3
    iget v0, p0, Lp5/c;->c:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    add-int/lit8 v2, v0, 0x1

    .line 7
    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const/4 v4, 0x2

    .line 13
    new-array v4, v4, [Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    aput-object v3, v4, v5

    .line 17
    .line 18
    aput-object p1, v4, v1

    .line 19
    .line 20
    const-string p1, "MoneytiserService"

    .line 21
    .line 22
    const-string v1, "Seed-mode registration failed on attempt %d: %s"

    .line 23
    .line 24
    invoke-static {p1, v1, v4}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x5

    .line 28
    if-ge v0, v1, :cond_0

    .line 29
    .line 30
    int-to-long v1, v2

    .line 31
    const-wide/16 v3, 0xbb8

    .line 32
    .line 33
    mul-long/2addr v1, v3

    .line 34
    iget-object p1, p0, Lp5/c;->d:Lio/hopmonsdk/service/MoneytiserService;

    .line 35
    .line 36
    iget-object p1, p1, Lio/hopmonsdk/service/MoneytiserService;->j:Landroid/os/Handler;

    .line 37
    .line 38
    new-instance v3, Landroidx/media3/common/util/d;

    .line 39
    .line 40
    iget-object v4, p0, Lp5/c;->a:Ljava/lang/String;

    .line 41
    .line 42
    const/4 v5, 0x3

    .line 43
    invoke-direct {v3, p0, v4, v0, v5}, Landroidx/media3/common/util/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    new-array v0, v5, [Ljava/lang/Object;

    .line 51
    .line 52
    const-string v1, "Seed-mode registration failed after max retries"

    .line 53
    .line 54
    invoke-static {p1, v1, v0}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 7

    .line 1
    sget v0, Lio/hopmonsdk/service/MoneytiserService;->m:I

    .line 2
    .line 3
    iget-object v0, p0, Lp5/c;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v0, v1, v2

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object p1, v1, v2

    .line 13
    .line 14
    const-string v2, "Seed-mode device %s registered, response: %s"

    .line 15
    .line 16
    const-string v3, "MoneytiserService"

    .line 17
    .line 18
    invoke-static {v3, v2, v1}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lp5/c;->d:Lio/hopmonsdk/service/MoneytiserService;

    .line 22
    .line 23
    iget-object v2, p0, Lp5/c;->b:Lio/hopmonsdk/Hopmn;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const-string v3, "[a-zA-Z]*"

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    invoke-virtual {v2}, Lio/hopmonsdk/Hopmn;->getDataStore()Lk5/a;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    sget v4, Lio/hopmon/R$string;->hopmon_country_key:I

    .line 40
    .line 41
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v3, v4, p1}, Lk5/a;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p1}, Lio/hopmonsdk/Hopmn;->setCountry(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {v2}, Lio/hopmonsdk/Hopmn;->getDataStore()Lk5/a;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    sget v4, Lio/hopmon/R$string;->hopmon_uid_key:I

    .line 56
    .line 57
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v3, v4, v0}, Lk5/a;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v0}, Lio/hopmonsdk/Hopmn;->setUid(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lio/hopmonsdk/Hopmn;->getDataStore()Lk5/a;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    .line 73
    .line 74
    move-result-wide v4

    .line 75
    const-string v6, "hopmon.registered_at"

    .line 76
    .line 77
    invoke-virtual {v3, v6, v4, v5}, Lk5/a;->set(Ljava/lang/String;J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Lio/hopmonsdk/Hopmn;->getDataStore()Lk5/a;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const-string v3, "hopmon.registered_version"

    .line 85
    .line 86
    const-string v4, "15.0.17"

    .line 87
    .line 88
    invoke-virtual {v2, v3, v4}, Lk5/a;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v1, Lio/hopmonsdk/service/MoneytiserService;->b:Lm5/b;

    .line 92
    .line 93
    invoke-virtual {v1, v0, p1}, Lm5/b;->schedule(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method
