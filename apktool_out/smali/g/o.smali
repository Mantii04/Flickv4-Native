.class public abstract Lg/o;
.super Lg/k;
.source "SourceFile"


# instance fields
.field public H:[[I


# virtual methods
.method public growArray(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lg/k;->growArray(II)V

    .line 2
    .line 3
    .line 4
    new-array p2, p2, [[I

    .line 5
    .line 6
    iget-object v0, p0, Lg/o;->H:[[I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lg/o;->H:[[I

    .line 13
    .line 14
    return-void
.end method
