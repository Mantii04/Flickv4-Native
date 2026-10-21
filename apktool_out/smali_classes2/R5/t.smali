.class public final LR5/t;
.super LR5/r0;
.source "SourceFile"

# interfaces
.implements LR5/s;


# instance fields
.field public final m:LR5/u;


# direct methods
.method public constructor <init>(LR5/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LR5/r0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LR5/t;->m:LR5/u;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public childCancelled(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LR5/v0;->getJob()LR5/A0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, LR5/A0;->childCancelled(Ljava/lang/Throwable;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getParent()LR5/q0;
    .locals 1

    .line 1
    invoke-virtual {p0}, LR5/v0;->getJob()LR5/A0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LR5/t;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lu5/j;->a:Lu5/j;

    return-object p1
.end method

.method public invoke(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, LR5/v0;->getJob()LR5/A0;

    move-result-object p1

    iget-object v0, p0, LR5/t;->m:LR5/u;

    check-cast v0, LR5/A0;

    invoke-virtual {v0, p1}, LR5/A0;->parentCancelled(LR5/I0;)V

    return-void
.end method
