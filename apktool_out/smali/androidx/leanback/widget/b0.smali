.class public final Landroidx/leanback/widget/b0;
.super Lm1/B0;
.source "SourceFile"

# interfaces
.implements Landroidx/leanback/widget/y;


# instance fields
.field public final u:Landroidx/leanback/widget/C0;

.field public final v:Landroidx/leanback/widget/A0;

.field public w:Ljava/lang/Object;

.field public x:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/C0;Landroid/view/View;Landroidx/leanback/widget/A0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lm1/B0;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/leanback/widget/b0;->u:Landroidx/leanback/widget/C0;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/leanback/widget/b0;->v:Landroidx/leanback/widget/A0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getExtraObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/b0;->x:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFacet(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/b0;->v:Landroidx/leanback/widget/A0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/A0;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final getPresenter()Landroidx/leanback/widget/C0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/b0;->u:Landroidx/leanback/widget/C0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getViewHolder()Landroidx/leanback/widget/A0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/b0;->v:Landroidx/leanback/widget/A0;

    .line 2
    .line 3
    return-object v0
.end method

.method public setExtraObject(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/b0;->x:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method
