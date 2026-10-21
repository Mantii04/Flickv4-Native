.class public abstract Landroidx/leanback/widget/H0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Landroidx/leanback/widget/P;

.field public c:J


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/P;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Landroidx/leanback/widget/H0;->a:I

    .line 6
    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    iput-wide v0, p0, Landroidx/leanback/widget/H0;->c:J

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/H0;->setHeaderItem(Landroidx/leanback/widget/P;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getHeaderItem()Landroidx/leanback/widget/P;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/H0;->b:Landroidx/leanback/widget/P;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/H0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/leanback/widget/H0;->getHeaderItem()Landroidx/leanback/widget/P;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/leanback/widget/P;->getId()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    return-wide v0

    .line 18
    :cond_0
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    return-wide v0

    .line 21
    :cond_1
    iget-wide v0, p0, Landroidx/leanback/widget/H0;->c:J

    .line 22
    .line 23
    return-wide v0
.end method

.method public final setHeaderItem(Landroidx/leanback/widget/P;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/H0;->b:Landroidx/leanback/widget/P;

    .line 2
    .line 3
    return-void
.end method

.method public final setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/leanback/widget/H0;->c:J

    .line 2
    .line 3
    iget p1, p0, Landroidx/leanback/widget/H0;->a:I

    .line 4
    .line 5
    and-int/lit8 p1, p1, -0x2

    .line 6
    .line 7
    iput p1, p0, Landroidx/leanback/widget/H0;->a:I

    .line 8
    .line 9
    return-void
.end method
