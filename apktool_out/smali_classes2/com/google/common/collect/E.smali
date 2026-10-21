.class public final Lcom/google/common/collect/E;
.super LQ3/Y;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LQ3/Z;


# direct methods
.method public constructor <init>(LQ3/Z;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/google/common/collect/E;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/common/collect/E;->b:LQ3/Z;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public build()LQ3/G;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "LQ3/G;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/E;->b:LQ3/Z;

    .line 2
    .line 3
    invoke-virtual {v0}, LQ3/Z;->a()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;

    .line 8
    .line 9
    iget v2, p0, Lcom/google/common/collect/E;->a:I

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/google/common/collect/F;->newListMultimap(Ljava/util/Map;LP3/C;)LQ3/G;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
