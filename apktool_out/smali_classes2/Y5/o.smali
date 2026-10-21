.class public final LY5/o;
.super LR5/E;
.source "SourceFile"


# static fields
.field public static final f:LY5/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LY5/o;

    .line 2
    .line 3
    invoke-direct {v0}, LR5/E;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LY5/o;->f:LY5/o;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public dispatch(Ly5/k;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object p1, LY5/e;->j:LY5/e;

    .line 2
    .line 3
    sget-object v0, LY5/n;->h:LY5/l;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, p2, v0, v1}, LY5/h;->dispatchWithContext$kotlinx_coroutines_core(Ljava/lang/Runnable;LY5/k;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public limitedParallelism(I)LR5/E;
    .locals 1

    .line 1
    invoke-static {p1}, LW5/n;->checkParallelism(I)V

    .line 2
    .line 3
    .line 4
    sget v0, LY5/n;->d:I

    .line 5
    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-super {p0, p1}, LR5/E;->limitedParallelism(I)LR5/E;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
