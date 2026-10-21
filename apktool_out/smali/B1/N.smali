.class public final LB1/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LM1/g;

.field public final synthetic e:Landroidx/work/Worker;


# direct methods
.method public constructor <init>(Landroidx/work/Worker;LM1/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LB1/N;->e:Landroidx/work/Worker;

    .line 5
    .line 6
    iput-object p2, p0, LB1/N;->b:LM1/g;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LB1/N;->b:LM1/g;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, LB1/N;->e:Landroidx/work/Worker;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/work/Worker;->getForegroundInfo()LB1/i;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, LM1/g;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    invoke-virtual {v0, v1}, LM1/g;->setException(Ljava/lang/Throwable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
