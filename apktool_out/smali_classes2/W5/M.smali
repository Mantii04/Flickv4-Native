.class public final LW5/M;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ly5/k;

.field public final b:[Ljava/lang/Object;

.field public final c:[LR5/N0;

.field public d:I


# direct methods
.method public constructor <init>(Ly5/k;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LW5/M;->a:Ly5/k;

    .line 5
    .line 6
    new-array p1, p2, [Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p1, p0, LW5/M;->b:[Ljava/lang/Object;

    .line 9
    .line 10
    new-array p1, p2, [LR5/N0;

    .line 11
    .line 12
    iput-object p1, p0, LW5/M;->c:[LR5/N0;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final append(LR5/N0;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR5/N0;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget v0, p0, LW5/M;->d:I

    .line 2
    .line 3
    iget-object v1, p0, LW5/M;->b:[Ljava/lang/Object;

    .line 4
    .line 5
    aput-object p2, v1, v0

    .line 6
    .line 7
    add-int/lit8 p2, v0, 0x1

    .line 8
    .line 9
    iput p2, p0, LW5/M;->d:I

    .line 10
    .line 11
    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, LW5/M;->c:[LR5/N0;

    .line 17
    .line 18
    aput-object p1, p2, v0

    .line 19
    .line 20
    return-void
.end method

.method public final restore(Ly5/k;)V
    .locals 5

    .line 1
    iget-object v0, p0, LW5/M;->c:[LR5/N0;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    add-int/lit8 v1, v1, -0x1

    .line 5
    .line 6
    if-ltz v1, :cond_1

    .line 7
    .line 8
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .line 9
    .line 10
    aget-object v3, v0, v1

    .line 11
    .line 12
    invoke-static {v3}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v4, p0, LW5/M;->b:[Ljava/lang/Object;

    .line 16
    .line 17
    aget-object v1, v4, v1

    .line 18
    .line 19
    check-cast v3, LR5/H;

    .line 20
    .line 21
    invoke-virtual {v3, p1, v1}, LR5/H;->a(Ly5/k;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    if-gez v2, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    move v1, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    return-void
.end method
