.class public final LO2/h;
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
    invoke-super {p0, p1}, LN2/r;->onChildCreated([LN2/q;)V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x18

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    aget-object p1, p1, v2

    .line 12
    .line 13
    const/16 v0, 0x3e8

    .line 14
    .line 15
    invoke-virtual {p1, v0}, LN2/q;->setAnimationDelay(I)LN2/q;

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    aget-object p1, p1, v2

    .line 20
    .line 21
    const/16 v0, -0x3e8

    .line 22
    .line 23
    invoke-virtual {p1, v0}, LN2/q;->setAnimationDelay(I)LN2/q;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onCreateChild()[LN2/q;
    .locals 4

    .line 1
    new-instance v0, LO2/g;

    .line 2
    .line 3
    invoke-direct {v0}, LO2/g;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, LO2/g;

    .line 7
    .line 8
    invoke-direct {v1}, LO2/g;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    new-array v2, v2, [LN2/q;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v0, v2, v3

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aput-object v1, v2, v0

    .line 19
    .line 20
    return-object v2
.end method
