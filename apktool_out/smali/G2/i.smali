.class public abstract LG2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LG2/g;

.field public static final b:LG2/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LG2/g;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LG2/i;->a:LG2/g;

    .line 7
    .line 8
    new-instance v0, LG2/h;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, LG2/i;->b:LG2/h;

    .line 14
    .line 15
    return-void
.end method

.method public static directExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    sget-object v0, LG2/i;->b:LG2/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public static mainThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    sget-object v0, LG2/i;->a:LG2/g;

    .line 2
    .line 3
    return-object v0
.end method
