.class public final LQ3/m0;
.super Lcom/google/common/collect/a;
.source "SourceFile"


# instance fields
.field public final f:Ljava/util/Iterator;

.field public final synthetic j:LQ3/n0;


# direct methods
.method public constructor <init>(LQ3/n0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQ3/m0;->j:LQ3/n0;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/a;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, LQ3/n0;->b:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, LQ3/m0;->f:Ljava/util/Iterator;

    .line 13
    .line 14
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
    iget-object v0, p0, LQ3/m0;->f:Ljava/util/Iterator;

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
    iget-object v1, p0, LQ3/m0;->j:LQ3/n0;

    .line 14
    .line 15
    iget-object v1, v1, LQ3/n0;->e:Ljava/util/Set;

    .line 16
    .line 17
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/a;->endOfData()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method
