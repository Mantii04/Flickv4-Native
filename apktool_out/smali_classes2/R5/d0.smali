.class public abstract LR5/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LW5/G;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LW5/G;

    .line 2
    .line 3
    const-string v1, "REMOVED_TASK"

    .line 4
    .line 5
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, LW5/G;

    .line 9
    .line 10
    const-string v1, "CLOSED_EMPTY"

    .line 11
    .line 12
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, LR5/d0;->a:LW5/G;

    .line 16
    .line 17
    return-void
.end method

.method public static final synthetic access$getCLOSED_EMPTY$p()LW5/G;
    .locals 1

    .line 1
    sget-object v0, LR5/d0;->a:LW5/G;

    .line 2
    .line 3
    return-object v0
.end method
