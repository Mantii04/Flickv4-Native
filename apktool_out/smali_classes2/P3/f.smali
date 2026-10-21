.class public abstract LP3/f;
.super LP3/o;
.source "SourceFile"


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Character;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, LP3/o;->apply(Ljava/lang/Character;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public negate()LP3/o;
    .locals 1

    .line 1
    new-instance v0, LP3/m;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LP3/l;-><init>(LP3/o;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
