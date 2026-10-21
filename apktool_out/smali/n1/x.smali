.class public final Ln1/x;
.super Ln1/i;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ln1/z;


# direct methods
.method public constructor <init>(Ln1/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln1/x;->a:Ln1/z;

    .line 2
    .line 3
    invoke-direct {p0}, Ln1/i;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onInvalidation([Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "tables"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ln1/x;->a:Ln1/z;

    .line 7
    .line 8
    invoke-virtual {v0}, Ln1/z;->getExecutor()Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lflix/com/vision/activities/leanback/fragment/a;

    .line 13
    .line 14
    const/16 v3, 0xd

    .line 15
    .line 16
    invoke-direct {v2, v3, v0, p1}, Lflix/com/vision/activities/leanback/fragment/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
