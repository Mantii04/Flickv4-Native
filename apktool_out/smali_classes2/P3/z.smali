.class public abstract LP3/z;
.super Lcom/google/common/base/a;
.source "SourceFile"


# instance fields
.field public final f:Ljava/lang/CharSequence;

.field public final j:LP3/o;

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(LP3/A;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/base/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, LP3/z;->m:I

    .line 6
    .line 7
    iget-object v0, p1, LP3/A;->a:LP3/o;

    .line 8
    .line 9
    iput-object v0, p0, LP3/z;->j:LP3/o;

    .line 10
    .line 11
    iget p1, p1, LP3/A;->c:I

    .line 12
    .line 13
    iput p1, p0, LP3/z;->n:I

    .line 14
    .line 15
    iput-object p2, p0, LP3/z;->f:Ljava/lang/CharSequence;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LP3/z;->computeNext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public computeNext()Ljava/lang/String;
    .locals 7

    .line 2
    iget v0, p0, LP3/z;->m:I

    .line 3
    :cond_0
    :goto_0
    iget v1, p0, LP3/z;->m:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 4
    move-object v3, p0

    check-cast v3, LP3/x;

    .line 5
    iget-object v4, v3, LP3/x;->p:LP3/y;

    iget-object v4, v4, LP3/y;->a:LP3/o;

    iget-object v3, v3, LP3/z;->f:Ljava/lang/CharSequence;

    invoke-virtual {v4, v3, v1}, LP3/o;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 6
    iget-object v3, p0, LP3/z;->f:Ljava/lang/CharSequence;

    if-ne v1, v2, :cond_1

    .line 7
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 8
    iput v2, p0, LP3/z;->m:I

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v1, 0x1

    .line 9
    iput v4, p0, LP3/z;->m:I

    .line 10
    :goto_1
    iget v4, p0, LP3/z;->m:I

    if-ne v4, v0, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 11
    iput v4, p0, LP3/z;->m:I

    .line 12
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v4, v1, :cond_0

    .line 13
    iput v2, p0, LP3/z;->m:I

    goto :goto_0

    .line 14
    :cond_2
    :goto_2
    iget-object v4, p0, LP3/z;->j:LP3/o;

    if-ge v0, v1, :cond_3

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, LP3/o;->matches(C)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-le v1, v0, :cond_4

    add-int/lit8 v5, v1, -0x1

    .line 15
    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, LP3/o;->matches(C)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 16
    :cond_4
    iget v5, p0, LP3/z;->n:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 17
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 18
    iput v2, p0, LP3/z;->m:I

    :goto_4
    if-le v1, v0, :cond_6

    add-int/lit8 v2, v1, -0x1

    .line 19
    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v4, v2}, LP3/o;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_5
    sub-int/2addr v5, v6

    .line 20
    iput v5, p0, LP3/z;->n:I

    .line 21
    :cond_6
    invoke-interface {v3, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 22
    :cond_7
    invoke-virtual {p0}, Lcom/google/common/base/a;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
