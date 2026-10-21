.class public final LO2/n;
.super LN2/r;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LN2/r;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public varargs onChildCreated([LN2/q;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    aget-object v1, p1, v0

    .line 6
    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    mul-int/lit16 v2, v0, 0xc8

    .line 10
    .line 11
    invoke-virtual {v1, v2}, LN2/q;->setAnimationDelay(I)LN2/q;

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public onCreateChild()[LN2/q;
    .locals 5

    .line 1
    new-instance v0, LO2/p;

    .line 2
    .line 3
    invoke-direct {v0}, LO2/p;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, LO2/p;

    .line 7
    .line 8
    invoke-direct {v1}, LO2/p;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, LO2/p;

    .line 12
    .line 13
    invoke-direct {v2}, LO2/p;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    new-array v3, v3, [LN2/q;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    aput-object v0, v3, v4

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    aput-object v1, v3, v0

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    aput-object v2, v3, v0

    .line 27
    .line 28
    return-object v3
.end method
