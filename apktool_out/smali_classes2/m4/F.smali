.class public final Lm4/F;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final b:Lcom/squareup/picasso/a;


# direct methods
.method public constructor <init>(Lcom/squareup/picasso/a;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lm4/F;->b:Lcom/squareup/picasso/a;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lm4/F;

    invoke-virtual {p0, p1}, Lm4/F;->compareTo(Lm4/F;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lm4/F;)I
    .locals 3

    .line 2
    iget-object v0, p0, Lm4/F;->b:Lcom/squareup/picasso/a;

    iget-object v1, v0, Lcom/squareup/picasso/a;->A:Lcom/squareup/picasso/Picasso$Priority;

    .line 3
    iget-object p1, p1, Lm4/F;->b:Lcom/squareup/picasso/a;

    .line 4
    iget-object v2, p1, Lcom/squareup/picasso/a;->A:Lcom/squareup/picasso/Picasso$Priority;

    if-ne v1, v2, :cond_0

    .line 5
    iget v0, v0, Lcom/squareup/picasso/a;->b:I

    iget p1, p1, Lcom/squareup/picasso/a;->b:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method
