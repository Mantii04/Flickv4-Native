.class public final Landroidx/leanback/widget/m;
.super Landroidx/leanback/widget/u0;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/leanback/widget/A1;

.field public final synthetic c:Landroidx/leanback/widget/t;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/t;ILandroidx/leanback/widget/A1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/m;->c:Landroidx/leanback/widget/t;

    .line 2
    .line 3
    iput p2, p0, Landroidx/leanback/widget/m;->a:I

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/leanback/widget/m;->b:Landroidx/leanback/widget/A1;

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/leanback/widget/u0;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Lm1/B0;II)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/leanback/widget/m;->a:I

    .line 2
    .line 3
    if-ne p3, p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/leanback/widget/m;->c:Landroidx/leanback/widget/t;

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Landroidx/leanback/widget/t;->removeOnChildViewHolderSelectedListener(Landroidx/leanback/widget/u0;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroidx/leanback/widget/m;->b:Landroidx/leanback/widget/A1;

    .line 11
    .line 12
    invoke-interface {p1, p2}, Landroidx/leanback/widget/A1;->run(Lm1/B0;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
