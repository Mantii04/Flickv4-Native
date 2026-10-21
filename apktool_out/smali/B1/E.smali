.class public final LB1/E;
.super LB1/L;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LB1/D;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, LB1/D;-><init>(Lkotlin/jvm/internal/g;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(LB1/C;)V
    .locals 2

    .line 1
    const-string v0, "builder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, LB1/J;->getId$work_runtime_release()Ljava/util/UUID;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, LB1/J;->getWorkSpec$work_runtime_release()LK1/E;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p1}, LB1/J;->getTags$work_runtime_release()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p0, v0, v1, p1}, LB1/L;-><init>(Ljava/util/UUID;LK1/E;Ljava/util/Set;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
