.class public final Landroidx/leanback/widget/f0;
.super Landroidx/leanback/widget/H0;
.source "SourceFile"


# instance fields
.field public final d:Landroidx/leanback/widget/r0;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/P;Landroidx/leanback/widget/r0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/leanback/widget/H0;-><init>(Landroidx/leanback/widget/P;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/leanback/widget/f0;->d:Landroidx/leanback/widget/r0;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string p2, "ObjectAdapter cannot be null"

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method


# virtual methods
.method public final getAdapter()Landroidx/leanback/widget/r0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f0;->d:Landroidx/leanback/widget/r0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/H0;->getHeaderItem()Landroidx/leanback/widget/P;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/leanback/widget/P;->getContentDescription()Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroidx/leanback/widget/P;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method
