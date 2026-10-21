.class public final LP3/i;
.super LP3/f;
.source "SourceFile"


# instance fields
.field public final b:C


# direct methods
.method public constructor <init>(C)V
    .locals 0

    .line 1
    invoke-direct {p0}, LP3/o;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-char p1, p0, LP3/i;->b:C

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public and(LP3/o;)LP3/o;
    .locals 1

    .line 1
    iget-char v0, p0, LP3/i;->b:C

    .line 2
    .line 3
    invoke-virtual {p1, v0}, LP3/o;->matches(C)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-super {p0, p1}, LP3/o;->and(LP3/o;)LP3/o;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    return-object p1
.end method

.method public matches(C)Z
    .locals 1

    .line 1
    iget-char v0, p0, LP3/i;->b:C

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    return p1
.end method

.method public negate()LP3/o;
    .locals 1

    .line 1
    iget-char v0, p0, LP3/i;->b:C

    .line 2
    .line 3
    invoke-static {v0}, LP3/o;->is(C)LP3/o;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CharMatcher.isNot(\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-char v1, p0, LP3/i;->b:C

    .line 9
    .line 10
    invoke-static {v1}, LP3/o;->a(C)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "\')"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
