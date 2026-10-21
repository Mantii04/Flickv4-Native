.class public final LZ2/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:La3/d;

.field public final c:LZ2/q;

.field public final d:Lb3/b;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;La3/d;LZ2/q;Lb3/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LZ2/o;->a:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    iput-object p2, p0, LZ2/o;->b:La3/d;

    .line 7
    .line 8
    iput-object p3, p0, LZ2/o;->c:LZ2/q;

    .line 9
    .line 10
    iput-object p4, p0, LZ2/o;->d:Lb3/b;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public ensureContextsScheduled()V
    .locals 2

    .line 1
    new-instance v0, LA3/d;

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, LA3/d;-><init>(Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, LZ2/o;->a:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
