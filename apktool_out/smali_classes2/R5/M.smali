.class public abstract LR5/M;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LR5/P;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "kotlinx.coroutines.main.delay"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, LW5/H;->systemProp(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object v0, LR5/L;->r:LR5/L;

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-static {}, LR5/U;->getMain()LR5/E0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, LW5/x;->isMissing(LR5/E0;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    instance-of v1, v0, LR5/P;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    check-cast v0, LR5/P;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    :goto_0
    sget-object v0, LR5/L;->r:LR5/L;

    .line 32
    .line 33
    :goto_1
    sput-object v0, LR5/M;->a:LR5/P;

    .line 34
    .line 35
    return-void
.end method

.method public static final getDefaultDelay()LR5/P;
    .locals 1

    .line 1
    sget-object v0, LR5/M;->a:LR5/P;

    .line 2
    .line 3
    return-object v0
.end method
