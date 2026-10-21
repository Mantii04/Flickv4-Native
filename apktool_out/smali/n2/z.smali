.class public final Ln2/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lp2/a;

.field public volatile b:Lp2/c;


# direct methods
.method public constructor <init>(Lp2/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln2/z;->a:Lp2/a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getDiskCache()Lp2/c;
    .locals 1

    .line 1
    iget-object v0, p0, Ln2/z;->b:Lp2/c;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Ln2/z;->b:Lp2/c;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Ln2/z;->a:Lp2/a;

    .line 11
    .line 12
    check-cast v0, Lp2/g;

    .line 13
    .line 14
    invoke-virtual {v0}, Lp2/g;->build()Lp2/c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Ln2/z;->b:Lp2/c;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Ln2/z;->b:Lp2/c;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Lp2/d;

    .line 28
    .line 29
    invoke-direct {v0}, Lp2/d;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Ln2/z;->b:Lp2/c;

    .line 33
    .line 34
    :cond_1
    monitor-exit p0

    .line 35
    goto :goto_2

    .line 36
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw v0

    .line 38
    :cond_2
    :goto_2
    iget-object v0, p0, Ln2/z;->b:Lp2/c;

    .line 39
    .line 40
    return-object v0
.end method
