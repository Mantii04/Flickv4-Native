.class public final LD1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:LD1/c;

.field public final b:LB1/G;

.field public final c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "DelayedWorkTracker"

    .line 2
    .line 3
    invoke-static {v0}, LB1/t;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LD1/b;->d:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(LD1/c;LB1/G;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LD1/b;->a:LD1/c;

    .line 5
    .line 6
    iput-object p2, p0, LD1/b;->b:LB1/G;

    .line 7
    .line 8
    new-instance p1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, LD1/b;->c:Ljava/util/HashMap;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public schedule(LK1/E;)V
    .locals 7

    .line 1
    iget-object v0, p0, LD1/b;->c:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v1, p1, LK1/E;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Runnable;

    .line 10
    .line 11
    iget-object v2, p0, LD1/b;->b:LB1/G;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    move-object v3, v2

    .line 16
    check-cast v3, LC1/d;

    .line 17
    .line 18
    invoke-virtual {v3, v1}, LC1/d;->cancel(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    new-instance v1, LD1/a;

    .line 22
    .line 23
    invoke-direct {v1, p0, p1}, LD1/a;-><init>(LD1/b;LK1/E;)V

    .line 24
    .line 25
    .line 26
    iget-object v3, p1, LK1/E;->a:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    invoke-virtual {p1}, LK1/E;->calculateNextRunTime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v5

    .line 39
    sub-long/2addr v5, v3

    .line 40
    check-cast v2, LC1/d;

    .line 41
    .line 42
    invoke-virtual {v2, v5, v6, v1}, LC1/d;->scheduleWithDelay(JLjava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public unschedule(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, LD1/b;->c:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Runnable;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, LD1/b;->b:LB1/G;

    .line 12
    .line 13
    check-cast v0, LC1/d;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, LC1/d;->cancel(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
