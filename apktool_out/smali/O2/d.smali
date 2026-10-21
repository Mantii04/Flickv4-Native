.class public final LO2/d;
.super LN2/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LN2/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onCreateChild()[LN2/q;
    .locals 6

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v1, v0, [LO2/c;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    .line 8
    new-instance v3, LO2/c;

    .line 9
    .line 10
    invoke-direct {v3}, LN2/b;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-virtual {v3, v4}, LN2/q;->setScale(F)V

    .line 15
    .line 16
    .line 17
    aput-object v3, v1, v2

    .line 18
    .line 19
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v5, 0x18

    .line 22
    .line 23
    if-lt v4, v5, :cond_0

    .line 24
    .line 25
    mul-int/lit8 v4, v2, 0x64

    .line 26
    .line 27
    invoke-virtual {v3, v4}, LN2/q;->setAnimationDelay(I)LN2/q;

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    mul-int/lit8 v4, v2, 0x64

    .line 32
    .line 33
    add-int/lit16 v4, v4, -0x4b0

    .line 34
    .line 35
    invoke-virtual {v3, v4}, LN2/q;->setAnimationDelay(I)LN2/q;

    .line 36
    .line 37
    .line 38
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-object v1
.end method
