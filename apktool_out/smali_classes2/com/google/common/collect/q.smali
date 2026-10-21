.class public final Lcom/google/common/collect/q;
.super Lcom/google/common/collect/s;
.source "SourceFile"


# instance fields
.field public final synthetic m:I

.field public final synthetic n:Lcom/google/common/collect/CompactHashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/CompactHashMap;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/common/collect/q;->m:I

    iput-object p1, p0, Lcom/google/common/collect/q;->n:Lcom/google/common/collect/CompactHashMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/s;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/q;->n:Lcom/google/common/collect/CompactHashMap;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/common/collect/q;->m:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/google/common/collect/CompactHashMap;->s:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->j()[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    aget-object p1, v0, p1

    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance v1, Lcom/google/common/collect/u;

    .line 18
    .line 19
    invoke-direct {v1, v0, p1}, Lcom/google/common/collect/u;-><init>(Lcom/google/common/collect/CompactHashMap;I)V

    .line 20
    .line 21
    .line 22
    return-object v1

    .line 23
    :pswitch_1
    sget-object v1, Lcom/google/common/collect/CompactHashMap;->s:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->i()[Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    aget-object p1, v0, p1

    .line 30
    .line 31
    return-object p1

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
