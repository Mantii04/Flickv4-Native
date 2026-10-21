.class public final Landroidx/mediarouter/app/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Landroidx/mediarouter/app/d0;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/d0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/app/c0;->b:Landroidx/mediarouter/app/d0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/c0;->b:Landroidx/mediarouter/app/d0;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/mediarouter/app/d0;->A:Landroidx/mediarouter/app/j0;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/mediarouter/app/j0;->m:Landroidx/mediarouter/app/m0;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/mediarouter/app/m0;->n:Lf1/X;

    .line 8
    .line 9
    iget-object v1, p1, Landroidx/mediarouter/app/d0;->z:Lf1/U;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lf1/X;->transferToRoute(Lf1/U;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Landroidx/mediarouter/app/d0;->v:Landroid/widget/ImageView;

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p1, Landroidx/mediarouter/app/d0;->w:Landroid/widget/ProgressBar;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
