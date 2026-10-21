.class public final LM/H;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/ViewParent;

.field public b:Landroid/view/ViewParent;

.field public final c:Landroid/view/View;

.field public d:Z

.field public e:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LM/H;->c:Landroid/view/View;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(IIII[II[I)Z
    .locals 14

    .line 1
    move-object/from16 v0, p5

    .line 2
    .line 3
    invoke-virtual {p0}, LM/H;->isNestedScrollingEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_7

    .line 9
    .line 10
    move/from16 v9, p6

    .line 11
    .line 12
    invoke-virtual {p0, v9}, LM/H;->b(I)Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    goto :goto_3

    .line 19
    :cond_0
    const/4 v1, 0x1

    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    if-nez p2, :cond_2

    .line 23
    .line 24
    if-nez p3, :cond_2

    .line 25
    .line 26
    if-eqz p4, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    if-eqz v0, :cond_7

    .line 30
    .line 31
    aput v2, v0, v2

    .line 32
    .line 33
    aput v2, v0, v1

    .line 34
    .line 35
    return v2

    .line 36
    :cond_2
    :goto_0
    iget-object v11, p0, LM/H;->c:Landroid/view/View;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {v11, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 41
    .line 42
    .line 43
    aget v4, v0, v2

    .line 44
    .line 45
    aget v5, v0, v1

    .line 46
    .line 47
    move v12, v4

    .line 48
    move v13, v5

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    move v12, v2

    .line 51
    move v13, v12

    .line 52
    :goto_1
    if-nez p7, :cond_5

    .line 53
    .line 54
    iget-object v4, p0, LM/H;->e:[I

    .line 55
    .line 56
    if-nez v4, :cond_4

    .line 57
    .line 58
    const/4 v4, 0x2

    .line 59
    new-array v4, v4, [I

    .line 60
    .line 61
    iput-object v4, p0, LM/H;->e:[I

    .line 62
    .line 63
    :cond_4
    iget-object v4, p0, LM/H;->e:[I

    .line 64
    .line 65
    aput v2, v4, v2

    .line 66
    .line 67
    aput v2, v4, v1

    .line 68
    .line 69
    move-object v10, v4

    .line 70
    goto :goto_2

    .line 71
    :cond_5
    move-object/from16 v10, p7

    .line 72
    .line 73
    :goto_2
    iget-object v4, p0, LM/H;->c:Landroid/view/View;

    .line 74
    .line 75
    move v5, p1

    .line 76
    move/from16 v6, p2

    .line 77
    .line 78
    move/from16 v7, p3

    .line 79
    .line 80
    move/from16 v8, p4

    .line 81
    .line 82
    invoke-static/range {v3 .. v10}, LM/z0;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V

    .line 83
    .line 84
    .line 85
    if-eqz v0, :cond_6

    .line 86
    .line 87
    invoke-virtual {v11, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 88
    .line 89
    .line 90
    aget p1, v0, v2

    .line 91
    .line 92
    sub-int/2addr p1, v12

    .line 93
    aput p1, v0, v2

    .line 94
    .line 95
    aget p1, v0, v1

    .line 96
    .line 97
    sub-int/2addr p1, v13

    .line 98
    aput p1, v0, v1

    .line 99
    .line 100
    :cond_6
    return v1

    .line 101
    :cond_7
    :goto_3
    return v2
.end method

.method public final b(I)Landroid/view/ViewParent;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object p1, p0, LM/H;->b:Landroid/view/ViewParent;

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_1
    iget-object p1, p0, LM/H;->a:Landroid/view/ViewParent;

    .line 12
    .line 13
    return-object p1
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LM/H;->isNestedScrollingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1}, LM/H;->b(I)Landroid/view/ViewParent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, LM/H;->c:Landroid/view/View;

    .line 15
    .line 16
    invoke-static {v0, v1, p1, p2, p3}, LM/z0;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_0
    return v1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LM/H;->isNestedScrollingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1}, LM/H;->b(I)Landroid/view/ViewParent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, LM/H;->c:Landroid/view/View;

    .line 15
    .line 16
    invoke-static {v0, v1, p1, p2}, LM/z0;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_0
    return v1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, LM/H;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 12

    move-object/from16 v0, p4

    .line 2
    invoke-virtual {p0}, LM/H;->isNestedScrollingEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    move/from16 v8, p5

    .line 3
    invoke-virtual {p0, v8}, LM/H;->b(I)Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_8

    .line 4
    aput v2, v0, v2

    .line 5
    aput v2, v0, v1

    return v2

    .line 6
    :cond_2
    :goto_0
    iget-object v9, p0, LM/H;->c:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v9, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 8
    aget v4, v0, v2

    .line 9
    aget v5, v0, v1

    move v10, v4

    move v11, v5

    goto :goto_1

    :cond_3
    move v10, v2

    move v11, v10

    :goto_1
    if-nez p3, :cond_5

    .line 10
    iget-object p3, p0, LM/H;->e:[I

    if-nez p3, :cond_4

    const/4 p3, 0x2

    .line 11
    new-array p3, p3, [I

    iput-object p3, p0, LM/H;->e:[I

    .line 12
    :cond_4
    iget-object p3, p0, LM/H;->e:[I

    :cond_5
    move-object v7, p3

    .line 13
    aput v2, v7, v2

    .line 14
    aput v2, v7, v1

    .line 15
    iget-object v4, p0, LM/H;->c:Landroid/view/View;

    move v5, p1

    move v6, p2

    invoke-static/range {v3 .. v8}, LM/z0;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {v9, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 17
    aget p1, v0, v2

    sub-int/2addr p1, v10

    aput p1, v0, v2

    .line 18
    aget p1, v0, v1

    sub-int/2addr p1, v11

    aput p1, v0, v1

    .line 19
    :cond_6
    aget p1, v7, v2

    if-nez p1, :cond_7

    aget p1, v7, v1

    if-eqz p1, :cond_8

    :cond_7
    return v1

    :cond_8
    :goto_2
    return v2
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .locals 0

    .line 2
    invoke-virtual/range {p0 .. p7}, LM/H;->a(IIII[II[I)Z

    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v7}, LM/H;->a(IIII[II[I)Z

    move-result p1

    return p1
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, LM/H;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, LM/H;->b(I)Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LM/H;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, LM/H;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LM/H;->c:Landroid/view/View;

    .line 6
    .line 7
    invoke-static {v0}, LM/p0;->stopNestedScroll(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-boolean p1, p0, LM/H;->d:Z

    .line 11
    .line 12
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, LM/H;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .locals 5

    .line 2
    invoke-virtual {p0, p2}, LM/H;->hasNestedScrollingParent(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, LM/H;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4
    iget-object v0, p0, LM/H;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v3, v0

    :goto_0
    if-eqz v2, :cond_5

    .line 5
    invoke-static {v2, v3, v0, p1, p2}, LM/z0;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iput-object v2, p0, LM/H;->b:Landroid/view/ViewParent;

    goto :goto_1

    .line 7
    :cond_2
    iput-object v2, p0, LM/H;->a:Landroid/view/ViewParent;

    .line 8
    :goto_1
    invoke-static {v2, v3, v0, p1, p2}, LM/z0;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    return v1

    .line 9
    :cond_3
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_4

    .line 10
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    .line 11
    :cond_4
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, LM/H;->stopNestedScroll(I)V

    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, LM/H;->b(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, p0, LM/H;->c:Landroid/view/View;

    invoke-static {v0, v1, p1}, LM/z0;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-object v0, p0, LM/H;->b:Landroid/view/ViewParent;

    return-void

    .line 5
    :cond_1
    iput-object v0, p0, LM/H;->a:Landroid/view/ViewParent;

    :cond_2
    :goto_0
    return-void
.end method
