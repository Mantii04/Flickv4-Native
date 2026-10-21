.class public final LR5/D0;
.super LR5/K0;
.source "SourceFile"


# instance fields
.field public final j:Ly5/c;


# direct methods
.method public constructor <init>(Ly5/k;LH5/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/k;",
            "LH5/p;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, LR5/K0;-><init>(Ly5/k;Z)V

    .line 3
    .line 4
    .line 5
    invoke-static {p2, p0, p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->createCoroutineUnintercepted(LH5/p;Ljava/lang/Object;Ly5/c;)Ly5/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, LR5/D0;->j:Ly5/c;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, LR5/D0;->j:Ly5/c;

    .line 2
    .line 3
    invoke-static {v0, p0}, LX5/a;->startCoroutineCancellable(Ly5/c;Ly5/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
