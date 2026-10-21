.class final Lcom/google/common/collect/RegularImmutableMultiset$ElementSet;
.super Lcom/google/common/collect/IndexedImmutableSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ElementSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/IndexedImmutableSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/google/common/collect/RegularImmutableMultiset;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/RegularImmutableMultiset;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMultiset$ElementSet;->f:Lcom/google/common/collect/RegularImmutableMultiset;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/IndexedImmutableSet;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset$ElementSet;->f:Lcom/google/common/collect/RegularImmutableMultiset;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMultiset;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset$ElementSet;->f:Lcom/google/common/collect/RegularImmutableMultiset;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableMultiset;->j:LQ3/j0;

    .line 4
    .line 5
    iget v1, v0, LQ3/j0;->c:I

    .line 6
    .line 7
    invoke-static {p1, v1}, LP3/v;->checkElementIndex(II)I

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, LQ3/j0;->a:[Ljava/lang/Object;

    .line 11
    .line 12
    aget-object p1, v0, p1

    .line 13
    .line 14
    return-object p1
.end method

.method public final isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset$ElementSet;->f:Lcom/google/common/collect/RegularImmutableMultiset;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableMultiset;->j:LQ3/j0;

    .line 4
    .line 5
    iget v0, v0, LQ3/j0;->c:I

    .line 6
    .line 7
    return v0
.end method
