.class public final Landroidx/mediarouter/app/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Landroidx/mediarouter/app/m0;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/m0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/app/U;->b:Landroidx/mediarouter/app/m0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/U;->b:Landroidx/mediarouter/app/m0;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 4
    .line 5
    invoke-virtual {v0}, Lf1/U;->isSelected()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p1, Landroidx/mediarouter/app/m0;->n:Lf1/X;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-virtual {v0, v1}, Lf1/X;->unselect(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Le/c0;->dismiss()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
