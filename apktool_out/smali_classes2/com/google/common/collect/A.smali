.class public final Lcom/google/common/collect/A;
.super LQ3/u0;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/util/AbstractList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/AbstractList;Ljava/util/ListIterator;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/google/common/collect/A;->e:I

    iput-object p1, p0, Lcom/google/common/collect/A;->f:Ljava/util/AbstractList;

    invoke-direct {p0, p2}, LQ3/t0;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/A;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/common/collect/A;->f:Ljava/util/AbstractList;

    .line 7
    .line 8
    check-cast v0, Lcom/google/common/collect/Lists$TransformingSequentialList;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/common/collect/Lists$TransformingSequentialList;->e:LP3/p;

    .line 11
    .line 12
    invoke-interface {v0, p1}, LP3/p;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/A;->f:Ljava/util/AbstractList;

    .line 18
    .line 19
    check-cast v0, Lcom/google/common/collect/Lists$TransformingRandomAccessList;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/google/common/collect/Lists$TransformingRandomAccessList;->e:LP3/p;

    .line 22
    .line 23
    invoke-interface {v0, p1}, LP3/p;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
