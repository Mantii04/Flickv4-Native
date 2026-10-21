.class public final Landroidx/leanback/widget/U;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/leanback/widget/T;

.field public final b:Landroidx/leanback/widget/T;

.field public c:Landroidx/leanback/widget/T;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/leanback/widget/T;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Landroidx/leanback/widget/T;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/leanback/widget/U;->a:Landroidx/leanback/widget/T;

    .line 11
    .line 12
    new-instance v0, Landroidx/leanback/widget/T;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, v1}, Landroidx/leanback/widget/T;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/leanback/widget/U;->b:Landroidx/leanback/widget/T;

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/leanback/widget/U;->c:Landroidx/leanback/widget/T;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final mainAxis()Landroidx/leanback/widget/T;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/U;->c:Landroidx/leanback/widget/T;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setOrientation(I)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/leanback/widget/U;->b:Landroidx/leanback/widget/T;

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/leanback/widget/U;->c:Landroidx/leanback/widget/T;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/U;->a:Landroidx/leanback/widget/T;

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/leanback/widget/U;->c:Landroidx/leanback/widget/T;

    .line 11
    .line 12
    return-void
.end method
