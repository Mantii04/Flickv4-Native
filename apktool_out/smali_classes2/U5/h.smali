.class public final LU5/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU5/b;


# instance fields
.field public final synthetic b:LU5/b;

.field public final synthetic e:LH5/p;


# direct methods
.method public constructor <init>(LU5/b;LH5/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, LU5/h;->b:LU5/b;

    .line 2
    .line 3
    iput-object p2, p0, LU5/h;->e:LH5/p;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public collect(LU5/c;Ly5/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LU5/c;",
            "Ly5/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;

    .line 7
    .line 8
    iget-object v2, p0, LU5/h;->e:LH5/p;

    .line 9
    .line 10
    invoke-direct {v1, v0, p1, v2}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;LU5/c;LH5/p;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, LU5/h;->b:LU5/b;

    .line 14
    .line 15
    invoke-interface {p1, v1, p2}, LU5/b;->collect(LU5/c;Ly5/c;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-ne p1, p2, :cond_0

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    sget-object p1, Lu5/j;->a:Lu5/j;

    .line 27
    .line 28
    return-object p1
.end method
