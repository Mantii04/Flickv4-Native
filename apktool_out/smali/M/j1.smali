.class public LM/j1;
.super LM/i1;
.source "SourceFile"


# virtual methods
.method public setAppearanceLightStatusBars(Z)V
    .locals 1

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/high16 p1, 0x4000000

    .line 6
    .line 7
    invoke-virtual {p0, p1}, LM/i1;->unsetWindowFlag(I)V

    .line 8
    .line 9
    .line 10
    const/high16 p1, -0x80000000

    .line 11
    .line 12
    invoke-virtual {p0, p1}, LM/i1;->setWindowFlag(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, LM/i1;->setSystemUiFlag(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p0, v0}, LM/i1;->unsetSystemUiFlag(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
