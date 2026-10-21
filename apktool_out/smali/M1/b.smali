.class public final LM1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LM1/b;


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/util/concurrent/Executor;

.field public c:LM1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LM1/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1}, LM1/b;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, LM1/b;->d:LM1/b;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LM1/b;->a:Ljava/lang/Runnable;

    .line 5
    .line 6
    iput-object p2, p0, LM1/b;->b:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    return-void
.end method
