.class final Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements LH5/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "LH5/p;"
    }
.end annotation


# static fields
.field public static final b:Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;->b:Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(LW5/M;Ly5/i;)LW5/M;
    .locals 2

    .line 2
    instance-of v0, p2, LR5/N0;

    if-eqz v0, :cond_0

    .line 3
    check-cast p2, LR5/N0;

    iget-object v0, p1, LW5/M;->a:Ly5/k;

    move-object v1, p2

    check-cast v1, LR5/H;

    invoke-virtual {v1, v0}, LR5/H;->b(Ly5/k;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, LW5/M;->append(LR5/N0;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, LW5/M;

    check-cast p2, Ly5/i;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;->invoke(LW5/M;Ly5/i;)LW5/M;

    move-result-object p1

    return-object p1
.end method
