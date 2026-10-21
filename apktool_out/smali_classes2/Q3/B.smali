.class public final LQ3/B;
.super Lcom/google/common/collect/a;
.source "SourceFile"


# instance fields
.field public final synthetic f:Ljava/util/Iterator;

.field public final synthetic j:LP3/w;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;LP3/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQ3/B;->f:Ljava/util/Iterator;

    .line 2
    .line 3
    iput-object p2, p0, LQ3/B;->j:LP3/w;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/common/collect/a;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, LQ3/B;->f:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, LQ3/B;->j:LP3/w;

    .line 14
    .line 15
    invoke-interface {v1, v0}, LP3/w;->apply(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/a;->endOfData()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
