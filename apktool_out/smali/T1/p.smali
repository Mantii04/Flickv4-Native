.class public final LT1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:LT1/i;


# direct methods
.method public constructor <init>(LT1/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LT1/p;->b:LT1/i;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public call()LT1/L;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LT1/L;"
        }
    .end annotation

    .line 2
    new-instance v0, LT1/L;

    iget-object v1, p0, LT1/p;->b:LT1/i;

    invoke-direct {v0, v1}, LT1/L;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, LT1/p;->call()LT1/L;

    move-result-object v0

    return-object v0
.end method
