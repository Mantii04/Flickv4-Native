.class public final LQ3/y;
.super LQ3/x0;
.source "SourceFile"


# instance fields
.field public b:I

.field public e:Ljava/lang/Object;

.field public final synthetic f:LQ3/x0;


# direct methods
.method public constructor <init>(LQ3/x0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQ3/y;->f:LQ3/x0;

    .line 2
    .line 3
    invoke-direct {p0}, LQ3/x0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, LQ3/y;->b:I

    .line 2
    .line 3
    if-gtz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, LQ3/y;->f:LQ3/x0;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget v0, p0, LQ3/y;->b:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LQ3/y;->f:LQ3/x0;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, LQ3/g0;

    .line 12
    .line 13
    check-cast v0, LQ3/i0;

    .line 14
    .line 15
    invoke-virtual {v0}, LQ3/i0;->getElement()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, LQ3/y;->e:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v0}, LQ3/i0;->getCount()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, LQ3/y;->b:I

    .line 26
    .line 27
    :cond_0
    iget v0, p0, LQ3/y;->b:I

    .line 28
    .line 29
    add-int/lit8 v0, v0, -0x1

    .line 30
    .line 31
    iput v0, p0, LQ3/y;->b:I

    .line 32
    .line 33
    iget-object v0, p0, LQ3/y;->e:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-object v0
.end method
