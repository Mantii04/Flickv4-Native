.class public final Lj6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public final synthetic e:Lj6/c;


# direct methods
.method public constructor <init>(Lj6/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj6/b;->e:Lj6/c;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lj6/b;->b:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lj6/b;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lj6/b;->e:Lj6/c;

    .line 4
    .line 5
    iget v1, v1, Lj6/c;->b:I

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public next()Lj6/a;
    .locals 5

    .line 2
    new-instance v0, Lj6/a;

    iget-object v1, p0, Lj6/b;->e:Lj6/c;

    iget-object v2, v1, Lj6/c;->e:[Ljava/lang/String;

    iget v3, p0, Lj6/b;->b:I

    aget-object v2, v2, v3

    iget-object v4, v1, Lj6/c;->f:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-direct {v0, v2, v3, v1}, Lj6/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lj6/c;)V

    .line 3
    iget v1, p0, Lj6/b;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lj6/b;->b:I

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj6/b;->next()Lj6/a;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 6

    .line 1
    iget v0, p0, Lj6/b;->b:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    iput v1, p0, Lj6/b;->b:I

    .line 6
    .line 7
    iget-object v2, p0, Lj6/b;->e:Lj6/c;

    .line 8
    .line 9
    iget v3, v2, Lj6/c;->b:I

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-lt v1, v3, :cond_0

    .line 13
    .line 14
    move v3, v4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v3, 0x0

    .line 17
    :goto_0
    invoke-static {v3}, Lh6/k;->isFalse(Z)V

    .line 18
    .line 19
    .line 20
    iget v3, v2, Lj6/c;->b:I

    .line 21
    .line 22
    sub-int/2addr v3, v1

    .line 23
    sub-int/2addr v3, v4

    .line 24
    if-lez v3, :cond_1

    .line 25
    .line 26
    iget-object v5, v2, Lj6/c;->e:[Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v5, v0, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    iget-object v5, v2, Lj6/c;->f:[Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v5, v0, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget v0, v2, Lj6/c;->b:I

    .line 37
    .line 38
    sub-int/2addr v0, v4

    .line 39
    iput v0, v2, Lj6/c;->b:I

    .line 40
    .line 41
    iget-object v1, v2, Lj6/c;->e:[Ljava/lang/String;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    aput-object v3, v1, v0

    .line 45
    .line 46
    iget-object v1, v2, Lj6/c;->f:[Ljava/lang/String;

    .line 47
    .line 48
    aput-object v3, v1, v0

    .line 49
    .line 50
    return-void
.end method
