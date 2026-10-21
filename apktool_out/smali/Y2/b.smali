.class public final LY2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/d;


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:LZ2/q;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:LT2/f;

.field public final d:La3/d;

.field public final e:Lb3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LS2/H;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, LY2/b;->f:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;LT2/f;LZ2/q;La3/d;Lb3/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LY2/b;->b:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    iput-object p2, p0, LY2/b;->c:LT2/f;

    .line 7
    .line 8
    iput-object p3, p0, LY2/b;->a:LZ2/q;

    .line 9
    .line 10
    iput-object p4, p0, LY2/b;->d:La3/d;

    .line 11
    .line 12
    iput-object p5, p0, LY2/b;->e:Lb3/b;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public schedule(LS2/E;LS2/u;LP2/g;)V
    .locals 6

    .line 1
    new-instance v0, LY2/a;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v4, p2

    .line 7
    move-object v3, p3

    .line 8
    invoke-direct/range {v0 .. v5}, LY2/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, v1, LY2/b;->b:Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
