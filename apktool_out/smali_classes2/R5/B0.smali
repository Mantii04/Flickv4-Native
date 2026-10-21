.class public abstract LR5/B0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LW5/G;

.field public static final b:LW5/G;

.field public static final c:LW5/G;

.field public static final d:LW5/G;

.field public static final e:LW5/G;

.field public static final f:LR5/X;

.field public static final g:LR5/X;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LW5/G;

    .line 2
    .line 3
    const-string v1, "COMPLETING_ALREADY"

    .line 4
    .line 5
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, LR5/B0;->a:LW5/G;

    .line 9
    .line 10
    new-instance v0, LW5/G;

    .line 11
    .line 12
    const-string v1, "COMPLETING_WAITING_CHILDREN"

    .line 13
    .line 14
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, LR5/B0;->b:LW5/G;

    .line 18
    .line 19
    new-instance v0, LW5/G;

    .line 20
    .line 21
    const-string v1, "COMPLETING_RETRY"

    .line 22
    .line 23
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, LR5/B0;->c:LW5/G;

    .line 27
    .line 28
    new-instance v0, LW5/G;

    .line 29
    .line 30
    const-string v1, "TOO_LATE_TO_CANCEL"

    .line 31
    .line 32
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, LR5/B0;->d:LW5/G;

    .line 36
    .line 37
    new-instance v0, LW5/G;

    .line 38
    .line 39
    const-string v1, "SEALED"

    .line 40
    .line 41
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, LR5/B0;->e:LW5/G;

    .line 45
    .line 46
    new-instance v0, LR5/X;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-direct {v0, v1}, LR5/X;-><init>(Z)V

    .line 50
    .line 51
    .line 52
    sput-object v0, LR5/B0;->f:LR5/X;

    .line 53
    .line 54
    new-instance v0, LR5/X;

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    invoke-direct {v0, v1}, LR5/X;-><init>(Z)V

    .line 58
    .line 59
    .line 60
    sput-object v0, LR5/B0;->g:LR5/X;

    .line 61
    .line 62
    return-void
.end method

.method public static final synthetic access$getCOMPLETING_ALREADY$p()LW5/G;
    .locals 1

    .line 1
    sget-object v0, LR5/B0;->a:LW5/G;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getCOMPLETING_RETRY$p()LW5/G;
    .locals 1

    .line 1
    sget-object v0, LR5/B0;->c:LW5/G;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getEMPTY_ACTIVE$p()LR5/X;
    .locals 1

    .line 1
    sget-object v0, LR5/B0;->g:LR5/X;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getEMPTY_NEW$p()LR5/X;
    .locals 1

    .line 1
    sget-object v0, LR5/B0;->f:LR5/X;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getSEALED$p()LW5/G;
    .locals 1

    .line 1
    sget-object v0, LR5/B0;->e:LW5/G;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getTOO_LATE_TO_CANCEL$p()LW5/G;
    .locals 1

    .line 1
    sget-object v0, LR5/B0;->d:LW5/G;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final boxIncomplete(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, LR5/k0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, LR5/l0;

    .line 6
    .line 7
    check-cast p0, LR5/k0;

    .line 8
    .line 9
    invoke-direct {v0, p0}, LR5/l0;-><init>(LR5/k0;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    return-object p0
.end method

.method public static final unboxState(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, LR5/l0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, LR5/l0;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v0, v0, LR5/l0;->a:LR5/k0;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    return-object v0

    .line 18
    :cond_2
    :goto_1
    return-object p0
.end method
