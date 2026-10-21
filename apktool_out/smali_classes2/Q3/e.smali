.class public LQ3/e;
.super LQ3/b0;
.source "SourceFile"


# instance fields
.field public final synthetic b:LQ3/g;


# direct methods
.method public constructor <init>(LQ3/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQ3/e;->b:LQ3/g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
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
    iget-object v0, p0, LQ3/e;->b:LQ3/g;

    .line 2
    .line 3
    invoke-virtual {v0}, LQ3/g;->e()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
