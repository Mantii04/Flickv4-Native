.class public final LR5/o0;
.super LR5/v0;
.source "SourceFile"


# instance fields
.field public final m:LH5/l;


# direct methods
.method public constructor <init>(LH5/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LH5/l;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LR5/v0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LR5/o0;->m:LH5/l;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LR5/o0;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lu5/j;->a:Lu5/j;

    return-object p1
.end method

.method public invoke(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget-object v0, p0, LR5/o0;->m:LH5/l;

    invoke-interface {v0, p1}, LH5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
