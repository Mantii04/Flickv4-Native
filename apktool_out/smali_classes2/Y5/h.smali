.class public abstract LY5/h;
.super LR5/f0;
.source "SourceFile"


# instance fields
.field public final f:LY5/c;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, LR5/f0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LY5/c;

    .line 5
    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move-wide v3, p3

    .line 9
    move-object v5, p5

    .line 10
    invoke-direct/range {v0 .. v5}, LY5/c;-><init>(IIJLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, LY5/h;->f:LY5/c;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public dispatch(Ly5/k;Ljava/lang/Runnable;)V
    .locals 6

    .line 1
    const/4 v4, 0x6

    .line 2
    const/4 v5, 0x0

    .line 3
    iget-object v0, p0, LY5/h;->f:LY5/c;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move-object v1, p2

    .line 8
    invoke-static/range {v0 .. v5}, LY5/c;->dispatch$default(LY5/c;Ljava/lang/Runnable;LY5/k;ZILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final dispatchWithContext$kotlinx_coroutines_core(Ljava/lang/Runnable;LY5/k;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, LY5/h;->f:LY5/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, LY5/c;->dispatch(Ljava/lang/Runnable;LY5/k;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
