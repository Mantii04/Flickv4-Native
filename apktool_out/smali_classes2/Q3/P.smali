.class public final LQ3/P;
.super LQ3/N;
.source "SourceFile"


# instance fields
.field public final synthetic b:LQ3/Q;


# direct methods
.method public constructor <init>(LQ3/Q;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQ3/P;->b:LQ3/Q;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, LQ3/P;->b:LQ3/Q;

    .line 2
    .line 3
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LQ3/P;->b:LQ3/Q;

    .line 2
    .line 3
    invoke-virtual {v0}, LQ3/Q;->a()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
